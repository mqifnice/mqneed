<!DOCTYPE html>

<head>
    <%@ page language="java" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->

    <link rel="icon" type="image/png" sizes="16x16" href="/image/kodinger.png">
    <title></title>
    <!-- Bootstrap Core CSS -->
    <link href="/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/bootstrap-table.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/css/style.css" rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href="/css/colors/blue.css" id="theme" rel="stylesheet">
    <link href="/css/customer.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>


    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="fix-header fix-sidebar card-no-border">
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
                        <img src="/image/kodinger.png" style="height: 33px; width: 34px;" alt="homepage"
                             class="dark-logo"/>

                    </b>
                    <!--End Logo icon -->
                    <!-- Logo text -->
                    <span>
                            <!-- dark Logo text -->
                                                   <text>红番茄&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</text>

                            <%--<img src="/assets/images/logo-text.png" alt="homepage" class="dark-logo"/>--%>
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
                    <li class="nav-item"><a class="nav-link nav-toggler hidden-md-up text-muted waves-effect waves-dark"
                                            href="javascript:void(0)"><i class="ti-menu"></i></a></li>
                    <li class="nav-item hidden-sm-down">
                        <form class="app-search p-l-20">
                            <%--<input type="text" class="form-control" placeholder="Search for..."> <a class="srh-btn"><i--%>
                            <%--class="ti-search"></i></a>--%>
                        </form>
                    </li>
                </ul>
                <!-- ============================================================== -->
                <!-- User profile and search -->
                <!-- ============================================================== -->
                <ul class="navbar-nav my-lg-0">
                    <li class="nav-item dropdown">
                        <%--Markarn Doe--%>
                        ${adminname}
                        <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="/admin/logout"
                        <%--data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"--%>
                        >
                            [注销]
                            <%--<img--%>
                            <%--src="/assets/images/users/1.jpg" alt="user" class="profile-pic m-r-5"/>--%>
                        </a>
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
                    <li>
                        <a href="/admin/login" class="waves-effect"><i class="fa fa-table m-r-10"
                                                                       aria-hidden="true"></i>设备列表</a>
                    </li>
                    <li>
                        <a href="" class="waves-effect"><i class="fa fa-clock-o m-r-10" aria-hidden="true"></i>详情</a>
                    </li>
                    <li>
                        <a href="/admin/user" class="waves-effect"><i class="fa fa-user m-r-10" aria-hidden="true"></i>账户</a>
                    </li>
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
                    <h3 class="text-themecolor m-b-0 m-t-0">详情</h3>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">首页</a></li>
                        <li class="breadcrumb-item active">详情</li>
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
                <div class="col-sm-6">
                    <div class="card">
                        <div class="card-block">
                            <h4 class="card-title">配置信息</h4>
                            <div class="row">
                                <div class="col-sm-2">
                                    <div>序列号：</div>
                                    <%--<div>PN：${tempdeatil.pn}</div>--%>
                                    <%--<div>VER：${tempdeatil.ver}</div>--%>
                                    <div>启动模式：</div>
                                    <div>&nbsp;</div>
                                    <div>&nbsp;</div>

                                </div>
                                <div class="col-sm-4">
                                    <div>${tempdeatil.deviceno}</div>
                                    <%--<div>PN：${tempdeatil.pn}</div>--%>
                                    <%--<div>VER：${tempdeatil.ver}</div>--%>
                                    <div>${startmode}</div>
                                    <div>&nbsp;</div>
                                </div>
                                <div class="col-sm-2">
                                    <div>启动延时：
                                    </div>
                                    <div>记录周期：</div>
                                    <div>记录间隔：
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div><fmt:formatNumber value="${tempdeatil.startdelay/60}"
                                    />分
                                    </div>
                                    <div>${recordcycle}</div>
                                    <div><fmt:formatNumber value="${tempdeatil.recordinterval/60}"
                                    /> 分
                                    </div>
                                </div>
                            </div>


                            <%--<div class="text-right">--%>
                            <%--<h2 class="font-light m-b-0"><i class="ti-arrow-up text-success"></i> $120</h2>--%>
                            <%--<span class="text-muted">Todays Income</span>--%>
                            <%--</div>--%>
                            <%--<span class="text-success">80%</span>--%>
                            <%--<div class="progress">--%>
                            <%--<div class="progress-bar bg-success" role="progressbar" style="width: 80%; height: 6px;"--%>
                            <%--aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>--%>
                            <%--</div>--%>
                        </div>
                    </div>
                </div>
                <!-- Column -->
                <!-- Column -->
                <div class="col-sm-6">
                    <div class="card">
                        <div class="card-block">
                            <h4 class="card-title">记录概要</h4>

                            <div class="row">
                                <div class="col-sm-2">
                                    <div>启动时间：</div>
                                    <div>停止时间：</div>
                                    <div>记录时长：</div>
                                    <div>数据点：</div>
                                </div>
                                <div class="col-sm-4">

                                    <div>${starttime}</div>
                                    <div>${stoptime}</div>
                                    <div>${stopmode}</div>
                                    <div>${tempdeatil.logTime}</div>
                                    <div>${tempdeatil.point}</div>

                                </div>
                                <div class="col-sm-2">
                                    <div>最高：
                                    </div>
                                    <div>最低：
                                    </div>
                                    <div>平均：
                                    </div>
                                    <div>MKT：
                                    </div>
                                </div>
                                <div class="col-sm-4">

                                    <div><fmt:formatNumber value="${tempdeatil.max}" pattern="#.#"
                                                           type="number"/>℃
                                    </div>
                                    <div><fmt:formatNumber value="${tempdeatil.min}" pattern="#.#"
                                                           type="number"/>℃
                                    </div>
                                    <div><fmt:formatNumber value="${tempdeatil.avg}" pattern="#.#"
                                                           type="number"/>℃
                                    </div>
                                    <div><fmt:formatNumber value="${tempdeatil.mkt}" pattern="#.#"
                                                           type="number"/>℃
                                    </div>

                                </div>
                            </div>
                            <%--<div class="text-right">--%>
                            <%--<h2 class="font-light m-b-0"><i class="ti-arrow-up text-info"></i> $5,000</h2>--%>
                            <%--<span class="text-muted">Todays Income</span>--%>
                            <%--</div>--%>
                            <%--<span class="text-info">30%</span>--%>
                            <%--<div class="progress">--%>
                            <%--<div class="progress-bar bg-info" role="progressbar" style="width: 30%; height: 6px;"--%>
                            <%--aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>--%>
                            <%--</div>--%>
                        </div>
                    </div>
                </div>
                <!-- Column -->
            </div>
            <!-- Row -->
            <!-- Row -->
            <div class="row">
                <!-- column -->
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-block">
                            <h4 class="card-title">单位【℃】</h4>
                            <div class="flot-chart">
                                <div class="flot-chart-content" id="flot-line-chart"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- column -->
            </div>
            <!-- Row -->
            <!-- Row -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-block">
                            <%--<select class="custom-select pull-right">--%>
                            <%--<option selected>January</option>--%>
                            <%--<option value="1">February</option>--%>
                            <%--<option value="2">March</option>--%>
                            <%--<option value="3">April</option>--%>
                            <%--</select>--%>
                            <%--<h4 class="card-title">Projects of the Month</h4>--%>
                            <table id="mytable" class="table stylish-table">
                            </table>
                            <%--<div class="table-responsive m-t-40 templist">--%>
                            <%----%>
                            <%--</div>--%>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Row -->
            <!-- Row -->
            <%--<div class="row">--%>
            <%--<!-- Column -->--%>
            <%--<div class="col-lg-4">--%>
            <%--<div class="card">--%>
            <%--<img class="card-img-top img-responsive" src="/assets/images/big/img1.jpg" alt="Card">--%>
            <%--<div class="card-block">--%>
            <%--<ul class="list-inline font-14">--%>
            <%--<li class="p-l-0">20 May 2016</li>--%>
            <%--<li><a href="javascript:void(0)" class="link">3 Comment</a></li>--%>
            <%--</ul>--%>
            <%--<h3 class="font-normal">Featured Hydroflora Pots Garden &amp; Outdoors</h3>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<!-- Column -->--%>
            <%--<!-- Column -->--%>
            <%--<div class="col-lg-4">--%>
            <%--<div class="card">--%>
            <%--<img class="card-img-top img-responsive" src="/assets/images/big/img2.jpg" alt="Card">--%>
            <%--<div class="card-block">--%>
            <%--<ul class="list-inline font-14">--%>
            <%--<li class="p-l-0">20 May 2016</li>--%>
            <%--<li><a href="javascript:void(0)" class="link">3 Comment</a></li>--%>
            <%--</ul>--%>
            <%--<h3 class="font-normal">Featured Hydroflora Pots Garden &amp; Outdoors</h3>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<!-- Column -->--%>
            <%--<!-- Column -->--%>
            <%--<div class="col-lg-4">--%>
            <%--<div class="card">--%>
            <%--<img class="card-img-top img-responsive" src="/assets/images/big/img4.jpg" alt="Card">--%>
            <%--<div class="card-block">--%>
            <%--<ul class="list-inline font-14">--%>
            <%--<li class="p-l-0">20 May 2016</li>--%>
            <%--<li><a href="javascript:void(0)" class="link">3 Comment</a></li>--%>
            <%--</ul>--%>
            <%--<h3 class="font-normal">Featured Hydroflora Pots Garden &amp; Outdoors</h3>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<!-- Column -->--%>
            <%--</div>--%>
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
            <%--© 2017 Monster Admin by wrappixel.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>--%>
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
<!-- This page plugins -->
<!-- ============================================================== -->
<!-- Flot Charts JavaScript -->
<script src="/assets/plugins/flot/jquery.flot.js"></script>
<script src="/assets/plugins/flot/jquery.flot.axislabels.js"></script>
<script src="/assets/plugins/flot.tooltip/js/jquery.flot.tooltip.js"></script>
<script src="/js/flot-data.js"></script>
<!-- ============================================================== -->
<!-- Style switcher -->
<!-- ============================================================== -->
<script src="/assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
<script src="/js/bootstrap-table.js"></script>
<script src="/js/bootstrap-table-zh-CN.js"></script>
</body>

<script>
    function init() {
        $('#mytable').bootstrapTable({
            url: '<c:url  value="/tempdetail/templist?id=${tempdeatil.id}" />',
            pageNumber: 1, //初始化加载第一页
            pagination: true,//是否分页
            sidePagination: 'client',//server:服务器端分页|client：前端分页
            pageSize: 10,//单页记录数
            pageList: [10],//可选择单页记录数
            showRefresh: false,//刷新按钮
            queryParams: function (params) {//上传服务器的参数
                var temp = {//如果是在服务器端实现分页，limit、offset这两个参数是必须的
                    limit: params.limit, // 每页显示数量
                    offset: params.offset, // SQL语句起始索引
                    //page : (params.offset / params.limit) + 1, //当前页码
                };
                return temp;
            }
            ,
            toolbar: "#toolbar",
            paginationDetailHAlign: ' hidden',
            // sidePagination: "true",
            striped: true, // 是否显示行间隔色
            //search : "true",
            uniqueId: "ID",
            // pageSize: "5",
            // pagination: true, // 是否分页
            sortable: false, // 是否启用排序
            columns: [
                {
                    field: 'id1',
                    title: '#'
                },
                {
                    field: 'time1',
                    title: '时间'
                },
                {
                    field: 'temp1',
                    title: '温度'
                },
                {
                    field: 'id2',
                    title: '#'
                },
                {
                    field: 'time2',
                    title: '时间'
                },
                {
                    field: 'temp2',
                    title: '温度'
                },
                {
                    field: 'id3',
                    title: '#'
                },
                {
                    field: 'time3',
                    title: '时间'
                },
                {
                    field: 'temp3',
                    title: '温度'
                },
                {
                    field: 'id4',
                    title: '#'
                },
                {
                    field: 'time4',
                    title: '时间'
                },
                {
                    field: 'temp4',
                    title: '温度'
                },


            ]
        });
    }

    $(document).ready(function () {
        init();
        // $('#mytable').bootStrapTable('refresh');
        console.log("document ready");
        var offset = 0;
        plot();

        function plot() {
            // console.log();
            let lm = [];
            let temps = ${tempdeatil.templist};
            var sin = [];
            let arr = [];

            <c:forEach items="${lm}" var="item" varStatus="status" >
            sin.push([${status.count}, ${item.temp}, '${item.time}']);
            arr.push([${status.count}, '${item.time}']);
            </c:forEach>


            var options = {
                series: {
                    lines: {
                        show: true
                    },
                    points: {
                        // show: true
                    }
                },
                grid: {
                    hoverable: true //IMPORTANT! this is needed for tooltip to work
                },
                yaxis: {
                    min: ${tempdeatil.min}-5,
                    max: ${tempdeatil.max}+5
                },
                colors: ["#009efb", "#55ce63"],
                grid: {
                    color: "#AFAFAF",
                    hoverable: true,
                    borderWidth: 0,
                    backgroundColor: '#FFF'
                },
                xaxis: {
                    ticks: x_label(arr, 6),

                },
                axisLabels: {
                    show: true
                },
                xaxes: [{
                    axisLabel: '',
                }],
                yaxes: [{
                    position: 'left',
                    axisLabel: '',
                }, {
                    position: 'right',
                    axisLabel: 'bleem'
                }],
                tooltip: true,
                tooltipOpts: {
                    content: "   温度： %y.1 ℃",
                    shifts: {
                        x: -60,
                        y: 25
                    }
                }
            };
            var plotObj = $.plot($("#flot-line-chart"), [{
                data: sin
                // label: "sin(x)",
            }], options);
        }

    });

    function x_label(data, max) {
        let label = [];
        if (data.length > max) {
            let end = data.length - 1,
                index = 0;
            $.each(data, function (i, k) {
                if (Math.floor(i / (end / max)) == index) {
                    // console.log(i + "he  " + k);
                    label.push([i, k[1]]);
                    index++;
                }

            });
        } else {
            return data;
        }
        return label;
    }


</script>
</html>
