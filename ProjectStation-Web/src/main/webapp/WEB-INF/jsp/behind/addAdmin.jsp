<%--
  Created by IntelliJ IDEA.
  User: shanchun95
  Date: 2019/07/02
  Time: 下午 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>千锋Java项目管理系统</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bower_components/Ionicons/css/ionicons.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/skins/_all-skins.min.css">
    <!-- jQuery 3 -->
    <script src="${pageContext.request.contextPath}/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="${pageContext.request.contextPath}/bower_components/jquery-ui/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
        $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.7 -->
    <script src="${pageContext.request.contextPath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- AdminLTE App -->
    <script src="${pageContext.request.contextPath}/dist/js/adminlte.min.js"></script>
    <!-- Google Font -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <head>
<body class="hold-transition skin-blue sidebar-mini fixed">
<div class="wrapper">

    <header class="main-header">
        <!-- Logo -->
        <a href="${pageContext.request.contextPath}/project/list" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>Q</b>FW</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>千锋Java项目</b>管理后台</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">切换导航</span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="${pageContext.request.contextPath}/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs">超级管理员</span>
                        </a>
                    </li>
                    <!-- Control Sidebar Toggle Button -->
                    <li>
                        <a href="#" data-toggle="control-sidebar">退出</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- 左列。包含徽标和侧栏 -->
    <aside class="main-sidebar">
        <!-- 侧栏:style可以在sidebar.less中找到 -->
        <section class="sidebar">
            <!-- 搜索表单 -->
            <form action="#" method="get" class="sidebar-form">
                <div class="input-group">
                    <input type="text" name="q" class="form-control" placeholder="搜索...">
                    <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
                </div>
            </form>
            <!-- /.search form -->
            <!-- 侧栏菜单::style可以在侧栏中找到 -->
            <ul class="sidebar-menu" data-widget="tree">
                <li class="header">主菜单</li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-share"></i> <span><font style="vertical-align: inherit;"><font
                            style="vertical-align: inherit;">项目管理</font></font></span>
                        <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
                    </a>
                    <ul class="treeview-menu" style="display: none;">
                        <li class="treeview menu-open">
                            <a href="#"><i class="fa fa-circle-o"></i><font style="vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">项目信息管理
                            </font></font><span class="pull-right-container">
                      <i class="fa fa-angle-left pull-right"></i>
                    </span>
                            </a>
                            <ul class="treeview-menu" style="display: block;">
                                <li><a href="${pageContext.request.contextPath}/project/list"><i class="fa fa-circle-o"></i><font
                                        style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">项目信息展示</font></font></a></li>
                                <li><a href="${pageContext.request.contextPath}/project/showAddProject?id=0"><i class="fa fa-circle-o"></i><font
                                        style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">添加项目信息</font></font></a></li>
                            </ul>
                        </li>
                        <li class="treeview menu-open">
                            <a href="#"><i class="fa fa-circle-o"></i>
                                <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">讲师信息管理
                                </font></font><span class="pull-right-container">
                      <i class="fa fa-angle-left pull-right"></i>
                    </span>
                            </a>
                            <ul class="treeview-menu" style="display: block;">
                                <li><a href="${pageContext.request.contextPath}/speaker/list"><i class="fa fa-circle-o"></i><font
                                        style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">讲师信息展示</font></font></a></li>
                                <li><a href="${pageContext.request.contextPath}/speaker/addSpeaker"><i class="fa fa-circle-o"></i><font
                                        style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">添加讲师信息</font></font></a></li>
                            </ul>
                        </li>
                        <li class="treeview menu-open">
                            <a href="#"><i class="fa fa-circle-o"></i>
                                <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">项目类型管理
                                </font></font><span class="pull-right-container">
                   <i class="fa fa-angle-left pull-right"></i>
                 </span>
                            </a>
                            <ul class="treeview-menu" style="display: block;">
                                <li><a href="${pageContext.request.contextPath}/science/list"><i class="fa fa-circle-o"></i><font
                                        style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">项目类型信息展示</font></font></a></li>
                                <li><a href="${pageContext.request.contextPath}/science/showScience"><i class="fa fa-circle-o"></i><font
                                        style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">添加项目类型信息</font></font></a></li>
                            </ul>
                        </li>
                    </ul>
                </li>

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-share"></i> <span><font style="vertical-align: inherit;"><font
                            style="vertical-align: inherit;">用户管理</font></font></span>
                        <span class="pull-right-container">
        			      <i class="fa fa-angle-left pull-right"></i>
        			    </span>
                    </a>
                    <ul class="treeview-menu" style="display: none;">
                        <li class="treeview menu-open">
                            <a href="${pageContext.request.contextPath}/admin/list"><i class="fa fa-circle-o"></i><font style="vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">管理员信息
                            </font></font><span class="pull-right-container">
        			          <i class="fa fa-angle-left pull-right"></i>
        			        </span>
                            </a>
                            <ul class="treeview-menu" style="display: block;">
                                <li><a href="${pageContext.request.contextPath}/admin/list"><i class="fa fa-circle-o"></i><font
                                        style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">管理员信息展示</font></font></a></li>
                                <li><a href="${pageContext.request.contextPath}/admin/addAdmin?id=0"><i class="fa fa-circle-o"></i><font
                                        style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">添加管理员信息</font></font></a></li>
                            </ul>
                        </li>
                        <li class="treeview menu-open">
                            <a href="#"><i class="fa fa-circle-o"></i>
                                <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">用户信息管理
                                </font></font><span class="pull-right-container">
        			          <i class="fa fa-angle-left pull-right"></i>
        			        </span>
                            </a>
                            <ul class="treeview-menu" style="display: block;">
                                <li><a href="${pageContext.request.contextPath}/user/list"><i class="fa fa-circle-o"></i><font
                                        style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">用户信息管理展示</font></font></a></li>
                                <li><a href="${pageContext.request.contextPath}/user/addUser"><i class="fa fa-circle-o"></i><font
                                        style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">添加用户信息管理</font></font></a></li>
                            </ul>
                        </li>
                    </ul>
                </li>

            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>

    <!-- 内容包装器。包含页面内容 -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                管理员
                <small>列表</small>
            </h1>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                <c:if test="${empty admin.id}">
                                    <h4>添加管理员信息</h4>
                                </c:if>
                                <c:if test="${not empty admin.id}">
                                    <h4>修改管理员信息</h4>
                                </c:if></font></font></h3>
                        </div>
                        <div class="container" style="margin-top: 20px;">
                            <!--enctype="multipart/form-data"-->
                            <form class="form-horizontal" action="${pageContext.request.contextPath}/admin/showAddAdmin" method="post">
                                <c:if test="${not empty admin.id}">
                                    <input type="hidden" name="id" value="${admin.id}"/>
                                </c:if>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">用户邮箱</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="email" placeholder="email" value="${admin.email}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">用户密码</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="password" placeholder="password" value="${admin.password}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-default">保存</button>
                                    </div>
                                </div>
                            </form>
                        </div><!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </section><!-- /.content -->
    </div>
    <!-- /.content-wrapper --><!-- /.内容——包装 -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>版本</b> 2.4.0
        </div>
        <strong>版权所有 &copy; 2014-2016 <a href="https://adminlte.io">小禅院</a>.</strong> 版权所有
    </footer>
</div>

</body>
</html>


