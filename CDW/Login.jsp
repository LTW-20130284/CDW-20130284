<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- Bootstrap v5.1.3 CDNs -->
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

        <!-- CSS File -->
        <link rel="stylesheet" href="css/style.css" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Đăng nhập</title>

  </head>

  <body>
 
    <jsp:include page="Header.jsp"></jsp:include>
         <!-----Menu------>

    <input type="hidden" id="status" value="">
    <div class="login" style="margin-top: 200px;margin-bottom: 100px;">
      <h1 class="text-center" style="text-align: center" >ĐĂNG NHẬP</h1>
 			<p class="text-danger">${mess}</p>
 			
      <form
        class="needs-validation"
        method="post"
        action="login"
        class="register-form"
        id="login-form"
      >
      	 
        <div class="form-group was-validated" style="display: flex">
          <label class="form-label" for="email"
            >Email <i class="zmdi zmdi-account material-icons-name"></i
          ></label>
          <input
            class="form-control"
            type="email"
            name="email"
           required />
        </div>
        <div class="form-group was-validated" style="display: flex">
          <label class="form-label" for="password">Mật Khẩu<i class="zmdi zmdi-lock"></label>
          <input class="form-control" type="password" name="password" required />
        </div>

        

        <input class="btn_login btn btn-success w-100" type="submit" name="signin" id="signin"
									class="form-submit" value="Đăng Nhập" />
                <div class="regist">
                  <a href="registration.jsp" class=" regis signup-image-link"> Hoặc đăng ký tài khoản mới</a>

                </div>
      </form>
    </div>
  <jsp:include page="Footer.jsp"></jsp:include>
   
  </body>
</html>
