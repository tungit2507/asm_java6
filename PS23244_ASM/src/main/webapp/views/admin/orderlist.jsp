<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="shortcut icon" type="image/png"
	href="../views/admin/dist/img/iconadmin.png" />
<title>Đơn Hàng</title>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="../views/admin/plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- ./wrapper -->

<link rel="stylesheet"
	href="../views/admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
<!-- iCheck -->
<link rel="stylesheet"
	href="../views/admin/Wplugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- JQVMap -->
<link rel="stylesheet"
	href="../views/adminp/lugins/jqvmap/jqvmap.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="../views/admin/dist/css/adminlte.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="../views/admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="../views/admin/plugins/daterangepicker/daterangepicker.css">
<!-- summernote -->
<link rel="stylesheet"
	href="../views/admin/plugins/summernote/summernote-bs4.min.css">


<link rel="stylesheet" href="../views/css/style.css">
<link rel="stylesheet" href="../views/icon/bootstrap-icons.css">
<link rel="stylesheet" href="../views/css/productlist.css">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<!-- Navbar -->
		<jsp:include page="./menu/nav.jsp" />
		<!-- /.navbar -->

		<!-- Aside -->
		<jsp:include page="./menu/aside.jsp" />
		<!-- /. Aside -->

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section>
				<div class="content-header">
					<div class="container-fluid">
						<table
							class="table bg-white table-border table-striped custab text-center">
							<thead>

								<tr>
									<th style="font-weight: bolder; font-size: 18px"><a
										href="/order/list?field=id&amp;sort=${field}&amp;p=${page.number}">Mã đặt
										hàng</a></th>
									<th style="font-weight: bolder; font-size: 18px"><a href="/order/list?field=account.username&amp;sort=${field}&amp;p=${page.number}">Tên khách hàng
										</a></th>
									<th style="font-weight: bolder; font-size: 18px"><a
										href="/order/list?field=createDate&amp;sort=${field}&amp;p=${page.number}">Ngày
											đặt hàng</a></th>
									<th style="font-weight: bolder; font-size: 18px"><a href="/order/list?field=sdt&amp;sort=${field}&amp;p=${page.number}">Số điện
										thoại</a></th>
									<th style="font-weight: bolder; font-size: 18px"><a href="/order/list?field=address&amp;sort=${field}&amp;p=${page.number}">Địa chỉ</a></th>
									<th style="font-weight: bolder; font-size: 18px"><a href="/order/list?field=confirmation&amp;sort=${field}&amp;p=${page.number}">Xác nhận
										đơn hàng</a></th>
									<th style="font-weight: bolder; font-size: 18px">Đơn hàng
										</th>
									<th></th>

								</tr>
							</thead>
							<!-- ... -->
							<!-- ... -->
							<tbody>
								<c:forEach var="order" items="${page.content}">
									<tr style="height: 30px; line-height: 30px;">
										<td>${order.id}</td>
										<td>${order.account.username}</td>
										<td>${order.createDate}</td>
										<td>${order.sdt}</td>
										<td>${order.address}</td>
										<td>${order.confirmation ? 'Đã xác nhận' : 'Chưa xác nhận'}</td>
										<td><a href="/admin/orderdetail?id=${order.id}">Chi
												tiết đơn hàng</a></td>
										<td><c:if test="${!order.confirmation}">
												<a class="btn btn-info btn-xs confirm-btn"
													href="/order/confirm/${order.id}"> <i
													class="bi bi-pencil-square"></i> Xác nhận
												</a>
											</c:if> <a href="/order/delete/${order.id}" style="font-size: 14px"
											class="btn btn-danger btn-xs"
											onclick="return confirm('Bạn có chắc muốn xóa đơn hàng này?')">
												<i class="bi bi-x-lg"></i> Xóa
										</a></td>
									</tr>
								</c:forEach>
							</tbody>
							<!-- ... -->

							<!-- ... -->

						</table>

						<div class=" text-center">
							<a href="/order/list?p=0" class="btn btn-success"> First </a> <a
								href="/order/list?p=${page.number-1}" class="btn btn-primary">
								Previous </a> <a href="/order/list?p=${page.number+1}"
								class="btn btn-danger"> Next </a> <a
								href="/order/list?p=${page.totalPages-1}"
								class="btn btn-warning"> Last</a>
						</div>


						<!-- /.Left col -->
						<!-- right col (We are only adding the ID to make the widgets sortable)-->

					</div>
					<!-- /.row (main row) -->
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<jsp:include page="./menu/footer.jsp" />


	</div>


	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>





	<script src="../views/admin/plugins/jquery/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="../views/admin/plugins/jquery-ui/jquery-ui.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button)
	</script>
	<!-- Bootstrap 4 -->
	<script
		src="../views/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Sparkline -->
	<script src="../views/admin/plugins/sparklines/sparkline.js"></script>
	<!-- JQVMap -->
	<script src="../views/admin/plugins/jqvmap/jquery.vmap.min.js"></script>
	<script src="../views/admin/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
	<!-- jQuery Knob Chart -->
	<script src="../views/admin/plugins/jquery-knob/jquery.knob.min.js"></script>
	<!-- daterangepicker -->
	<script src="../views/admin/plugins/moment/moment.min.js"></script>
	<script src="../views/admin/plugins/daterangepicker/daterangepicker.js"></script>
	<!-- Tempusdominus Bootstrap 4 -->
	<script
		src="../views/admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
	<!-- Summernote -->
	<script src="../views/admin/plugins/summernote/summernote-bs4.min.js"></script>
	<!-- overlayScrollbars -->
	<script
		src="../views/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
	<!-- AdminLTE App -->
	<script src="../views/admin/dist/js/adminlte.js"></script>
	<!-- AdminLTE for demo purposes -->
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="../views/admin/dist/js/pages/dashboard.js"></script>
</body>
</html>