package com.shopbanquanao.controller;

import java.util.HashMap;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.shopbanquanao.JWTConfiguration.AuthManager;
import com.shopbanquanao.JWTConfiguration.JwtTokenProvider;
import com.shopbanquanao.JWTConfiguration.UserPrincipal;
import com.shopbanquanao.UserServices.UserService;
import com.shopbanquanao.controller.RequestPojo.ApiResponse;
import com.shopbanquanao.controller.RequestPojo.LoginRequest;
import com.shopbanquanao.model.User;




@RestController 
@RequestMapping("api")
public class LoginController {
	  @Autowired
	  UserDetailsService userDetailservice;
	  @Autowired
	  UserService userservice;
	  @Autowired
	  AuthManager aMan;
	  @Autowired
	  JwtTokenProvider tokenProvider;
      private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

// Phương thức API báo cáo trạng thái máy chủ
      @RequestMapping("status")//post and get
  	public ResponseEntity<?> serverStatus() {
    	  return new ResponseEntity<>(new ApiResponse("Server is running.", ""), HttpStatus.OK);
   }
// Phương thức API cho đăng nhập người dùng.
 xử lý yêu cầu đăng nhập người dùng REST API bằng cách xác thực thông tin đăng nhập
 và tạo ra một mã thông báo JWT để trả về cho người dùng.
 Nó sử dụng AuthManager để xác thực thông tin đăng nhập và sử dụng JwtTokenProvider để tạo mã thông báo JWT.
 Nếu xảy ra lỗi trong quá trình xác thực, nó sẽ trả về một đối tượng ApiResponse với mã lỗi HTTP 400.
	@RequestMapping("login/user")//post and get
	public ResponseEntity<?> userLogin(@RequestBody LoginRequest loginRequest) {
		
		try {
			
        	Authentication authentication =  aMan.authenticate(new UsernamePasswordAuthenticationToken(loginRequest.getMobile(), loginRequest.getPassword()) ,loginRequest);
        	SecurityContextHolder.getContext().setAuthentication(authentication);
        	String token = tokenProvider.generateToken(authentication);
    		JSONObject obj =  this.getUserResponse(token);
    		if(obj == null) {
    			throw new Exception("Error while generating Reponse");
    		}
    		
	        return new ResponseEntity<String>(obj.toString(), HttpStatus.OK);
    	}catch(Exception e ) {
    		logger.info("Error in authenticateUser ",e);
    		return ResponseEntity.badRequest().body(new ApiResponse(e.getMessage(), ""));
    	}
		
	}
//trả về một đối tượng JSONObject chứa thông tin của người dùng và mã thông báo JWT.
 Nó sử dụng UserService để lấy thông tin người dùng và tạo một đối tượng JSONObject để trả về.
	 private JSONObject getUserResponse(String token) {
	    	
	    	try {
				User user = userservice.getUserDetailById(_getUserId());
				HashMap<String,String> response = new HashMap<String,String>();
				response.put("user_id", ""+_getUserId());
				response.put("email", user.getEmail());
				response.put("name", user.getName());
				response.put("mobile", user.getMobile());
				
			
				JSONObject obj = new JSONObject();
				
				obj.put("user_profile_details",response);
				obj.put("token", token);
				return obj;
			} catch (Exception e) {
				logger.info("Error in getUserResponse ",e);
			}
	    	return null;
	    }
	 
// dụng để lấy ID của người dùng đang được xác thực từ SecurityContextHolder.
 Nó trả về ID người dùng dưới dạng một số nguyên dài.
	 	private long _getUserId() {
	    	logger.info("user id vaildating. "+ SecurityContextHolder.getContext().getAuthentication());
			UserPrincipal userPrincipal = (UserPrincipal) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			logger.info("(LoginController)user id is "+userPrincipal.getId());
			return userPrincipal.getId();
		}
	    
}
