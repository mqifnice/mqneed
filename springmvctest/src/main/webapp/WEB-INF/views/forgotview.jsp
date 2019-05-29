<!DOCTYPE html>

<head>
    <%@ page language="java" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="/assets/images/favicon.png">
    <title></title>
    <!-- Bootstrap Core CSS -->
    <link href="/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="/css/style.css" rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href="/css/colors/blue.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="fix-header card-no-border">
<!-- ============================================================== -->
<!-- Preloader - style you can find in spinners.css -->
<!-- ============================================================== -->
<div class="preloader">
    <svg class="circular" viewBox="25 25 50 50">
        <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10"/>
    </svg>
</div>
<!-- ============================================================== -->
<!-- Main wrapper - style you can find in pages.scss -->
<!-- ============================================================== -->
<div id="main-wrapper">
    <!-- ============================================================== -->
    <!-- Topbar header - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <header class="topbar">
        <nav class="navbar top-navbar navbar-toggleable-sm navbar-light">
            <!-- ============================================================== -->
            <!-- Logo -->
            <!-- ============================================================== -->
            <div class="navbar-header">
                <a class="navbar-brand" href="#">
                    <!-- Logo icon -->
                    <b>
                        <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                        <!-- Dark Logo icon -->
                        <img src="/image/kodinger.png" alt="homepage" class="dark-logo"/>

                    </b>
                    <!--End Logo icon -->
                    <!-- Logo text -->
                    <span>
                            <!-- dark Logo text -->
                                                   <text>红番茄&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</text>

                            <%--<img src="assets/images/logo-text.png" alt="homepage" class="dark-logo"/>--%>
                        </span>
                </a>
            </div>
            <!-- ============================================================== -->
            <!-- End Logo -->
            <!-- ============================================================== -->
            <div class="navbar-collapse">
                <!-- ============================================================== -->
                <!-- toggle and nav items -->
                <!-- ============================================================== -->
                <ul class="navbar-nav mr-auto mt-md-0 ">
                    <!-- This is  -->
                    <%--<li class="nav-item"><a class="nav-link nav-toggler hidden-md-up text-muted waves-effect waves-dark"--%>
                    <%--href="javascript:void(0)"><i class="ti-menu"></i></a></li>--%>
                    <%--<li class="nav-item hidden-sm-down">--%>
                    <%--<form class="app-search p-l-20">--%>
                    <%--<input type="text" class="form-control" placeholder="Search for..."> <a class="srh-btn"><i--%>
                    <%--class="ti-search"></i></a>--%>
                    <%--</form>--%>
                    </li>
                </ul>
                <!-- ============================================================== -->
                <!-- User profile and search -->
                <!-- ============================================================== -->
                <ul class="navbar-nav my-lg-0">
                    <li class="nav-item dropdown">
                        <%--<a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href=""--%>
                        <%--data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img--%>
                        <%--src="assets/images/users/1.jpg" alt="user" class="profile-pic m-r-5"/>Markarn Doe</a>--%>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- ============================================================== -->
    <!-- End Topbar header -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
    <aside class="left-sidebar">
        <!-- Sidebar scroll-->
        <div class="scroll-sidebar">
            <!-- Sidebar navigation-->
            <nav class="sidebar-nav">
                <ul id="sidebarnav">
                    <%--<li>--%>
                    <%--<a href="/admin/login" class="waves-effect"><i class="fa fa-table m-r-10"--%>
                    <%--aria-hidden="true"></i>设备列表</a>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                    <%--<a href="/device/detail" class="waves-effect"><i class="fa fa-clock-o m-r-10"--%>
                    <%--aria-hidden="true"></i>详情</a>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                    <%--<a href="/admin/user" class="waves-effect"><i class="fa fa-user m-r-10" aria-hidden="true"></i>账户</a>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                    <%--<a href="index.html" class="waves-effect"><i class="fa fa-clock-o m-r-10"--%>
                    <%--aria-hidden="true"></i>Dashboard</a>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                    <%--<a href="pages-profile.html" class="waves-effect"><i class="fa fa-user m-r-10"--%>
                    <%--aria-hidden="true"></i>Profile</a>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                    <%--<a href="table-basic.html" class="waves-effect"><i class="fa fa-table m-r-10"--%>
                    <%--aria-hidden="true"></i>Basic Table</a>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                    <%--<a href="icon-fontawesome.html" class="waves-effect"><i class="fa fa-font m-r-10"--%>
                    <%--aria-hidden="true"></i>Icons</a>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                    <%--<a href="map-google.html" class="waves-effect"><i class="fa fa-globe m-r-10"--%>
                    <%--aria-hidden="true"></i>Google Map</a>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                    <%--<a href="pages-blank.html" class="waves-effect"><i class="fa fa-columns m-r-10"--%>
                    <%--aria-hidden="true"></i>Blank Page</a>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                    <%--<a href="pages-error-404.html" class="waves-effect"><i class="fa fa-info-circle m-r-10"--%>
                    <%--aria-hidden="true"></i>Error 404</a>--%>
                    <%--</li>--%>
                </ul>
                <div class="text-center m-t-30">
                    <%--<a href="#" class="btn btn-danger">Download Here</a>--%>
                </div>
            </nav>
            <!-- End Sidebar navigation -->
        </div>
        <!-- End Sidebar scroll-->
    </aside>
    <!-- ============================================================== -->
    <!-- End Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Page wrapper  -->
    <!-- ============================================================== -->
    <div class="page-wrapper">
        <!-- ============================================================== -->
        <!-- Container fluid  -->
        <!-- ============================================================== -->
        <div class="container-fluid">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="row page-titles">
                <div class="col-md-6 col-8 align-self-center">
                    <h3 class="text-themecolor m-b-0 m-t-0"></h3>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">首页</a></li>
                        <li class="breadcrumb-item active">更新密码</li>
                    </ol>
                </div>
                <div class="col-md-6 col-4 align-self-center">
                    <%--<a href="#" class="btn pull-right hidden-sm-down btn-success">Download Here</a>--%>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Start Page Content -->
            <!-- ============================================================== -->
            <!-- Row -->
            <div class="row">
                <!-- Column -->
                <%--<div class="col-lg-4 col-xlg-3 col-md-5">--%>
                <%--<div class="card">--%>
                <%--<div class="card-block">--%>
                <%--<center class="m-t-30"><img src="assets/images/users/5.jpg" class="img-circle" width="150"/>--%>
                <%--<h4 class="card-title m-t-10">Hanna Gover</h4>--%>
                <%--<h6 class="card-subtitle">Accoubts Manager Amix corp</h6>--%>
                <%--<div class="row text-center justify-content-md-center">--%>
                <%--<div class="col-4"><a href="javascript:void(0)" class="link"><i--%>
                <%--class="icon-people"></i> <font class="font-medium">254</font></a></div>--%>
                <%--<div class="col-4"><a href="javascript:void(0)" class="link"><i--%>
                <%--class="icon-picture"></i> <font class="font-medium">54</font></a></div>--%>
                <%--</div>--%>
                <%--</center>--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--</div>--%>
                <!-- Column -->
                <!-- Column -->
                <div class="col-lg-8 col-xlg-9 col-md-7">
                    <div class="card">
                        <div class="card-block">
                            <form action="/admin/forgotsavepwd" class="form-horizontal form-material"
                                  onsubmit="return checkpwd()" method=post>
                                <div class="form-group">
                                    <label class="col-md-12">账号名</label>
                                    <div class="col-md-12">
                                        <input name="id" value="${admin.id}" type=hidden>
                                        <input type="text" name="name" placeholder="${admin.name}"
                                               class="form-control form-control-line">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="example-email" class="col-md-12">邮箱</label>
                                    <div class="col-md-12">
                                        <input type="email" placeholder="${admin.email}"
                                               class="form-control form-control-line" name="example-email"
                                               id="example-email">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">密码</label>
                                    <div class="col-md-12">
                                        <input type="password" id="p1" name="pwd" value=""
                                               class="form-control form-control-line" required autocomplete="off">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">确认密码</label>
                                    <div class="col-md-12">
                                        <input type="password" id="p2" value="" class="form-control form-control-line"
                                               required autocomplete="off">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <button class="btn btn-success">提交</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- Column -->
            </div>
            <!-- Row -->
            <!-- ============================================================== -->
            <!-- End PAge Content -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Container fluid  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- footer -->
        <!-- ============================================================== -->
        <footer class="footer text-center">
            Copyright © 2019 四川红番茄科技有限公司 版权所有|蜀ICP备17041385号-2
            <%--© 2017 Monster Admin by wrappixel.More Templates <a href="http://www.cssmoban.com/" target="_blank"--%>
            <%--title="模板之家">模板之家</a> - Collect from <a--%>
            <%--href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>--%>
        </footer>
        <!-- ============================================================== -->
        <!-- End footer -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Page wrapper  -->
    <!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- All Jquery -->
<!-- ============================================================== -->
<script src="/assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap tether Core JavaScript -->
<script src="/assets/plugins/bootstrap/js/tether.min.js"></script>
<script src="/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- slimscrollbar scrollbar JavaScript -->
<script src="/js/jquery.slimscroll.js"></script>
<!--Wave Effects -->
<script src="/js/waves.js"></script>
<!--Menu sidebar -->
<script src="/js/sidebarmenu.js"></script>
<!--stickey kit -->
<script src="/assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"></script>
<!--Custom JavaScript -->
<script src="/js/custom.min.js"></script>
<!-- ============================================================== -->
<!-- Style switcher -->
<!-- ============================================================== -->
<script src="/assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
</body>

<script>
    function checkpwd() {
        let p1 = $('#p1').val();
        let p2 = $('#p2').val();
        if (p1 == p2) {
            return true;
        }
        return false;
    }
</script>

</html>
