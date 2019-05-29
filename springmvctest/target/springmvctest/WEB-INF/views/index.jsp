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
    <link href="/css/bootstrap-table.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/css/style.css" rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href="/css/colors/blue.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <link href="/css/bootstrap-table-filter-control.css" rel="stylesheet">

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
                        <img src="/image/kodinger.png" style="height: 33px; width: 34px;" alt="homepage"
                             class="dark-logo"/>

                    </b>
                    <!--End Logo icon -->
                    <!-- Logo text -->
                    <span>
                            <!-- dark Logo text -->
                           <text>红番茄&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</text>
                            <%--<img src="/assets/images/logo-text.png" alt="homepage" class="dark-logo" />--%>
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
                        <a href="#" class="waves-effect"><i class="fa fa-table m-r-10" aria-hidden="true"></i>设备列表</a>
                    </li>
                    <%--<li>--%>
                    <%--<a href="/device/detail" class="waves-effect"><i class="fa fa-clock-o m-r-10"--%>
                    <%--aria-hidden="true"></i>详情</a>--%>
                    <%--</li>--%>
                    <li>
                        <a href="/admin/user" class="waves-effect"><i class="fa fa-user m-r-10" aria-hidden="true"></i>账户</a>
                    </li>

                    <%--<li>--%>
                    <%--<a href="icon-fontawesome.html" class="waves-effect"><i class="fa fa-font m-r-10" aria-hidden="true"></i>Icons</a>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                    <%--<a href="map-google.homepagehomepagehometml" class="waves-effect"><i class="fa fa-globe m-r-10" aria-hidden="true"></i>Google Map</a>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                    <%--<a href="pages-blank.html" class="waves-effect"><i class="fa fa-columns m-r-10" aria-hidden="true"></i>Blank Page</a>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                    <%--<a href="pages-error-404.html" class="waves-effect"><i class="fa fa-info-circle m-r-10" aria-hidden="true"></i>Error 404</a>--%>
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
                    <%--<h3 class="text-themecolor m-b-0 m-t-0">Table</h3>--%>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">首页</a></li>
                        <li class="breadcrumb-item active">列表</li>
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
            <div class="row">
                <!-- column -->
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-block">
                            <%--<h4 class="card-title">Basic Table</h4>--%>
                            <%--<h6 class="card-subtitle">Add class <code>.table</code></h6>--%>
                            <div class="table-responsive">
                                <table id="mytable" class="table" data-show-refresh="true">
                                    <%--<thead>--%>
                                    <%--<tr>--%>
                                    <%--<th>#</th>--%>
                                    <%--<th>设备</th>--%>
                                    <%--<th>记录点</th>--%>
                                    <%--<th>最高温</th>--%>
                                    <%--<th>最低温</th>--%>
                                    <%--<th>上传人</th>--%>
                                    <%--<th>上传时间</th>--%>
                                    <%--</tr>--%>
                                    <%--</thead>--%>
                                    <%--<tbody>--%>
                                    <%--<tr class='detail' tom='1'>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td>BL0000001</td>--%>
                                    <%--<td>1351</td>--%>
                                    <%--<td>35℃</td>--%>
                                    <%--<td>8℃</td>--%>
                                    <%--<td>tom</td>--%>
                                    <%--<td>2019/5/4 21:17</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr class='detail' tom='1'>--%>
                                    <%--<td>2</td>--%>
                                    <%--<td>BL0000001</td>--%>
                                    <%--<td>1351</td>--%>
                                    <%--<td>35℃</td>--%>
                                    <%--<td>8℃</td>--%>
                                    <%--<td>tom</td>--%>
                                    <%--<td>2019/5/4 21:17</td>--%>
                                    <%--</tr>--%>


                                    <%--</tbody>--%>
                                </table>
                                <%--<li class=""><a href="">首页</a>--%>
                                <%--<a href="">上一页</a>--%>
                                <%--<span class="tP">1</span>--%>
                                <%--<a href="">2</a>--%>
                                <%--<a href="">3</a>--%>
                                <%--<a href="">4</a>--%>
                                <%--<a href="">5</a>--%>
                                <%--<a href="">6</a>--%>
                                <%--<a href="">下一页</a>--%>
                                <%--<a href="">尾页</a>--%>
                                <%--</li>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
<script src="/js/bootstrap-table.js"></script>
<script src="/js/bootstrap-table-zh-CN.js"></script>


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
<script src="/js/bootstrap-table-filter-control.js"></script>


</body>
<script>
    $('.detail').dblclick(function (e) {

        console.log(e);
        console.log(this);
        alert($(this).attr('tom'));

        // alert( $(e).find('td').firstChild.attr('tom'));
        window.location.href = '/device/detail'
    });

    function init() {
        $('#mytable').bootstrapTable({
            url: '<c:url  value="/tempdetail/list" />',
            pageNumber: 1, //初始化加载第一页
            pagination: true,//是否分页
            sidePagination: 'client',//server:服务器端分页|client：前端分页
            pageSize: 10,//单页记录数
            pageList: [5, 10, 20, 30],//可选择单页记录数
            showRefresh: true,//刷新按钮
            queryParams: function (params) {//上传服务器的参数
                var temp = {//如果是在服务器端实现分页，limit、offset这两个参数是必须的
                    limit: params.limit, // 每页显示数量
                    offset: params.offset, // SQL语句起始索引
                    //page : (params.offset / params.limit) + 1, //当前页码
                };
                return temp;
            }
            ,
            // toolbar: "#toolbar",
            // sidePagination: "true",
            striped: true, // 是否显示行间隔色
            //search : "true",
            uniqueId: "ID",
            // filterControl: true,
            // filterShowClear: true,
            // pageSize: "5",
            // pagination: true, // 是否分页
            sortable: false, // 是否启用排序
            columns: [
                {
                    title: '序号',
                    field: '',
                    align: 'center',
                    formatter: function (value, row, index) {
                        var pageSize = $('#mytable').bootstrapTable('getOptions').pageSize;     //通过table的#id 得到每页多少条
                        var pageNumber = $('#mytable').bootstrapTable('getOptions').pageNumber; //通过table的#id 得到当前第几页
                        // console.log(pageNumber);
                        // console.log(pageSize);
                        // console.log(index);
                        // return pageSize * (pageNumber - 1) + index + 1;    // 返回每条的序号： 每页条数 *（当前页 - 1 ）+ 序号
                        return index + 1;    // 返回每条的序号： 每页条数 *（当前页 - 1 ）+ 序号

                    }
                }
                ,
                // {
                //     field: 'id',
                //     title: '#'
                // },
                {
                    field: 'deviceno',
                    title: '设备'
                    ,

                    filterControl: 'input'
                },
                {
                    field: 'point',
                    title: '记录点'
                }

                , {
                    field: 'logTime',
                    title: '记录时长'
                }, {
                    field: 'max',
                    title: '最高温'
                }, {
                    field: 'min',
                    title: '最低温'
                }, {
                    field: 'nickname',
                    title: '上传人'
                },

                {
                    field: 'othername',
                    title: '设备描述'
                }, {
                    field: 'uptime',
                    title: '上传时间',
                    width: 200,
                    formatter: function (value, row, index) {
                        let d = new Date(value);
                        return d.pattern("yyyy-MM-dd hh:mm:ss")
                    }
                },
                {
                    field: 'price',
                    title: '操作',
                    width: 200,
                    align: 'center',
                    valign: 'middle',
                    formatter: actionFormatter,
                },

            ]
        });
    }


    //操作栏的格式化
    function actionFormatter(value, row, index) {
        var id = row.id;
        var result = "";
        result += "<a href='javascript:;' class='btn btn-xs btn-primary' onclick=\"ViewById('" + id + "', view='view')\" title='查看'><span class='glyphicon glyphicon-search'>查看</span></a>";
        // result += "<a href='javascript:;' class='btn btn-xs blue' onclick=\"EditById('" + id + "')\" title='编辑'><span class='glyphicon glyphicon-pencil'>编辑</span></a>";
        result += "<a href='javascript:;' class='btn btn-xs btn-danger' onclick=\"DeleteByIds('" + id + "')\" title='删除'><span class='glyphicon glyphicon-remove'>删除</span></a>";
        return result;
    }

    function ViewById(id) {
        // window.top.openIframe("/device/detail", " ");
        window.location.href = "/tempdetail/detail?id=" + id;
    }

    function EditById(id) {

    }

    function DeleteByIds(id) {
        var res = confirm("确认删除这条数据么？");

        if (res == true) {

            // document.write("你点击了确定");
            $.post("/tempdetail/del", {"id": id}, function (data) {
                $('#mytable').bootstrapTable('refresh');
                alert("删除成功");
            })

        } else {

            // document.write("你点击了取消");

        }
    }

    $(document).ready(function () {
        init();
        // $('#mytable').bootStrapTable('refresh');
    })

    Date.prototype.pattern = function (fmt) {
        var o = {
            "M+": this.getMonth() + 1, //月份
            "d+": this.getDate(), //日
            "h+": this.getHours() % 12 == 0 ? 12 : this.getHours() % 12, //小时
            "H+": this.getHours(), //小时
            "m+": this.getMinutes(), //分
            "s+": this.getSeconds(), //秒
            "q+": Math.floor((this.getMonth() + 3) / 3), //季度
            "S": this.getMilliseconds() //毫秒
        };
        var week = {
            "0": "/u65e5",
            "1": "/u4e00",
            "2": "/u4e8c",
            "3": "/u4e09",
            "4": "/u56db",
            "5": "/u4e94",
            "6": "/u516d"
        };
        if (/(y+)/.test(fmt)) {
            fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        }
        if (/(E+)/.test(fmt)) {
            fmt = fmt.replace(RegExp.$1, ((RegExp.$1.length > 1) ? (RegExp.$1.length > 2 ? "/u661f/u671f" : "/u5468") : "") + week[this.getDay() + ""]);
        }
        for (var k in o) {
            if (new RegExp("(" + k + ")").test(fmt)) {
                fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
            }
        }
        return fmt;
    }
</script>
</html>
