<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/admin/index" class="brand-link">
      <img src="../views/admin/dist/img/admin.jpg" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Admin</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="../views/admin/dist/img/logo.png" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="/home/index" class="d-block">Shop điện thoại</a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          
         
         
          
          
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                Quản Lý
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/account/list" class="nav-link">
                  
                  <p>Tài Khoản</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/product/list" class="nav-link">
                  
                  <p>Sản Phẩm</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/category/list" class="nav-link">
                  
                  <p>Loại Sản Phẩm</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/order/list" class="nav-link">
                  
                  <p>Đơn Đặt Hàng</p>
                </a>
              </li>
            </ul>
          </li>                
          
          
          
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                Thống kê
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/admin/reportcategory" class="nav-link">
                  
                  <p>Loại hàng</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/reportOrderByDate" class="nav-link">
                  
                  <p>Ngày</p>
                </a>
              </li>
              
               
            </ul>
          </li>                
          
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>