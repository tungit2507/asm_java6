<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="shortcut icon" type="image/png" href="../views/image/icon.png"/>
<title>Đăng ký</title>
    <link rel="stylesheet" href="../views/css/bootstrap.min.css">
    <link rel="stylesheet" href="../views/icon/bootstrap-icons.css">
</head>
<body style="background-color: #f2f2f2;">
    <header>
        <jsp:include page="../menu/header.jsp" />
    </header>

    <nav class="navbar navbar-expand-lg text-center bg-dark">
        <jsp:include page="../menu/nav.jsp" />

    </nav>

    <div class=" container">
        <div class="m-4 fw-bold">
           <!--  <a class="me-2" href="login.html"><img src="../views/image/back.png" alt="" style="width: 22px; height: 22px;"></a><span class="text-decoration-none"> Đăng Ký tài khoản</span> -->
        </div>
        <div class="d-flex justify-content-center">

            <div class="" style="width: 600px;height: 300px;">

                <form:form method="get" action="/home/register" modelAttribute="item">
                    <div class=" mb-4 text-center">
                        <div class=""><img src="../views/image/register.png" alt="" style="width: 200px; height: 200px;"></div>
                        <div class="fw-bold fs-5">
                            Đăng ký tài khoản</div>
                    </div>
                    <div class="mb-3">


                        <form:input class="form-control border border-light" path="username"  type="text" id="username" placeholder="Vui lòng nhập tên tài khoản" />
                    </div>
                    <h2>${message}</h2>
                    <div class="mb-3">
                        <form:input class="form-control border border-light" type="text" id="password" path="password" placeholder="Vui lòng nhập mật khẩu"/>
                    </div>

                    <div class="mb-3">

                        <form:input class="form-control border border-light" type="text" id="fullname" path="fullname" placeholder="Vui lòng nhập họ và tên"/>
                    </div>
                    <div class="mb-3">

                        <form:input class="form-control border border-light" type="email"	id="email" path="email" placeholder="Vui lòng nhập email"/>
                    </div>
                    
                     <div class="mb-3">

                        <form:input class="file-upload-input" type='file' path="photo" id="photo" 
									onchange="readURL(this);" accept="image/*" />
								
                    </div>


                    
                    <div class="mb-3">

                        <button type="submit" class="btn rounded-pill " formaction="/home/register/create" style="width: 600px; background-color: #be1e2d;"><span class="fs-5 fw-bold text-light">Đăng ký</span></button>
                    </div>
                    <div class="mb-3">
                        <div class="text-center">-hoặc-</div>
                    </div>
                  
                    <div class="mb-2">
                        <div class="text-center">

                            Bạn đã có tài khoản?
                            <a class="text-decoration-none" href="/home/login">Đăng nhập ngay</a>
                        </div>
                    </div>

                </form:form>
            </div>
        </div>
    </div>

    <script src="../views/js/bootstrap.bundle.min.js"></script>
</body>
</html>