<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="me-5 ms-5">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">


				<ul class="navbar-nav   mb-lg-0 ">
					<li class="nav-item me-2"><a class="nav-link active" href="/home/index">
							<img src="../views/image/logo-ddv.jpg" alt="">
					</a></li>
					<li class="nav-item dropdown me-2 m-1"><a
						class="nav-link active text-light  " href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> <i
							class="bi bi-card-list"></i> Danh mục
					</a>
						<ul class="dropdown-menu">
							 <li><a class="dropdown-item" href="/home/brand?field1=1000">iPhone</a></li>
							<li><a class="dropdown-item" href="/home/brand?field1=1001">Oppo</a></li>
							<li><a class="dropdown-item" href="/home/brand?field1=1002">Xiaomi</a></li>
							<li><a class="dropdown-item" href="/home/brand?field1=1003">vivo</a></li> 
							<li><a class="dropdown-item" href="/home/brand?field1=1004">Samsung</a></li> 
						
							
							

						</ul></li>


					<li class="nav-item dropdown me-2 m-1"><a
						class="nav-link active dropdown-toggle text-light " href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							<i class="bi bi-geo-alt"></i> Hồ Chí Minh
					</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">Quảng Ngãi</a></li>
							<li><a class="dropdown-item" href="#">Đà Nẵng</a></li>

						</ul></li>


					<form action="/home/search" method="post" class="search-bar float-left m-1 pt-3">
						<input class="search ps-1" name="keywords" type="text" style="width: 320px; height: 27px; background-color: white"
							placeholder="Bạn cần tìm gì?" >
						<button class="submit" style="background-color: white; border: none" >
							<i class="bi bi-search"></i>
						</button>
					</form>
					<li class="nav-item me-2 m-1"><a
						class="nav-link active text-light" href="#"><i
							class="bi bi-telephone"></i> Gọi mua hàng</a></li>

					<li class="nav-item me-2 m-1"><a
						class="nav-link active text-light" href="/home/myorder"><i
							class="bi bi-car-front"></i> Tra cứu đơn hàng</a></li>
							
					<li class="nav-item me-2 m-1"><a
						class="nav-link active text-light" href="/home/cart"><i
							class="bi bi-cart3"></i><span class="text-danger"
							style="font-size: 10px;"></span> giỏ hàng</a></li>
							
							
					<li class="nav-item me-2 m-1">
					<c:if test="${isLogin}">
					<c:if test="${admin}">
						<a href="/admin/index" class="login-panel text-white text-decoration-none"><i class="bi bi-person-fill"></i> Admin</a>
					</c:if>
					<div class="top-social" style="padding-top: 10px">
						<a  href="/home/profile" class="text-primary text-decoration-none"
							style="font-weight: ;">${fullname}</a> <span style="color: white">|</span> <a
							class="text-danger text-decoration-none" id="btnLogOff" href="/home/logout" title="">Đăng xuất</a>
					</div>
				</c:if>
					<c:if test="${!isLogin}">
					
					<a
						class="nav-link active text-light" href="/home/login"><i
							class="bi bi-person-circle"></i> Đăng nhập</a>
				</c:if>
				
				
				
					</li>

				</ul>



			</div>
		</div>
		
