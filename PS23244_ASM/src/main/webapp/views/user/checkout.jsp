<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="shortcut icon" type="image/png" href="../views/image/icon.png"/>
<title>Thanh Toán</title>
<link rel="stylesheet" href="../views/css/bootstrap.min.css">
    <link rel="stylesheet" href="../views/icon/bootstrap-icons.css">
</head>
<body>
  <header>
        <jsp:include page="./menu/header.jsp" />
    </header>

    <nav class="navbar navbar-expand-lg text-center bg-dark">
        <jsp:include page="./menu/nav.jsp"/>

    </nav>
   


<div class="d-flex justify-content-center">  
 <form action="/home/order-detail" method="post" class="">              
                <div class="form-group" style="width: 400px;" >
                <div class="fw-bold mb-3 fs-4">Người mua/nhận hàng</div>
                    
                    <div class="mb-3">
                        <input name="sdt"  class="form-control" placeholder="Số điện thoại" />
                    </div>
                   
                    <div class="mb-3">
                        <input name="address" class="form-control" placeholder="Địa chỉ nhận hàng" />
                    </div>
                    
                    <div class=" mb-3 place-order">
						<h4>Sản phẩm</h4>
						<div class="order-total">
							<ul class="order-table">
								
								<c:forEach var="item" items="${cart.items}">
								  
									<div class="fw-normal"><img alt="" src="../views/image/${item.image}" style="width: 50px">  ${item.name } x${item.qty }
									 <span style="color: red;">${item.price*item.qty} đ</span></div>
								</c:forEach>
								<div class="d-flex justify-content-end fw-bold  total-price">Tổng Tiền:     <span class="ms-2" style="color: red;">${cart.total } đ</span></div>
							</ul>
							
						</div>
					</div>
                   
                    <div class="mb-3">
                        <button type="submit" class="btn w-100 text-white" style="background-color: rgb(88, 166, 166);">ĐẶT HÀNG</button>
                    </div>
                    <hr class="mb-3">
                    <div class="mb-3">
                        <a href="/home/index" class="btn w-100 text-white" style="background-color: rgb(188, 207, 42);">CẦN SẢN PHẨM KHÁC? TIẾP TỤC MUA HÀNG</a>
                    </div>
                </div>
                </form>
                </div>
                <script src="../views/js/bootstrap.bundle.min.js"></script>

</body>
</html>