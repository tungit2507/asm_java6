<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="shortcut icon" type="image/png" href="../views/image/icon.png"/>
<title>Liên Hệ</title>
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
    <form action="/home/send.htm" method="post">
    <section class="me-5 ms-5 mb-3">
        <div class="row">
            <div class="col-md-5">
                <div class="mt-2 "><a class="text-decoration-none" href="../views/index.html">Trang chủ > </a> Liên hệ</div>
                <div class="mb-3">DI ĐỘNG VIỆT XIN HÂN HẠNH ĐƯỢC HỖ TRỢ QUÝ KHÁCH</div>
                <div class="card">
                    <div class="mb-3 mt-3 me-5 ms-5">

                        <label>Quý khách đang quan tâm về: </label>
                    </div>
                    <div class="mb-3 me-5 ms-5">
                        <label>Tiêu đề: </label>
                        <input name="subject"  class="form-control" />
                    </div>
                    <div class="mb-3 me-5 ms-5">
                        <label>Nội dung:</label>
                        <textarea name="body" class="form-control" rows="4" placeholder="Xin quý khách vui lòng mô tả chi tiết"></textarea>
                    </div>
                    <div class="mb-3 me-5 ms-5">
                        <label>Họ tên: </label>
                        <input name="name" class="form-control" />
                    </div>
                    <div class="mb-3 me-5 ms-5">
                        <label>Địa chỉ email: </label>
                        <input name="to" class="form-control" />
                    </div>
                   
                </div>
                <div class="d-grid gap-2  mt-3">
                    <button class="btn btn-primary" type="submit">GỬI LIÊN HỆ</button>

                </div>
            </div>
            <div class="col-md-7">
                <div class="mb-3 mt-4">
                    <hr class="border bg-dark border-2 opacity-75">
                </div>

                <div class="mb-3">THÔNG TIN LIÊN HỆ KHÁC</div>
                <div>Tìm siêu thị di động việt? Tìm siêu thị để xem bản đồ và địa chỉ các siêu thị trên toàn quốc.</div>
                <hr>
                <div class="mb-2">Báo chí, hợp tác: liên hệ vinhhtps23244@fpt.edu.vn</div>
                <div class="mb-2">Tổng đài tư vấn, hỗ trợ khách hàng(8h00 đến 21h): 0355726137</div>
                <div class="mb-2">Tổng đài khiếu nợ: 0355726137</div>
                <div class="mb-3">Email: huynhtanvinh@gmail.com</div>
                <div class="mb-2">
                    <img src="../views/image/map.png" alt="" style="width: 620px; height: 325px;">
                </div>
            </div>
        </div>
    </section>
    </form>
    <footer>
        <jsp:include page="./menu/footer.jsp" />
    </footer>

    <script src="../views/js/bootstrap.bundle.min.js"></script>
    

</body>
</html>