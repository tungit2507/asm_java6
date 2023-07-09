<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 <link rel="shortcut icon" type="image/png" href="../views/admin/dist/img/iconadmin.png"/>
<title>Thống Kê</title>

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../views/admin/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- ./wrapper -->

 <link rel="stylesheet" href="../views/admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="../views/admin/Wplugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="../views/adminp/lugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../views/admin/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="../views/admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="../views/admin/plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="../views/admin/plugins/summernote/summernote-bs4.min.css">
  
  
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
        <div class="row">
			<div class="col-md-10 offset-md-1">
				
				<div class="row px-3 py-1">
					<div class="col-3" >
						<form action="/admin/reportOrderByDate" method="post">
							<div class="form-group">
								<input type="text" class="form-control" name="firstDate" id="firstDate" aria-describedby="firstDateHid" placeholder="MM-dd-yyyy" />
							</div>
							<div class="form-group">
								 <input type="text" class="form-control" name="lastDate" id="lastDate" aria-describedby="lastDateHid" placeholder="MM-dd-yyyy" />
							</div>
							<button type="submit" class="btn bg-gra-03">Search</button>
						</form>
					</div>
					<div class="col-3 bg-gra-03 offset-6" style="border-radius: 4px">
						<h3 class="text-center">Đơn hàng</h3>
						<h5>Ngày: <fmt:formatDate pattern = "MM-dd-yyyy" value = "${firstDate}" /></h5>
						<h5>Ngày: <fmt:formatDate pattern = "MM-dd-yyyy" value = "${lastDate}" /></h5>
						<h5>Đơn hàng: ${page.totalElements }</h5>
					</div>
				</div>

				<table class="table bg-white mt-2 table-border table-striped custab text-center">
					<thead>
						<tr>
							<th style="font-weight: bolder; font-size: 18px"></th>
							<th style="font-weight: bolder; font-size: 18px">Mã loại</th>
							<th style="font-weight: bolder; font-size: 18px">Địa chỉ</th>
							<th style="font-weight: bolder; font-size: 18px">Ngày tạo</th>
						</tr>
					</thead>
					<tbody>
						<c:set var="i" value="0" />
						<c:forEach var="item" items="${page.content}">
							<tr>
								<td>${i =i+1}</td>
								<td>${item.id }</td>
								<td>${item.address }</td>
								<td>${item.createDate }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
        
            
          <!-- /.Left col -->
          <!-- right col (We are only adding the ID to make the widgets sortable)-->
          
        </div> <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <jsp:include page="./menu/footer.jsp" />

  
</div>



<script src="../views/admin/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="../views/admin/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="../views/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
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
<script src="../views/admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="../views/admin/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="../views/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="../views/admin/dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../views/admin/dist/js/pages/dashboard.js"></script>
</body>
</html>