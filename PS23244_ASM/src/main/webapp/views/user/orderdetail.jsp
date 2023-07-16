<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="shortcut icon" type="image/png" href="../views/image/icon.png"/>
<title>Chi Tiết Đơn Hàng</title>

<link rel="stylesheet" href="../views/css/bootstrap.min.css">
<link rel="stylesheet" href="../views/css/orderdetail.css">
</head>
<body>

<!-- Shopping Cart Section Begin -->
<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <section>
                            <div class="container d-fex justify-content-center">
                                <div class="">
                                <div class="row">
                                    
                                        <div class="alert alert-success col row mx-1" role="alert">
                                              Đặt hàng thành công!
                                        </div>
                                        <div class="mx-1 mb-2">
                                                <h5><strong>Mã loại:</strong> ${order.id }</h5>
                                                <h5><strong>Họ Tên:</strong> ${order.account.fullname }</h5>
                                                <h5><strong>Số điện thoại:</strong> ${order.sdt}</h5>
                                                <h5><strong>Địa chỉ:</strong> ${order.address}</h5>
                                                <h5><strong>Email:</strong> ${order.account.email }</h5>
                                                <h5><strong>Ngày tạo:</strong> ${order.createDate }</h5>
                                        </div>
                                        <div class="table" style="max-width: 100%">
                                            <table>
                                                <thead class="text-center">
                                                    <tr>
                                                        <th>Số </th>
                                                        <th>Tên</th>
                                                        <th>Giá</th>
                                                        <th>Số lượng</th>
                                                        <th>Tổng tiền</th>
                                                    </tr>
                                                </thead>
                                                <tbody class="text-center">
                                                    <c:set var="i" value="0"/>
                                                    <c:forEach var="item" items="${items}">
                                                        <input type="hidden" name="id" value="${item.id}">
                                                        <tr>
                                                            <td>${i=i+1}</td>
                                                           
                                                            <td>
                                                                <h5>${item.product.name }</h5>
                                                            </td>
                                                            <td> ${item.price } đ</td>
                                                            <td>${item.quantity }</td>
                                                            <td style="color: red;">${item.price*item.quantity} đ</td>
                                                            
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 mt-3">
                                                
                                                    <a href="/home/index" class="btn" style="background-color: rgb(188, 207, 42);">Tiếp tục mua hàng</a>
                                            </div>
                                            <div class="col-md-6">
                                            <c:set var="total" value="${0}" />
                                            <c:forEach var="item" items="${items }">
                                                <c:set var="total" value="${total+(item.price*item.quantity) }" />
                                            </c:forEach>
                                            <div class="" style="margin-top: 30px;">
                                                <div class="d-flex justify-content-end ">
                                                   
                                                        <div class="fw-bold">Tổng tiền:  <span style="color: red">&nbsp &nbsp ${total } đ </span></div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </form>
                </div>
            </div>
        </div>
    </div>
<script src="../views/js/bootstrap.bundle.min.js"></script>
<!-- Shopping Cart Section End -->

</body>
</html>