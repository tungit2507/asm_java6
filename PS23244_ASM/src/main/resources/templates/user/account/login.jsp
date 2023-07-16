<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="shortcut icon" type="image/png" href="../views/image/icon.png"/>
<title>Đăng nhập</title>
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
            <form class="px-4 py-3" action="/home/login" method="post">
                <div class=" fs-5 mb-4 text-center">
                    <span class="fw-bold">
                    Đăng nhập tài khoản</span>
                </div>
                <h5 class="text-danger">${message }</h5>
                <div class="mb-3">


                    <input type="text" class="form-control" id="username" name="username" placeholder="Nhập tên tài khoản">
                </div>
                <div class="mb-3">

                    <input type="password" class="form-control" id="password" name="password" placeholder="Nhập mật khẩu">
                </div>
                <div class="row mb-3 ">
                    <div class="col-md-7">
                        <div class=" form-check">

                            <input type="checkbox" class=" form-check-input" name="remember" id="save-pass">
                            <label class="form-check-label" for="exampleCheck1">Ghi nhớ</label>
                        </div>
                    </div>
                    <div class="col-md-5">

                        <div class="mt-0 d-flex flex-row-reverse bd-highlight ">
                            <div class="hover">
                                <label for=""> <a class="text-decoration-none" href="forgot-password">Quên mật khẩu</a>  </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mb-3">

                    <button type="submit" class="btn " style="width: 350px; background-color: #be1e2d;"><span class="fs-5 fw-bold text-light">ĐĂNG NHẬP</span></button>
                </div>
                <div class="mb-3">
                    <div class="text-center">-hoặc-</div>
                </div>
               <!--  <div class="mb-3">
                    <button type="submit" class="btn " style="width: 350px; background-color: #feecf0;">
                        <div class="text-center">
                        <img src="../views/image/google.png" alt="" width="28px" height="28px">
                    <span  style="color: #be1e2d;">Đăng nhập bằng tài khoản Google</span>
                </div>
                </button>
                </div> -->
                <div class="mb-2">
                    <div class="text-center">

                        Bạn chưa có tài khoản?
                        <a class="text-decoration-none" href="/home/register">Đăng ký ngay</a>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <script src="../views/js/bootstrap.bundle.min.js"></script>


</body>
</html>