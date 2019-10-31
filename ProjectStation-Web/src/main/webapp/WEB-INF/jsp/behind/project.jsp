<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://yanzhenwei.com/common/" prefix="p"%>
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

    <style type="text/css">
        th{
            text-align:center;
        }
    </style>
    <style type="text/css">
        th {
            text-align: center;
        }

    </style>
    <script type="text/javascript">
        $(function () {
            var sum = 0;
            var inputArr = $("input[name='ids']");
            $("#allinput").click(function () {
                //alert($(this).prop("checked"));

                inputArr.prop("checked", this.checked);
                if (this.checked) {
                    sum = inputArr.length;

                } else {
                    sum = 0;
                }
                $("#span_01").text(sum);
            });


            for(var i = 0; i < inputArr.length;i++) {

                var result = inputArr[i];
                $(result).click(function () {

                    if ($(this).prop("checked")) {
                        sum += 1;
                        if (sum == inputArr.length) {
                            $("#allinput").prop("checked", true);
                        }
                    } else {
                        sum -= 1;
                        if (sum != inputArr.length) {
                            $("#allinput").prop("checked", false);
                        }
                    }
                    $("#span_01").text(sum);
                });
            }
        });

        function showsName(obj,id){
            // alert($(obj).text());
            $("#button_01").text($(obj).text());
            // alert($("#typeId").val());
            $("#speakerId").val(id);
            // alert($("#typeId").val());


        }
        function showcName(obj,id) {
            // alert($(obj).text());
            $("#button_02").text($(obj).text());
            // alert($("#typeId").val());
            $("#courseId").val(id);
            // alert($("#typeId").val());
        }

    </script>
    <script type="text/javascript">

        function deletes() {

            if($("#span_01").text() == 0){
                alert("请选择要删除的数据")
            }else{
                $("#deleteForm").submit();
                alert("删除成功！")
            }
            return false;
        }
        function deleteP(id){
                location.href="${pageContext.request.contextPath}/project/deleteProject?id="+id;
            alert("删除成功！")
            return false;
        }
    </script>
</head>
<body class="hold-transition skin-blue sidebar-mini fixed">
<div class="wrapper">

    <header class="main-header">
        <!-- Logo -->
        <a href="index2.html" class="logo">
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
                                <li><a href="${pageContext.request.contextPath}/admin/addAdmin"><i class="fa fa-circle-o"></i><font
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
                项目
                <small>列表</small>
            </h1>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">项目信息表</font></font></h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
                                <div class="row">
                                    <div class="col-sm-12">

                                        <div class="row">
                                            <div class="col-md-4">
                                                <button type="button" class="btn btn-info" onclick="location.href='${pageContext.request.contextPath}/project/showAddProject?id='+0">添加</button>

                                                <!-- onclick="location.href='../goods/delete?'" -->
                                                <button type="button" class="btn btn-primary" onclick="return deletes()">批量删除
                                                    <span class="badge" id="span_01">0</span>
                                                </button>
                                            </div>
                                            <div class="col-md-8">
                                                <form class="form-inline navbar-right" style="margin-right:10px" action="${pageContext.request.contextPath}/project/list" method="post">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" id="exampleInputEmail3" placeholder="项目名称" name="projectName" value="">
                                                    </div>

                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                            --<span id="button_01">请选择讲师</span>--<span class="caret"></span>
                                                        </button>
                                                        <ul class="dropdown-menu">
                                                            <c:forEach items="${speakerList}" var="speaker">
                                                                <li><a href="#" onclick="showsName(this,${speaker.id})">${speaker.speakerName}</a></li>
                                                            </c:forEach>

                                                        </ul>
                                                        <input type="hidden" class="form-control" id="speakerId" name="speakerId" value="0">
                                                    </div>
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                            --<span id="button_02">请选择技术类型</span>--<span class="caret"></span>
                                                        </button>
                                                        <ul class="dropdown-menu">
                                                            <c:forEach items="${scienceList}" var="science">
                                                                <li><a href="#" onclick="showcName(this,${science.id})">${science.scienceName}</a></li>
                                                            </c:forEach>

                                                        </ul>
                                                        <input type="hidden" class="form-control" id="courseId" name="scienceId" value="0">
                                                    </div>


                                                    <button type="submit" class="btn btn-info">查&nbsp;询</button>
                                                </form>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div  style="margin-top:20px;" >
                                    <form action="${pageContext.request.contextPath}/project/deleteProjects" id="deleteForm" method="post">
                                        <table class="table table-bordered table-hover table-striped" style="text-align:center;table-layout: fixed;">
                                            <thead >
                                            <tr >
                                                <th><input type="checkbox" name="" id="allinput"/></th>
                                                <th>序号</th>
                                                <th>项目名称</th>
                                                <th style=" width:30%;">项目介绍</th>
                                                <th>讲师名字</th>
                                                <th>技术选型</th>
                                                <th>编辑</th>
                                                <th>删除</th>
                                            </tr>
                                            </thead>

                                            <tbody>
                                            <c:forEach items="${page.rows}" var="project" varStatus="var">
                                                <tr>
                                                    <td style="padding-top:20px"><input type="checkbox" name="ids" value="${project.id}"/></td>
                                                    <td style="padding-top:20px">${var.count}</td>
                                                    <td style="padding-top:20px">${project.projectName}</td>
                                                    <td style="padding-top:20px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">${project.projectDetail}</td>
                                                    <td style="padding-top:20px">${project.speakerName}</td>
                                                    <td style="padding-top:20px">${project.scienceName}</td>
                                                    <td style="padding-top:20px"><a href="${pageContext.request.contextPath}/project/showAddProject?id=${project.id}"><span class="glyphicon glyphicon-edit"></span></a></td>
                                                    <td style="padding-top:20px"><a href="#"><span onclick="return deleteP(${project.id})" class="glyphicon glyphicon-trash"></span></a></td>
                                                </tr>
                                            </c:forEach>

                                            </tbody>

                                        </table>
                                    </form>
                                    <div class="navbar-right" style="margin-right:10px">
                                        <p:page url="${pageContext.request.contextPath}/project/list"></p:page>
                                    </div>
                                </div>
                                <script type="text/javascript">
                                window.onload=function () {
                                    $('[data-toggle="popover"]').popover();
                                }
                            </script>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
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
