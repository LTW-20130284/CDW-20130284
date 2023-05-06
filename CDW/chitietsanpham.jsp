<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Chi tiết sản phẩm</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="css/ctsp.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
      integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
      crossorigin="anonymous"
    />
  </head>
  <body>
     <jsp:include page="Header.jsp"></jsp:include>
        <!-----Menu------>
    <div class="card-wrapper" style="margin-top: 100px;margin-bottom: 100px">
      <div class="card">
        <!-- card left -->
        <div class="product-imgs">
              <img src="imaget/${Detail.image}" alt="shoe image" />
        </div>
        <!-- card right -->
        <div class="product-content">
          <h2 class="product-title">${Detail.ten_vaccine}</h2>
           

          <div class="product-price">
            <p class="last-price"><span> </span></p>
            <p class="new-price">Giá Bán : <span>${Detail.price}</span></p>
          </div>

          <div class="product-detail">
            <h2>Thông tin vắc xin</h2>
            <p>
             ${Detail.description}
            </p>
            <p></p>
            <ul>
              <li>Đối Tượng: <span>Trẻ em trên 9 tháng tuổi </span></li>
              <li>
                Phác đồ, lịch tiêm:
                <span
                  >${Detail.phac_do}</span
                >
              </li>
              <li>
                Điều kiện trước khi tiêm:
                <span
                  >${Detail.dk_txt}</span
                >
              </li>
              <li>
                Khoảng cách với vắc xin khác:
                <span>${Detail.kd_vxk}</span>
              </li>
              <li>
                Phản ứng sau khi tiêm chủng:
                <span
                  >${Detail.phan_ung}</span
                >
              </li>
            </ul>
          </div>

          <div class="purchase-info">
            
            <button type="button" class="btn">
             Đăng Ký Tiêm 
            </button>
            <button type="button" class="btn">Còn Hàng</button>
          </div>
        </div>
      </div>
    </div>
    <jsp:include page="Footer.jsp"></jsp:include>
    <script src="script.js"></script>
  </body>
</html>
    