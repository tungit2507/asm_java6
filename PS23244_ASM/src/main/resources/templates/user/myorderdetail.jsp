<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="shortcut icon" type="image/png" href="../views/image/icon.png"/>
<title>Đơn Hàng</title>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="../views/css/bootstrap.min.css">
<link rel="stylesheet" href="../views/icon/bootstrap-icons.css">
<link rel="stylesheet" href="../views/css/orderdetail.css">
<style type="text/css">
.page-wrapper {
  min-height: 60vh;
}</style>
</head>
<body style="background-color: #f2f2f2;">

	<header>
		<jsp:include page="./menu/header.jsp" />
	</header>
	<nav class="navbar navbar-expand-lg text-center bg-dark">
		<jsp:include page="./menu/nav.jsp" />
	</nav>


	 <div class="page-wrapper  p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">

	<table class="table bg-white table-border table-striped custab text-center">
						<thead>
							<tr>
								<th></th>
								<th>Ảnh</th>
								<th>Mã sản phẩm</th>
								<th>Tên sản phẩm</th>
								<th>Giá</th>
								<th>Số lượng</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="i" value="0" />
							<c:forEach var="item" items="${page.content}">
								<tr  style="  height: 50px; 
    line-height: 50px;">
									<td class="p-price text-dark">${i=i+1}</td>
									<td><img src="../views/image/${item.product.image}"
										alt="" style="width: 50px" /></td>
									<td>${item.product.id}</td>
									<td>${item.product.name}</td>
									<td style="color: red">${item.product.price} đ</td>
									<td>${item.quantity }</td>
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
	
	
	
</body>
</html>