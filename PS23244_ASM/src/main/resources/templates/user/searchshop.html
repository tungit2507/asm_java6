<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="shortcut icon" type="image/png" href="../views/image/icon.png"/>
<title>Shop Điện Thoại</title>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="../views/css/bootstrap.min.css">
<link rel="stylesheet" href="../views/icon/bootstrap-icons.css">

<style type="text/css">
#slider-range {
        width: 300px;
        margin: 10px auto;
    }

    .ui-slider .ui-slider-handle {
        width: 20px;
        height: 20px;
        border-radius: 50%;
        background-color: white;
        border: none;
        cursor: pointer;
    }

    .ui-slider .ui-slider-handle:hover,
    .ui-slider .ui-slider-handle:active {
        background-color: white;
        border-color: white;
    }

    .ui-slider .ui-slider-range {
        background: -webkit-gradient(linear, left bottom, right top, from(#08aeea), to(#b721ff));
        background: -webkit-linear-gradient(bottom left, #08aeea 0%, #b721ff 100%);
        background: -moz-linear-gradient(bottom left, #08aeea 0%, #b721ff 100%);
        background: -o-linear-gradient(bottom left, #08aeea 0%, #b721ff 100%);
        background: linear-gradient(to top right, #08aeea 0%, #b721ff 100%);
    }

    #price-min,
    #price-max {
    
        display: inline-block;
        width: 100px;
        text-align: center;
        font-size:12px
         
    }
</style>
</head>
<body style="background-color: #f2f2f2;">

	<header>
		<jsp:include page="./menu/header.jsp" />
	</header>
	<nav class="navbar navbar-expand-lg text-center bg-dark">
		<jsp:include page="./menu/nav.jsp" />
	</nav>

	<div class="me-5 ms-5  mb-5">
	 <jsp:include page="./menu/price.jsp" />
 </div>
	

	<div class="me-5 ms-5 bg-white">
		<section class="mt-3">
			
			<div class="row m-3 bg-white">
				<!--Sản phẩm 1-->
				<c:forEach var="product" items="${page.content}">
					<div class="col-md-3 ">
						<div class="ms-2 bg-danger w-50 text-light">Giảm ${product.sale - product.price} đ</div>
						<div class="p-3">
							<a href="product/detail/${product.id}"> <img
								src="../views/image/${product.image}" class="w-100 " alt="">
							</a>
						</div>
						<img src="../views/image/labelapple.png" class="ms-2 w-50 h-5" alt="">

						<div class="ms-2  me-5">
							<a href="product/detail/${product.id}"
								class="text-decoration-none"> ${product.name} </a>
						</div>
						<div class="ms-2 fw-bold" style="color: #be1e2d;">
							${product.price} <span class="text-decoration-underline">
								đ</span>
						</div>
						<div class="ms-2 text-decoration-line-through text-muted">
							${product.sale} <span class="text-decoration-underline">
								đ</span>
						</div>
						<div class="ms-2 me-5 bg-light fs-6">Tặng thêm đến 1 triệu khi Thu đổi mới. giảm thêm 800.000đ khi mở thẻ TPBank</div>
						<a href="/home/cart/add/${product.id}" class="btn btn-outline-danger mt-1 mb-2">  Thêm giỏ
							hàng</a>
					</div>
					</c:forEach>
					
					
				  
					
</div> 

		<div class="pb-1">
  <ul class="pagination d-flex justify-content-center" >
    <li class="page-item">
      <a class="page-link" href="/home/search?p=0">1</a>
    </li>
    <c:forEach var="i" begin="1" end="${page.totalPages-1}">
      <li class="page-item">
        <a class="page-link" href="/home/search?p=${i}">${i+1}</a>
      </li>
    </c:forEach>
  </ul>
</div>

	
	
			
		</section>
	</div>

	

	

	
	<footer>
        <jsp:include page="./menu/footer.jsp" />
    </footer>
	<script src="../views/js/bootstrap.bundle.min.js"></script>
	
	<script src="../views/js/jquery-3.3.1.min.js"></script>
    <script src="../views/js/bootstrap.min.js"></script>
    <script src="../views/js/jquery-ui.min.js"></script>
    <script src="../views/js/jquery.countdown.min.js"></script>
    <script src="../views/js/jquery.zoom.min.js"></script>
    <script src="../views/js/jquery.dd.min.js"></script>
    <script src="../views/js/jquery.slicknav.js"></script>
    <script src="../views/js/owl.carousel.min.js"></script>
    <script src="../views/js/main.js"></script>
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 <script>
	$(function () {
		  var minPrice = 0;
		  var maxPrice = 40000;
		  var initialMin = 0;
		  var initialMax = 40000;

		  $("#slider-range").slider({
		    range: true,
		    min: minPrice,
		    max: maxPrice,
		    values: [initialMin, initialMax],
		    slide: function (event, ui) {
		      $("#price-min").val(ui.values[0]);
		      $("#price-max").val(ui.values[1]);
		      updateProductCount(ui.values[0], ui.values[1]);
		    },
		    stop: function (event, ui) {
		      sendSearchRequest();
		    },
		    change: function (event, ui) {
		      $("#priceDropdown").text(formatPrice(ui.values[0]) + " - " + formatPrice(ui.values[1]));
		    }
		  });

		  $("#price-min").val(initialMin);
		  $("#price-max").val(initialMax);

		  function formatPrice(price) {
		    return new Intl.NumberFormat("vi-VN", {
		      style: "currency",
		      currency: "VND"
		    }).format(price);
		  }

		  function updateProductCount(min, max) {
		    $.ajax({
		      url: "/home/price",
		      type: "GET",
		      data: {
		        min: min,
		        max: max
		      },
		      success: function (data) {
		        $("#searchResultsContainer").text(data);
		      },
		      error: function () {
		        console.log("Error occurred while updating product count.");
		      }
		    });
		  }

		  function sendSearchRequest() {
		    var minPrice = $("#price-min").val();
		    var maxPrice = $("#price-max").val();

		    // Tạo URL với các tham số tìm kiếm
		    var url = "/home/price?min=" + minPrice + "&max=" + maxPrice;

		    // Tải lại trang với URL chứa các tham số tìm kiếm
		    window.location.href = url;
		  }

		  // Lấy giá trị min và max từ tham số truy vấn
		  var urlParams = new URLSearchParams(window.location.search);
		  var min = urlParams.get('min');
		  var max = urlParams.get('max');

		  // Kiểm tra xem min và max có giá trị không-null hoặc không-undefined
		  // Nếu có, đặt lại giá trị của thanh trượt
		  if (min && max) {
		    $("#slider-range").slider("values", [min, max]);
		    $("#price-min").val(min);
		    $("#price-max").val(max);
		    $("#priceDropdown").text(formatPrice(min) + " - " + formatPrice(max));
		  }
		});
	$(document).ready(function () {
		  var minPrice = $("#price-min").val();
		  var maxPrice = $("#price-max").val();

		  $(".page-link").each(function () {
		    var href = $(this).attr("href");
		    href += "&min=" + minPrice + "&max=" + maxPrice;
		    $(this).attr("href", href);
		  });
		});



	</script> 
</body>
</html>