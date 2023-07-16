<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="shortcut icon" type="image/png" href="../views/image/icon.png"/>
<title>Shop Điện Thoại</title>

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
    <section class=" mb-2 me-5 ms-5" style="background-color: rgb(233, 236, 239); height: 40px;">
        <div class="pt-2 ms-3"><a class="text-decoration-none text-dark" href="/home/index"><i class="bi bi-house-fill"></i></a> / <a class="text-decoration-none text-dark" href="/home/shop">Điện thoại</a> / ${pr.name}</div>
    </section>
    <section class="me-5 ms-5 mb-3">
        <div class="row">
            <div class="col-md-5">
               
            </div>
            <hr>
            <div class="col-md-4">
                <div style="width: 400px;">
                    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active" data-bs-interval="2000">
                                <img src="../views/image/product/iPhone14_128GB/hinh1.jpeg" class="d-block w-100 " alt="...">
                            </div>
                            <div class="carousel-item" data-bs-interval="2000">
                                <img src="../views/image/product/iPhone14_128GB/hinh2.jpeg" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item" data-bs-interval="2000">
                                <img src="../views/image/product/iPhone14_128GB/hinh3.jpeg" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item" data-bs-interval="2000">
                                <img src="../views/image/product/iPhone14_128GB/hinh4.jpeg" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item" data-bs-interval="2000">
                                <img src="../views/image/product/iPhone14_128GB/hinh5.jpeg" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item" data-bs-interval="2000">
                                <img src="../views/image/product/iPhone14_128GB/hinh6.jpeg" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item" data-bs-interval="2000">
                                <img src="../views/image/product/iPhone14_128GB/hinh7.jpeg" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item" data-bs-interval="2000">
                                <img src="../views/image/product/iPhone14_128GB/hinh8.jpeg" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item" data-bs-interval="2000">
                                <img src="../views/image/product/iPhone14_128GB/hinh9.jpeg" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item" data-bs-interval="2000">
                                <img src="../views/image/product/iPhone14_128GB/hinh10.jpeg" class="d-block w-100" alt="...">
                            </div>


                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                      <span class="visually-hidden">Previous</span>
                    </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                      <span class="carousel-control-next-icon" aria-hidden="true"></span>
                      <span class="visually-hidden">Next</span>
                    </button>
                    </div>
                </div>
            </div>
            <div class="col-md-5 mb-3">
                <div><span class="fs-2">${pr.name}</span></div>
                <div><span class="fs-2 fw-bold" style="color: #be1e2d;">${pr.price}
                    <span class="text-decoration-underline fs-4"> đ</span></span>
                    <span class=" text-decoration-line-through text-muted">
                        ${pr.sale}
                        <span class="text-decoration-underline"> đ</span>
                    </span>
                </div>
                <div>
                    <button class="btn btn-light me-3 rounded-pill" type="submit">RED</button>
                    <button class="btn btn-light me-3 rounded-pill" type="submit">PURPLE</button>
                    <button class="btn btn-light me-3 rounded-pill" type="submit">BLUE</button>
                    <button class="btn btn-light me-3 rounded-pill" type="submit">STARLIGHT</button>
                    <button class="btn btn-light me-3 rounded-pill" type="submit">MIDNIGHT</button>
                </div>
                <div class="card mt-2">
                    <div class="card-header" style="background-color: #34a105;">
                        <div><span>KHUYẾN MÃI:</span></div>
                        <div><span>giá và khuyến mãi áp dụng đặt và nhận hàng 13/1 - 31/1</span></div>
                    </div>
                    <div class="card-body">
                        <div><span>KHUYẾN MẠI TRẢ GÓP:</span></div>
                        <div><span>Trả góp 0% qua Công ty tài chính(Áp dụng trên giá bán lẻ). </span></div>
                        <div><span>Trả góp thời hạn 06-12 tháng qua thẻ tín dụng</span></div>
                        <div><span>ƯU ĐÃI MUA KÈM</span></div>
                        <div><span>Trợ giá 3 tháng cước khi nâng lên các gói trả sau V200S, V300S, V700S, V1000S.</span></div>
                        <div><span>Thu cũ giá cao lên đến 20,000,000đ khi lên đời iPhone 14 Series.</span></div>
                    </div>
                </div>
                <div class="d-grid gap-2   mt-2">
                    <a class="btn" href="/home/cart/add/${pr.id}" type="submit" style="background-color: orange;"><span class="fw-bold fs-4 text-white">Thêm giỏ hàng</span><br>
                        <span class="text-white">Thỏa mái lựa chọn, xem hàng tại nhà</span></a>

                </div>
                <div class=" gap-2 mt-2">
                    <div class="row">
                        <button class="btn ms-5 col-5" type="button" style="background-color: #07bcb5;"><span class="fw-bold fs-4 text-white">MUA TRẢ GÓP 0%</span><br>
                            <span class="text-white">Thục tục đơn giản</span> </button>

                        <button class="btn ms-1  col-5" type="button" style="background-color: #07bcb5;"><span class="fw-bold fs-4 text-white">TRẢ GÓP QUA THẺ</span><br>
                            <span class="text-white">Visa, Master, JCB, ATM</span></button>
                    </div>
                </div>
            </div>
            <div class="col-md-2">
                <div><span class="fs-4">Thông số kỹ thuật</span></div>
                <hr>
                <div><span class="">Màn hình: </span>
                    <span class=" text-align"> OLED, 2532 x 1170 pixel ở 460 ppi, 6.1", Kính cường lực Ceramic Shield</span></div>
                <hr>
                <div><span>CPU:</span>
                    <span> Apple A15 Bionic, CPU 6 nhân với 2 nhân hiệu suất và 4 nhân hiệu quả, Apple GPU 5 nhân</span></div>
                <hr>
                <div><span>Bộ nhớ trong:</span>
                    <span> 128GB</span></div>
                <div><span>Hỗ trợ đa sim:</span>
                    <span>	1 Nano SIM & 1 eSIM, Hỗ trợ 5G</span></div>
                <hr>
                <div><span>Wifi:</span>
                    <span> Wi ‑ Fi 6 (802.11ax) với 2x2 MIMO Wi-Fi MIMO</span></div>
                <hr>
                <div><span>Danh bạ:</span>
                    <span> Không giới hạn</span></div>
            
                <button type="button" class="btn btn-outline-primary  mt-3" style="border-radius: 30px;" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    Hiển thị cấu hình chi tiết<i class="bi bi-caret-down"></i>
                  </button>

            </div>

            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h6 class="ms-5 me-1">Thông số kỹ thuật chi tiết iPhone 14 128GB</h6>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>

                        <div class="modal-body">

                            <div class="row">
                                <div class="col-md-5">
                                    <div>Chất liệu</div>
                                </div>
                                <div class="col-md-7">
                                    <div>Khung viền thép không gỉ</div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-5">
                                    <div>Hỗ trợ 5G</div>
                                </div>
                                <div class="col-md-7">
                                    <div>Có</div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-5">
                                    <div>Thiết kế</div>
                                </div>
                                <div class="col-md-7">
                                    <div>Nguyên khối</div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-12 bg-light">
                                    <div class="text-danger">Màn hình</div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-5">
                                    <div>Loại màn hình</div>
                                </div>
                                <div class="col-md-7">
                                    <div>OLED</div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-5">
                                    <div>Độ phân giải</div>
                                </div>
                                <div class="col-md-7">
                                    <div>2532 x 1170 pixel ở 460 ppi</div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-5">
                                    <div>Kích thước màn hình</div>
                                </div>
                                <div class="col-md-7">
                                    <div>6.1"</div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-5">
                                    <div>Công nghệ cảm ứng</div>
                                </div>
                                <div class="col-md-7">
                                    <div>Kính cường lực Ceramic Shield</div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12 bg-light">
                                    <div class="text-danger">CPU & RAM</div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-5">
                                    <div>Chipset</div>
                                </div>
                                <div class="col-md-7">
                                    <div>Apple A15 Bionic</div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-5">
                                    <div>Số nhân CPU</div>
                                </div>
                                <div class="col-md-7">
                                    <div>CPU 6 nhân với 2 nhân hiệu suất và 4 nhân hiệu quả</div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-5">
                                    <div>Chip đồ họa (GPU)</div>
                                </div>
                                <div class="col-md-7">
                                    <div>Apple GPU 5 nhân</div>
                                </div>
                            </div>


                        </div>
                    </div>


                </div>

            </div>
        </div>




    </section>
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
</body>
</html>