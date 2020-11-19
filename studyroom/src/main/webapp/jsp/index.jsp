<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>自习室管理系统</title>
    <link rel="stylesheet" href="../jsp/assets/css/amazeui.css" />
    <link rel="stylesheet" href="../jsp/assets/css/core.css" />
    <link rel="stylesheet" href="../jsp/assets/css/menu.css" />
    <link rel="stylesheet" href="../jsp/assets/css/index.css" />
    <link rel="stylesheet" href="../jsp/assets/css/admin.css" />
    <link rel="stylesheet" href="../jsp/assets/css/page/typography.css" />
    <link rel="stylesheet" href="../jsp/assets/css/page/form.css" />
    <link rel="stylesheet" href="../jsp/assets/css/component.css" />
    <link rel="bookmark" type="image/x-icon"  href="../jsp/assets/img/1.ico"/>
    <link rel="shortcut icon" href="../jsp/assets/img/1.ico">
</head>
<body>
<!-- Begin page -->
<header class="am-topbar am-topbar-fixed-top">
    <div class="am-topbar-left am-hide-sm-only">
        <span class="logo" style="font-size: 30px">图书馆管理系统</span><i class="zmdi zmdi-layers"></i>
    </div>

    <div class="contain">
        <ul class="am-nav am-navbar-nav am-navbar-left">

            <li><h4 class="page-title">座位状态</h4></li>
        </ul>

        <ul class="am-nav am-navbar-nav am-navbar-right">
            <li class="inform"><i class="am-icon-bell-o" aria-hidden="true"></i></li>
            <li class="hidden-xs am-hide-sm-only">
                <form role="search" class="app-search">
                    <input type="text" placeholder="搜索..." class="form-control">
                    <a href=""><img src="../jsp/assets/img/search.png"></a>
                </form>
            </li>
        </ul>
    </div>
</header>
<!-- end page -->


<div class="admin">
    <div class="admin-sidebar am-offcanvas  am-padding-0" id="admin-offcanvas">
        <div class="am-offcanvas-bar admin-offcanvas-bar">
            <!-- User -->
            <div class="user-box am-hide-sm-only">
                <div class="user-img">
                    <img src="../jsp/assets/img/avatar-3.jpg" alt="user-img" title="Mat Helme" class="img-circle img-thumbnail img-responsive">
                    <div class="user-status offline"><i class="am-icon-dot-circle-o" aria-hidden="true"></i></div>
                </div>
                <h5><a href="#">欢迎您，${name}</a> </h5>
                <a href="/managerController/droplogin"><h5 style="color: #3bb4f2">退出登录</h5></a>
                <ul class="list-inline">
                    <li>
                        <a href="#">
                            <i class="fa fa-cog" aria-hidden="true"></i>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="text-custom">
                            <i class="fa fa-cog" aria-hidden="true"></i>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- End User -->

            <ul class="am-list admin-sidebar-list">
                <li><a href="/managerController/toshow"><span class="am-icon-home"></span> 首页</a></li>
                <li class="admin-parent">
                    <a class="am-cf" data-am-collapse="{target: '#collapse-nav1'}"><span class="am-icon-table"></span> 权限管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                    <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav1">
                        <li><a href="html/table_basic.html" class="am-cf"> 用户管理</a></li>
                        <li><a href="html/table_basic.html" class="am-cf"> 权限管理</a></li>
                        <li><a href="html/table_basic.html" class="am-cf"> 新增用户</a></li>
                    </ul>
                </li>
                <li class="admin-parent">
                    <a class="am-cf" data-am-collapse="{target: '#collapse-nav2'}"><i class="am-icon-line-chart" aria-hidden="true"></i> 统计图表 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                    <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav2">
                        <li><a href="html/chart_line.html" class="am-cf"> 折线图</a></li>
                    </ul>
                </li>
                <li class="admin-parent">
                    <a class="am-cf" data-am-collapse="{target: '#collapse-nav5'}"><span class="am-icon-file"></span> 表单 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                    <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav5">
                        <li><a href="html/form_basic.html" class="am-cf"> 基本表单</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="content-page">
        <!-- Start content -->
        <div class="content">
            <div class="am-g">
                <!-- Row start -->
                <div class="am-u-md-3">
                    <div class="card-box widget-user">
                        <div>
                            <img src="../jsp/assets/img/avatar-3.jpg" class="img-responsive img-circle" alt="user">
                            <div class="wid-u-info">
                                <h4 class="m-t-0 m-b-5 font-600">所有藏书</h4>
                                <p class="text-muted m-b-5 font-13">数量</p>
                                <small class="text-warning"><b>${num}</b></small>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- col end -->
                <div class="am-u-md-3">
                    <div class="card-box widget-user">
                        <div>
                            <img src="../jsp/../jsp/assets/img/avatar-2.jpg" class="img-responsive img-circle" alt="user">
                            <div class="wid-u-info">
                                <h4 class="m-t-0 m-b-5 font-600">Chadengle</h4>
                                <p class="text-muted m-b-5 font-13">coderthemes@gmail.com</p>
                                <small class="text-custom"><b>网络组主管</b></small>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- col end -->
                <div class="am-u-md-3">
                    <div class="card-box widget-user">
                        <div>
                            <img src="../jsp/assets/img/avatar-4.jpg" class="img-responsive img-circle" alt="user">
                            <div class="wid-u-info">
                                <h4 class="m-t-0 m-b-5 font-600">Chadengle</h4>
                                <p class="text-muted m-b-5 font-13">coderthemes@gmail.com</p>
                                <small class="text-success"><b>设计师</b></small>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- col end -->
                <div class="am-u-md-3">
                    <div class="card-box widget-user">
                        <div>
                            <img src="../jsp/assets/img/avatar-10.jpg" class="img-responsive img-circle" alt="user">
                            <div class="wid-u-info">
                                <h4 class="m-t-0 m-b-5 font-600">Chadengle</h4>
                                <p class="text-muted m-b-5 font-13">coderthemes@gmail.com</p>
                                <small class="text-info"><b>开发者</b></small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Row start -->
            <div class="am-g">
                <!-- col start -->
                <div class="am-u-md-4">
                    <div class="card-box">
                        <h4 class="header-title m-t-0 m-b-30">收件箱</h4>
                        <div class="inbox-widget nicescroll" style="height: 315px; overflow: hidden; outline: none;" tabindex="5000">
                            <a href="#">
                                <div class="inbox-item">
                                    <div class="inbox-item-img"><img src="../jsp/assets/img/avatar-1.jpg" class="img-circle" alt=""></div>
                                    <p class="inbox-item-author">Chadengle</p>
                                    <p class="inbox-item-text">Hey! there I'm available...</p>
                                    <p class="inbox-item-date">13:40 PM</p>
                                </div>
                            </a>
                            <a href="#">
                                <div class="inbox-item">
                                    <div class="inbox-item-img"><img src="../jsp/../jsp/assets/img/avatar-2.jpg" class="img-circle" alt=""></div>
                                    <p class="inbox-item-author">Shahedk</p>
                                    <p class="inbox-item-text">Hey! there I'm available...</p>
                                    <p class="inbox-item-date">10:15 AM</p>
                                </div>
                            </a>
                            <a href="#">
                                <div class="inbox-item">
                                    <div class="inbox-item-img"><img src="../jsp/assets/img/avatar-10.jpg" class="img-circle" alt=""></div>
                                    <p class="inbox-item-author">Tomaslau</p>
                                    <p class="inbox-item-text">I've finished it! See you so...</p>
                                    <p class="inbox-item-date">13:34 PM</p>
                                </div>
                            </a>
                            <a href="#">
                                <div class="inbox-item">
                                    <div class="inbox-item-img"><img src="../jsp/assets/img/avatar-4.jpg" class="img-circle" alt=""></div>
                                    <p class="inbox-item-author">Stillnotdavid</p>
                                    <p class="inbox-item-text">This theme is awesome!</p>
                                    <p class="inbox-item-date">13:17 PM</p>
                                </div>
                            </a>
                            <a href="#">
                                <div class="inbox-item">
                                    <div class="inbox-item-img"><img src="../jsp/assets/img/avatar-5.jpg" class="img-circle" alt=""></div>
                                    <p class="inbox-item-author">Kurafire</p>
                                    <p class="inbox-item-text">Nice to meet you</p>
                                    <p class="inbox-item-date">12:20 PM</p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- col end -->

                <!-- col start -->
                <div class="am-u-md-8">
                    <div class="card-box">
                        <h4 class="header-title m-t-0 m-b-30">最新项目</h4>
                        <div class="am-scrollable-horizontal am-text-ms" style="font-family: '微软雅黑';">
                            <table class="am-table   am-text-nowrap">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>项目名称</th>
                                    <th>开始时间</th>
                                    <th>结束时间</th>
                                    <th>状态</th>
                                    <th>责任人</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Adminto Admin v1</td>
                                    <td>01/01/2016</td>
                                    <td>26/04/2016</td>
                                    <td><span class="label label-danger">已发布</span></td>
                                    <td>Coderthemes</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Adminto Frontend v1</td>
                                    <td>01/01/2016</td>
                                    <td>26/04/2016</td>
                                    <td><span class="label label-success">已发布</span></td>
                                    <td>Adminto admin</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Adminto Admin v1.1</td>
                                    <td>01/05/2016</td>
                                    <td>10/05/2016</td>
                                    <td><span class="label label-pink">未开展</span></td>
                                    <td>Coderthemes</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Adminto Frontend v1.1</td>
                                    <td>01/01/2016</td>
                                    <td>31/05/2016</td>
                                    <td><span class="label label-purple">进行中</span>
                                    </td>
                                    <td>Adminto admin</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Adminto Admin v1.3</td>
                                    <td>01/01/2016</td>
                                    <td>31/05/2016</td>
                                    <td><span class="label label-warning">即将开始</span></td>
                                    <td>Coderthemes</td>
                                </tr>

                                <tr>
                                    <td>6</td>
                                    <td>Adminto Admin v1.3</td>
                                    <td>01/01/2016</td>
                                    <td>31/05/2016</td>
                                    <td><span class="label label-primary">即将开始</span></td>
                                    <td>Adminto admin</td>
                                </tr>

                                <tr>
                                    <td>7</td>
                                    <td>Adminto Admin v1.3</td>
                                    <td>01/01/2016</td>
                                    <td>31/05/2016</td>
                                    <td><span class="label label-primary">即将开始</span></td>
                                    <td>Adminto admin</td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- col end -->
            </div>
        </div>
    </div>
</div>
</div>

<!-- navbar -->
<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>

<script type="text/javascript" src="../jsp/assets/js/jquery-2.1.0.js" ></script>
<script type="text/javascript" src="../jsp/assets/js/amazeui.min.js"></script>
<script type="text/javascript" src="../jsp/assets/js/app.js" ></script>
<script type="text/javascript" src="../jsp/assets/js/blockUI.js" ></script>
<script type="text/javascript" src="../jsp/assets/js/charts/echarts.min.js" ></script>
<script type="text/javascript" src="../jsp/assets/js/charts/indexChart.js" ></script>

</body>

</html>
