<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<link rel="shortcut icon" type="image/png" href="../views/image/icon.png"/>
<title>Trang Chủ</title>
<link rel="stylesheet" href="../views/css/bootstrap.min.css">
<link rel="stylesheet" href="../views/icon/bootstrap-icons.css">

</head>
<body style="background-color: #f2f2f2;">

	<header>
		<jsp:include page="./menu/header.jsp" />
	</header>
	<nav class="navbar navbar-expand-lg text-center bg-dark">
		<jsp:include page="./menu/nav.jsp" />
	</nav>

	<div class="me-5 ms-5">
		<section class="mt-3 ">
			<jsp:include page="./menu/section.jsp" />
		</section>
	</div>

	<div class="me-5 ms-5 bg-white">
		<section class="mt-3">
			<div class="navbar navbar-expand-lg "
				style="background-color: #be1e2d;">
				<div class="container-fluid">
					<div class="text-light fw-bold fs-4">iPhone N/A</div>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>


					

				</div>
			</div>
			<div class="row m-3 bg-white">
				<!--Sản phẩm 1-->
				<c:forEach var="product" items="${products}">
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
		</section>
	</div>

	<div class="me-5 ms-5 bg-white">
		<section class="mt-3">
		<div class="navbar navbar-expand-lg "
				style="background-color: #be1e2d;">
				<div class="container-fluid">
					<div class="text-light fw-bold fs-4">Điện thoại nổi bật</div>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

						


				</div>
			</div>
			<div class="row mt-3"> 
			<!-- Sản Phẩm 1 -->
			<c:forEach var="product" items="${productstop5}">
					<div class="col-md-3 ">
						<div>
							<span class="border border-warning" style="color: #be1e2d;">Trả góp 0%</span>
							<span class="ms-2 bg-danger w-50 text-light">Giảm ${product.sale - product.price} đ</span>
						</div>
						<div class="p-3">
							<a href="product/detail/${product.id}"> <img
								src="../views/image/${product.image}" class="w-100 " alt="">
							</a>
						</div>
						<img src="../views/image/tetsieukm.png" class="ms-2 w-50 h-5" alt="">

						<div class="ms-2  me-5">
							<a href="product/detail/${product.id}"
								class="text-decoration-none"> ${product.name}</a>
						</div>
						<div class="ms-2 fw-bold" style="color: #be1e2d;">
							${product.price} <span class="text-decoration-underline">
								đ</span>
						</div>
						<div class="ms-2 text-decoration-line-through text-muted">
							${product.sale} <span class="text-decoration-underline">
								đ</span>
						</div>
						<div class="ms-2 me-5 bg-light fs-6">
							Tặng thêm đến 1 triệu khi Thu đổi mới. giảm thêm 800.000đ khi mở thẻ TPBank
						</div>
						<a href="/home/cart/add/${product.id}" class="btn btn-outline-danger mt-1 mb-2">Thêm giỏ
							hàng</a>
					</div>
				</c:forEach>
			</div>		</section>
	</div>

	<div class="mt-3 me-5 ms-5">
		<jsp:include page="./menu/section1.jsp" />
	</div>

<div class="mt-3 me-5 ms-5 ">
	
			 <jsp:include page="./menu/section2.jsp" /> 
	
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
</body>
</html>