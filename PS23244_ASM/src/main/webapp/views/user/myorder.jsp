<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="shortcut icon" type="image/png"
	href="../views/image/icon.png" />
<title>Đơn Hàng</title>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="../views/css/bootstrap.min.css">
<link rel="stylesheet" href="../views/icon/bootstrap-icons.css">
<link rel="stylesheet" href="../views/css/orderdetail.css">

<style type="text/css">
.page-wrapper {
	min-height: 60vh;
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


	<div class="page-wrapper  p-t-45 ">
		<div class="wrapper wrapper--w790">
			<table
				class="table bg-white table-border table-striped custab text-center">
				<thead>
					<tr>
						<th></th>
						<th>Mã đơn hàng</th>
						<th>Ngày tạo</th>
						<th>Số điện thoại</th>
						<th>Địa chỉ</th>
						<th>Đơn hàng</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:set var="i" value="0" />
					<c:forEach var="item" items="${items}">
						<tr style="  height: 40px; 
    line-height: 40px;">
							<td class="p-price text-dark">${i=i+1}</td>
							<td class="p-price first-row">
								${item.id }
							</td>
							<td class="p-price text-dark first-row">${item.createDate }</td>
							<td class="p-price text-dark">${item.sdt}</td>
							<td class="cart-title first-row text-dark">${item.address }</td>
							<td class="total-price first-row"><a
								class="text-decoration-none"
								href="/home/myOrderDetail?id=${item.id }"
								style="font-size: 14px">Chi tiết đơn hàng</a></td>
							<td >
<c:if test="${!item.confirmation}">
									<a href="/home/delete/${item.id}" class="btn btn-danger"
										
										<c:if test="${!order.confirmation}"> 
            onclick="return confirm('Bạn có chắc muốn hủy  đơn hàng này?')"
        </c:if>>
										Hủy đơn hàng </a>
										</c:if>
								</td>

						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>
	</div>






	<footer>
		<jsp:include page="./menu/footer.jsp" />
	</footer>
	<script src="../views/js/bootstrap.bundle.min.js"></script>

	<script src="../views/js/jquery-3.3.1.min.js"></script>
	<script src="../views/js/bootstrap.min.js"></script>
	<script src="../views/js/jquery-ui.min.js"></script>
	<script src="../views/js/jquery.countdown.min.js"></script>
	<script src="../views/js/jquery.nice-select.min.js"></script>
	<script src="../views/js/jquery.zoom.min.js"></script>
	<script src="../views/js/jquery.dd.min.js"></script>
	<script src="../views/js/jquery.slicknav.js"></script>
	<script src="../views/js/owl.carousel.min.js"></script>
	<script src="../views/js/main.js"></script>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</body>
</html>

