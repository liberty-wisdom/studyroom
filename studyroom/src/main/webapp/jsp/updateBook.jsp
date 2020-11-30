<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>图书馆管理系统</title>
    <link rel="stylesheet" href="../jsp/assets/css/amazeui.css" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../jsp/assets/css/core.css" />
    <link rel="stylesheet" href="../jsp/assets/css/menu.css" />
    <link rel="stylesheet" href="../jsp/assets/css/index.css" />
    <link rel="stylesheet" href="../jsp/assets/css/admin.css" />
    <link rel="stylesheet" href="../jsp/assets/css/page/typography.css" />
    <link rel="stylesheet" href="../jsp/assets/css/page/form.css" />
    <link rel="bookmark" type="image/x-icon"  href="../jsp/assets/img/1.ico"/>
    <link rel="shortcut icon" href="../jsp/assets/img/1.ico">
</head>
<body>
<!-- Begin page -->
<header class="am-topbar am-topbar-fixed-top">
    <div class="am-topbar-left am-hide-sm-only">
        <a href="index.html" class="logo"><span>Admin<span>to</span></span><i class="zmdi zmdi-layers"></i></a>
    </div>

    <div class="contain">
        <ul class="am-nav am-navbar-nav am-navbar-left">

            <li><h4 class="page-title">表单元素</h4></li>
        </ul>

        <ul class="am-nav am-navbar-nav am-navbar-right">
            <li class="inform"><i class="am-icon-bell-o" aria-hidden="true"></i></li>
            <li class="hidden-xs am-hide-sm-only">
                <form role="search" class="app-search">
                    <input type="text" placeholder="Search..." class="form-control">
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
                    <img src="../../jsp/assets/img/avatar-1.jpg" alt="user-img" title="Mat Helme" class="img-circle img-thumbnail img-responsive">
                    <div class="user-status offline"><i class="am-icon-dot-circle-o" aria-hidden="true"></i></div>
                </div>
                <h5><a href="#">Mat Helme</a> </h5>
                <ul class="list-inline">
                    <li>
                        <a href="#">
                            <i class="am-icon-cog" aria-hidden="true"></i>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="text-custom">
                            <i class="am-icon-cog" aria-hidden="true"></i>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- End User -->

            <ul class="am-list admin-sidebar-list">
                <li><a href="../index.html"><span class="am-icon-home"></span> 首页</a></li>
                <li class="admin-parent">
                    <a class="am-cf" data-am-collapse="{target: '#collapse-nav1'}"><span class="am-icon-table"></span> 表格 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                    <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav1">
                        <li><a href="table_basic.html" class="am-cf"> 基本表格</a></li>
                        <li><a href="table_complete.html">完整表格</a></li>
                    </ul>
                </li>
                <li class="admin-parent">
                    <a class="am-cf" data-am-collapse="{target: '#collapse-nav2'}"><i class="am-icon-line-chart" aria-hidden="true"></i> 统计图表 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                    <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav2">
                        <li><a href="chart_line.html" class="am-cf"> 折线图</a></li>
                        <li><a href="chart_columnar.html" class="am-cf"> 柱状图</a></li>
                        <li><a href="chart_pie.html" class="am-cf"> 饼状图</a></li>
                    </ul>
                </li>
                <li class="admin-parent">
                    <a class="am-cf" data-am-collapse="{target: '#collapse-nav5'}"><span class="am-icon-file"></span> 表单 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                    <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav5">
                        <li><a href="form_basic.html" class="am-cf"> 基本表单</a></li>
                        <li><a href="form_validate.html">表单验证</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!-- sidebar end -->

    <div class="content-page">
        <!-- Start content -->
        <div class="content">
            <div class="am-g">
                <!-- Row start -->
                <div class="am-u-sm-12">
                    <div class="card-box">
                        <ul class="am-nav am-fr">
                            <li class="am-dropdown" data-am-dropdown>
                                <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
                                    <span class="am-icon-caret-down"></span>
                                </a>
                                <ul class="am-dropdown-content">
                                    <li>1231234</li>
                                    <li>1231234</li>
                                    <li>1231234</li>
                                    <li>1231234</li>
                                </ul>
                            </li>
                        </ul>

                        <h4 class="header-title m-t-0 m-b-30">输入框类型</h4>

                        <div class="am-g">
                            <div class="am-u-md-6">
                                <form class="am-form am-text-sm" >
                                    <div class="am-form-group">
                                        <div class="am-g">
                                            <label class="am-u-md-2 am-md-text-right am-padding-left-0" for="doc-ipt-text-1">标题</label>
                                            <input class="am-u-md-10 form-control"  id="doc-ipt-text-1" placeholder="输入标题信息">
                                        </div>
                                    </div>

                                    <div class="am-form-group">
                                        <div class="am-g">
                                            <label class="am-u-md-2 am-md-text-right am-padding-left-0" for="doc-ipt-email-1">电子邮箱</label>
                                            <input class="am-u-md-10 form-control"  id="doc-ipt-email-1" placeholder="输入电子邮件">
                                        </div>
                                    </div>

                                    <div class="am-form-group">
                                        <div class="am-g">
                                            <label class="am-u-md-2 am-md-text-right am-padding-left-0" for="doc-ipt-pwd-1">密码</label>
                                            <input type="password" class="am-u-md-10"   id="doc-ipt-pwd-1" placeholder="设置个密码吧">
                                        </div>
                                    </div>

                                    <div class="am-form-group">
                                        <div class="am-g">
                                            <label class="am-u-md-2 am-md-text-right am-padding-left-0" for="doc-ipt-phd-1">提示</label>
                                            <input class="am-u-md-10 form-control"  id="doc-ipt-phd-1" placeholder="提示信息">
                                        </div>
                                    </div>

                                    <div class="am-form-group">
                                        <div class="am-g">
                                            <label class="am-u-md-2 am-md-text-right am-padding-left-0" for="doc-ta-1">文本域</label>
                                            <textarea class="am-u-md-10 form-control" rows="5" id="doc-ta-1"></textarea>
                                        </div>
                                    </div>
                                </form>
                            </div>

                            <div class="am-u-md-6">
                                <form class="am-form am-text-sm">
                                    <div class="am-form-group">
                                        <div class="am-g">
                                            <label class="am-u-md-2 am-md-text-right" for="doc-ds-ipt-1">禁用</label>
                                            <input class="am-form-field am-u-md-10" type="text" id="doc-ds-ipt-1"  placeholder="禁止输入" disabled>
                                        </div>
                                    </div>

                                    <div class="am-form-group">
                                        <div class="am-g">
                                            <label class="am-u-md-2 am-md-text-right am-padding-left-0" for="doc-ipt-text-2">说明信息</label>
                                            <div class="am-u-md-10 am-padding-0">
                                                <input class="am-u-md-12 form-control am-padding-0"  id="doc-ipt-text-2">
                                                <span class="help-block m-b-none">帮助文本，可能会超过一行，以块级元素显示</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="am-form-group">
                                        <div class="am-g">
                                            <label class="am-u-md-2 am-md-text-right" for="doc-select-1">下拉选框</label>
                                            <select id="doc-select-1">
                                                <option value="option1">选项一...</option>
                                                <option value="option2">选项二.....</option>
                                                <option value="option3">选项三........</option>
                                            </select>
                                            <span class="am-form-caret"></span>
                                        </div>
                                    </div>

                                    <div class="am-form-group">
                                        <div class="am-g">
                                            <label class="am-u-md-2 am-md-text-right" for="doc-select-2">多选框</label>
                                            <div class="am-u-md-10 am-padding-0">
                                                <select multiple class="" id="doc-select-2">
                                                    <option>1</option>
                                                    <option>2</option>
                                                    <option>3</option>
                                                    <option>4</option>
                                                    <option>5</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Row end -->
            </div>
        </div>
    </div>
    <!-- end right Content here -->
    <!--</div>-->
</div>
</div>

<!-- navbar -->
<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>

<script type="text/javascript" src="../jsp/assets/js/jquery-2.1.0.js" ></script>
<script type="text/javascript" src="../jsp/assets/js/amazeui.min.js"></script>
<script type="text/javascript" src="../jsp/assets/js/app.js" ></script>
<script type="text/javascript" src="../jsp/assets/js/blockUI.js" ></script>
</body>

</html>
