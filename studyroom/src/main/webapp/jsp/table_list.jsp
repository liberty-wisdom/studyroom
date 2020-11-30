<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>书籍清单</title>
    <link rel="stylesheet" href="../jsp/assets/css/amazeui.css" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../jsp/assets/css/core.css" />
    <link rel="stylesheet" href="../jsp/assets/css/menu.css" />
    <link rel="stylesheet" href="../jsp/assets/css/index.css" />
    <link rel="stylesheet" href="../jsp/assets/css/admin.css" />
    <link rel="stylesheet" href="../jsp/assets/css/page/typography.css" />
    <link rel="stylesheet" href="../jsp/assets/css/page/form.css" />
    <link rel="bookmark" type="image/x-icon"  href="../jsp/assets/img/1.ico"/>
    <link rel="shortcut icon" href="../jsp/assets/img/1.ico">0
    <script type="text/javascript" src="../jsp/assets/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="../jsp/assets/js/jquery.form.js"></script>
</head>
<body>
<!-- Begin page -->
<header class="am-topbar am-topbar-fixed-top">
    <div class="am-topbar-left am-hide-sm-only">
        <span class="logo" style="font-size: 30px">图书馆管理系统</span><i class="zmdi zmdi-layers"></i>
    </div>
    <div class="contain">
        <ul class="am-nav am-navbar-nav am-navbar-left">
            <li><h4 class="page-title">详细信息</h4></li>
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
                    </ul>
                </li>
                <li class="admin-parent">
                    <a class="am-cf" data-am-collapse="{target: '#collapse-nav2'}"><i class="am-icon-line-chart" aria-hidden="true"></i> 书籍管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                    <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav2">
                        <li><a href="/bookController/findAllLists" class="am-cf"> 详细信息</a></li>
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
    <!-- Start right Content here -->
    <div class="content-page">
        <!-- Start content -->
        <div class="content">
            <div class="card-box">
                <!-- Row start -->
                <div class="am-g">
                    <div class="am-u-sm-12 am-u-md-6">
                        <div class="am-btn-toolbar">
                            <div class="am-btn-group am-btn-group-xs">
                                <button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 新增</button>
                                <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 保存</button>
                                <button type="button" class="am-btn am-btn-default"><span class="am-icon-archive"></span> 审核</button>
                                <button type="button" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> 删除</button>
                            </div>
                        </div>
                    </div>

                    <div class="am-u-sm-12 am-u-md-3">
                        <div class="am-input-group am-input-group-sm">
                            <input type="text" class="am-form-field">
                            <span class="am-input-group-btn">
				            <button class="am-btn am-btn-default" type="button">搜索</button>
				          </span>
                        </div>
                    </div>
                </div>
                <!-- Row end -->

                <!-- Row start -->
                <div class="am-g">
                    <div class="am-u-sm-12">
                        <form class="am-form">
                            <table class="am-table am-table-striped am-table-hover table-main">
                                <thead>
                                <tr>
                                    <th class="table-check"><input type="checkbox" /></th>
                                    <th class="table-id">序号</th>
                                    <th class="table-title">名称</th>
                                    <th class="table-type">价格</th>
                                    <th class="table-author am-hide-sm-only">作者</th>
                                    <th class="table-author am-hide-sm-only">译者</th>
                                    <th class="table-date am-hide-sm-only">数量</th>
                                    <th class="table-date am-hide-sm-only">出版社</th>
                                    <th class="table-date am-hide-sm-only">出版时间</th>
                                    <th class="table-date am-hide-sm-only">类型</th>
                                    <th class="table-set">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${allLists}" var="allLists">
                                        <tr>
                                            <td><input type="checkbox" /></td>
                                            <td>${allLists.id}</td>
                                            <td><a href="#">${allLists.bookname}</a></td>
                                            <td>${allLists.price}</td>
                                            <td class="am-hide-sm-only">${allLists.author}</td>
                                            <td class="am-hide-sm-only">${allLists.translator}</td>
                                            <td class="am-hide-sm-only">${allLists.booknum}</td>
                                            <td class="am-hide-sm-only">${allLists.publisher}</td>
                                            <td class="am-hide-sm-only">${allLists.publicationtime}</td>
                                            <td class="am-hide-sm-only">${allLists.type}</td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                                        <button class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 复制</button>
                                                        <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <div class="am-cf">
                                共 15 条记录
                                <div class="am-fr">
                                    <ul class="am-pagination">
                                        <li class="am-disabled"><a href="#">«</a></li>
                                        <li class="am-active"><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>
                                        <li><a href="#">»</a></li>
                                    </ul>
                                </div>
                            </div>
                            <hr />
                            <p>注：.....</p>
                        </form>
                    </div>
                </div>
                <!-- Row end -->
            </div>
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
