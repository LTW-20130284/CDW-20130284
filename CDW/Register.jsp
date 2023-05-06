<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" 
  href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">
    <title>Đăng ký</title>
    <!-- Font Icon -->

    <!-- Main css -->
    <link rel="stylesheet" href="css/style_regiser.css" />
  </head>
  <body>
    <div class="em">
      <jsp:include page="Header.jsp"></jsp:include>
       <!-----Menu------>
     <div class="wrapper" >
          <nav class="content">
              <ul class="main-menu">
                  <li class="menu" ><a href="">TRANG CHỦ</a></li>
                  <li class="menu"><a href="">GIỚI THIỆU</a></li>
                  <li class="menu"><a href="">TIÊM CHỦNG CHO TRẺ EM</a>
                      <ul class="submenu">
                          <li><a href="">Lịch tiêm chủng cho trẻ em</a></li>
                          <li><a href="">Các loại vắc xin cho trẻ em</a></li>
                      </ul>
                  </li>
                  <li class="menu"><a href="">TIÊM CHỦNG CHO NGƯỜI LỚN</a>
                      <ul class="submenu">
                          <li><a href="">Lịch tiêm chủng cho người lớn</a></li>
                          <li><a href="vaccineNL.html">Các loại vắc xin cho người lớn</a></li>
                      </ul>
                  </li>
              </ul>
          </nav>
     
      </div>
    </div>
    <input type="hidden" id="status">
    <div class="main">
      <!-- Sign up form -->
      <section class="signup">
        <div class="container">
          <div class="signup-content" style="height: 720px">
            <div class="signup-form">
              <h2 class="form-title">ĐĂNG KÝ</h2>
              <form
                method="post"
                action="register"
                class="register-form"
                id="register-form"
              >
                <div class="form-group">
                  <label class="label1" for="name">
                    * Họ Và Tên
                    <i class="zmdi zmdi-account material-icons-name"></i
                  ></label>
                  <input
                    type="text"
                    name="name"
                    id="name"
                    placeholder=" "
                    class="input_1"
                  />
                </div>
                <div class="form-group">
                  <label class="label1" for="email"
                    >* Email<i class="zmdi zmdi-email"></i
                  ></label>
                  <input
                    type="email"
                    name="email"
                    id="email"
                    placeholder=" "
                    class="input_1"
                  />
                 <p class="text-danger">${mess1}</p>
                </div>
                <div class="form-group">
                  <label class="label1" for="pass"
                    >* Mật Khẩu<i class="zmdi zmdi-lock"></i
                  ></label>
                  <input
                    type="password"
                    name="password"
                    id="password"
                    placeholder=""
                    class="input_1"
                  />
                </div>
                <div class="form-group">
                  <label class="label1" for="re-pass"
                    >* Xác Nhận Mật Khẩu<i class="zmdi zmdi-lock-outline"></i
                  ></label>
                  <input
                    type="password"
                    name="re_pass"
                    id="re_pass"
                    placeholder=" "
                    class="input_1"
                  />
                </div>
            
                <div class="form-group">
                  <input
                    type="checkbox"
                    name="agree-term"
                    id="agree-term"
                    class="agree-term input_2"
                  />
                  <label for="agree-term" class="label-agree-term"
                    ><span><span></span></span>Tôi đồng ý với điều khoản dịch vụ
                    <a href="#" class="term-service"></a
                  ></label>
                </div>
                <div class="form-group form-button">
                  <div class="o2">
                    <label class="login_input"> ĐĂNG KÝ NGAY </label>
                    <input
                      type="submit"
                      name="register"
                      id="signup"
                      class="form-submit input_3"
                      value="  "
                    />
                  </div>
                </div>
              </form>
            </div>
            <div class="signup-image">
              <a href="Login.jsp" class="signup-image-link"
                >Tôi đã có tài khoản
              </a>
            </div>
          </div>
        </div>
      </section>
    </div>
      <jsp:include page="Footer.jsp"></jsp:include>
  </body>
      <!-- JS -->
      <script src="vendor/jquery/jquery.min.js"></script>
      <script src="js/main.js"></script>
      <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
      <link rel="stylesheet" href="alert/dist/sweetalert.css" />
      <script type="text/javascript">
        var status = document.getElementById("status").value;
        if (status == "success") {
          swal("Xin Chúc Mừng", "Đã tạo tài khoản thành công", "success");
        }
      </script>
      <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
      <script>
        $(document).ready(function(){
          $(window).scroll(function(){
            if($(this).scrollTop()){
              $(".wrapper").addClass('sticky')
            }else{
              $(".wrapper").addClass('sticky')
            }
          })
        })
      </script>
</html>
 