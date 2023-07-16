<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="shortcut icon" type="image/png" href="../views/image/icon.png"/>
<title>Thay đổi mật khẩu</title>
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

    <div class="position-absolute top-50 start-50 translate-middle">
        <div class="card" style="width: 400px;">
            <form action="change-password" class="px-4 py-3" method="post">
                <div class=" fs-5 mb-4 text-center">
                    <span class="fw-bold">
                    Thay đổi mật khẩu</span>
                </div>
                <h5 class="text-danger">${message }</h5>
                <div class="mb-3">


                <input type="text" id="username" name="username" class="form-control"  placeholder="Nhập username">
                </div>
                <div class="mb-3">

                    <input type="password" id="password" name="password" class="form-control"  placeholder="Nhập mật khẩu cũ">
                </div>
                <div class="mb-3">

                    <input type="password" id="newpassword" name="newpassword"  class="form-control"  placeholder="Nhập mật khẩu mới">
                </div>
                <div class="mb-3">

                    <input  type="password" id="confirmpassword" name="confirmpassword" class="form-control"  placeholder="Xác nhận mật khẩu mới">
                </div>
                <div class="row mb-3 ">
                    <div class="col-md-7">
                       
                    </div>
                    <div class="col-md-5">

                       
                    </div>
                </div>
                <div class="mb-3">

                    <button type="submit" class="btn " style="width: 350px; background-color: #be1e2d;"><span class="fs-5 fw-bold text-light">THAY ĐỔI MẬT KHẨU</span></button>
                </div>
                
            </form>
        </div>
    </div>

    <script src="../views/js/bootstrap.bundle.min.js"></script>


</body>
</html>