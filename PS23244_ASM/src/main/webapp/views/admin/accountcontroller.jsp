<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="${pageContext.servletContext.contextPath}/">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="shortcut icon" type="image/png" href="../views/admin/dist/img/iconadmin.png"/>
<title>Tài Khoản</title>


 <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Font Awesome -->
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../views/admin/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

  <!-- iCheck -->
  <link rel="stylesheet" href="../views/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">

  <!--  style -->
  <link rel="stylesheet" href="../views/css/style.css">
  <link rel="stylesheet" href="../views/icon/bootstrap-icons.css">
  
  <!-- Theme style -->
  <link rel="stylesheet" href="../views/admin/dist/css/adminlte.min.css">

   <link rel="stylesheet" href="../views/css/productlist.css">

   
   
<!--   <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">  -->
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script> 

   
 <style type="text/css">
*[id$=errors] {
	color: red;
	font-style: italic;
}
</style>
</head>

<body class="hold-transition sidebar-mini layout-fixed">

<div class="wrapper">
  <!-- Navbar -->
  <jsp:include page="./menu/nav.jsp" />
  <!-- /.navbar -->

  <!-- Aside -->
  <jsp:include page="./menu/aside.jsp" />
 <!-- /. Aside -->
  
  
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section>
    <div class="content-header">
      <div class="container-fluid">
      
      
	<div class="page-wrapper bg-gra-03 " style="height: 600px">
		<!-- <nav class="navbar navbar-dark bg-dark">
		</nav> -->

		<div class="container" id="main-content" style="padding-top: 40px">
			<div class="row">
				<!-- LEFT AREA -->
				<div class="col-md-4"></div>

				<!-- RIGHT AREA -->
				<div class="col-md-4">
					<a href="/account/list"
						class="btn bg-gra-03 p-2 mb-3 btn-xs pull-right"> Danh sách tài khoản
						</a>

					<form:form action="/account/list" modelAttribute="item">
						<div class="form-group">
							<form:input class="form-control" path="username"
								placeholder="Tài khoản" />
								 <form:errors path="username" element="li" delimiter=";" cssClass="text-danger" />
						</div>

						<div class="form-group">
							<form:input type="password" class="form-control" path="password"
								placeholder="Mật khẩu" />
								 <form:errors path="password" element="li" delimiter=";" cssClass="text-danger" />
						</div>
						<div class="form-group">
							<form:input class="form-control" path="fullname"
								placeholder="Họ tên" />
								 <form:errors path="fullname" element="li" delimiter=";" cssClass="text-danger" />
						</div>
                        <div class="form-group">
							<form:input type="email" class="form-control" path="email"
								placeholder="Email" />
								 <form:errors path="email" element="li" delimiter=";" cssClass="text-danger" />
						</div>
						<div class="form-group">
							<form:input type="file" 
								path="photo" aria-describedby="imageHid" placeholder="image" />
								 <form:errors path="photo" element="li" delimiter=";" cssClass="text-danger" />
						</div>	

						

									<div class="form-group">
										Activity:
										<form:radiobuttons class="mx-2" path="activated"
											items="${activateds }" delimiter="" />
									</div>
									<div class="form-group">
										Role:
										<form:radiobuttons class="mx-2" path="admin"
											items="${admins }" delimiter="" />
									</div>




						<div class="form-group text-center">
							<button type="submit" class="btn btn-success"
								formaction="/account/create">
								<i class="fa fa-plus-square"></i> Create
							</button>
							<button type="submit" class="btn btn-primary"
								formaction="/account/update">
								<i class="fa fa-save"></i> Update
							</button>
							<a type="button" class="btn btn-danger" href="/account/delete/${item.username}">
								<i class="bi bi-trash3"></i>
									Delete
							</a>
							<button type="submit" class="btn btn-warning" style="color: white"
								formaction="/account/controller">
								<i class="bi bi-x-square"></i> New
							</button>
						</div>
					</form:form>

				</div>

				<div class="col-md-4"></div>
				
			</div>
		
		</div>
	</div>
		
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

<!-- jQuery Knob Chart -->
<script src="../views/admin/plugins/jquery-knob/jquery.knob.min.js"></script>

<!-- AdminLTE App -->
<script src="../views/admin/dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../views/admin/dist/js/pages/dashboard.js"></script>
</body>
</html>
