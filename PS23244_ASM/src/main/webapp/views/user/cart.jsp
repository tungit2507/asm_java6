<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="shortcut icon" type="image/png" href="../views/image/icon.png" />
<title>Giỏ Hàng</title>
<link rel="stylesheet" href="../views/css/bootstrap.min.css">
<link rel="stylesheet" href="../views/icon/bootstrap-icons.css">
</head>
<body>
	<header>
		<jsp:include page="./menu/header.jsp" />
	</header>

	<nav class="navbar navbar-expand-lg text-center bg-dark">
		<jsp:include page="./menu/nav.jsp" />

	</nav>
	<section class=" mb-2 me-5 ms-5" style="background-color: rgb(233, 236, 239); height: 40px;">
		<div class="pt-2 ms-3">
			<a class="text-decoration-none text-dark" href="index">
				<i class="bi bi-house-fill"></i>
			</a>
			/
			<a class="text-decoration-none text-dark" href="shop">Điện thoại</a>
			/ Thông tin giỏ hàng của bạn
		</div>

	</section>
	<section class="me-5 ms-5">
		<div class="row">
			<div class="fw-bold fs-4">Chi tiết đơn hàng</div>
			<hr>
			<div class="d-flex justify-content-center">


				<table class="table">
					<thead class="text-center">
						<th>Ảnh</th>
						<th class="p-name">Tên sản phẩm</th>
						<th>Giá</th>
						<th>Số lượng</th>
						<th>Tổng tiền</th>
						<th></th>
					</thead>
					<tbody class="align-middle text-center">

						<c:forEach var="item" items="${cart.items}">
							<form action="/home/cart/update" method="post">
								<input type="hidden" name="id" value="${item.id}">
								<tr>
									<td class="cart-pic first-row">
										<img src="../views/image/${item.image}" alt="" style="width: 50px">
									</td>
									<td class="cart-title first-row">
										<h5>${item.name }</h5>
									</td>
									<td class="p-price first-row">${item.price }đ</td>
									<td>
										<div class="">
											<a class='btn btn-light  ' style="width: 38px;" href="/home/cart/sub/${item.id}"> - </a>
											<input name="qty" value="${item.qty}" min="0" onblur="this.form.submit()" class="text-center "
												style="width: 50px; height: 30px; font-size: 18px; font-weight: bolder; border: none"
											>
											<a class='btn btn-light   ' style="width: 38px;" href="/home/cart/add/${item.id}">+</a>
										</div>
									</td>
									<td class="total-price first-row">${item.price * item.qty}đ</td>
									<td class="close-td first-row">
										<a class='btn btn-xs text-danger' style="font-weight: bolder" href="/home/cart/remove/${item.id}">
											<span class="glyphicon glyphicon-trash"></span>
											xóa
										</a>
									</td>
								</tr>
							</form>
						</c:forEach>

					</tbody>

				</table>
			</div>

			<div class="row">
				<div class="col-md-4">
					<div class="cart-buttons">
						<a href="/home/index" class="btn btn-info continue-shop">Tiếp tục mua sắm </a>
						<a href="/home/cart/clear" class="btn btn-danger up-cart">Xóa giỏ hàng</a>
					</div>
				</div>

				<div class=" col-md-8 d-flex justify-content-end">
					<div class="proceed-checkout">

						<div class="fw-bold">
							Tổng tiền
							<span style="color: red">${cart.total} đ</span>
						</div>

						<c:if test="${!isLogin}">
							<a href="/home/login" class=" btn btn-light ">Thanh Toán</a>
						</c:if>
						<c:if test="${isLogin}">
							<a href="/home/checkout" class="btn btn-light">Thanh Toán</a>
						</c:if>

					</div>
				</div>
			</div>


		</div>




	</section>

	<footer>
		<jsp:include page="./menu/footer.jsp" />
	</footer>

	<script src="../views/js/bootstrap.bundle.min.js"></script>
</body>
</html>