<%--
  Created by IntelliJ IDEA.
  User: 齑粉玥
  Date: 2021/2/5
  Time: 20:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员页</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/管理员页/styles.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
</head>
<body>
<div id="base" class="">

    <!-- Unnamed (图片) -->
    <div id="u63" class="ax_default image">
        <img id="u63_img" class="img " src="images/管理员页/u63.png"/>
    </div>

    <!-- 导航 (组 合) -->
    <div id="u64" class="ax_default" data-label="导航" data-left="-196" data-top="0" data-width="1740" data-height="56">

        <!-- Unnamed (矩形) -->
        <div id="u65" class="ax_default box_2" >
            <div id="u65_div" class=""></div>
        </div>

        <!-- 主页按钮 (图片) -->
        <div id="u66" class="ax_default _图片" onclick="javascript:window.location.href='HomePage.jsp';" data-label="主页按钮">
            <img id="u66_img" class="img " src="images/管理员页/主页按钮_u66.png"/>
        </div>

        <!-- logo (图片) -->
        <div id="u67" class="ax_default _图片" data-label="logo">
            <img id="u67_img" class="img " src="images/管理员页/logo_u67.png"/>
        </div>

        <!-- 管理员头像 (图片) -->
        <div id="u68" class="ax_default _图片" data-label="管理员头像">
            <img id="u68_img" class="img " src="images/主页/管理员头像_u60.png"/>
        </div>

        <!-- 退出登录 (矩形) -->
        <div id="u69" class="ax_default _一级标题" data-label="退出登录">
            <div id="u69_div" class=""></div>
            <div id="u69_text" class="text ">
                <p><span>退出</span></p>
            </div>
        </div>

        <!-- 退出登录 (热区) -->
        <div id="u70" class="ax_default" data-label="退出登录">
        </div>

        <!-- logo (图片) -->
        <div id="u71" class="ax_default _图片" data-label="logo">
            <img id="u71_img" class="img " src="images/管理员页/logo_u71.png"/>
        </div>

        <!-- Unnamed (图片) -->
        <div id="u72" class="ax_default _图片" onclick="javascript:window.location.href='SearchPage.jsp';">
            <img id="u72_img" class="img " src="images/主页/查询_u1.png"/>
        </div>
    </div>

    <!-- 用户管理按钮 (矩形) -->
    <div id="u73" class="ax_default box_1 selected" data-label="用户管理按钮" selectiongroup="管理员功能">
        <div id="u73_div" class="selected"></div>
    </div>

    <!-- 设定关键词按钮 (矩形) -->
    <div id="u74" class="ax_default box_1" data-label="设定关键词按钮" selectiongroup="管理员功能">
        <div id="u74_div" class=""></div>
    </div>

    <!-- 管理员功能 (内联框架) -->
    <div id="u75" class="ax_default" data-label="管理员功能">
        <iframe name="iframe2" id="u75_input" data-label="管理员功能" scrolling="no" frameborder="1" src="javascript:window.location.href='ManageUser.jsp';">
        </iframe>
    </div>
    <a id="u73_text" href="javascript:window.location.href='ManageUser.jsp';"  style="style="text-decoration:none; color:#0BA4C6; left: 540px;top: 125px;font-size: 25;"target="iframe2">用户管理</a>
    <a id="u74_text" href="javascript:window.location.href='WriteKeywordPage.jsp';" style="style="text-decoration:none; color:#0BA4C6; top: 125px;font-size: 25;left: 850px;"target="iframe2">设定关键词</a>

    <!-- 管理员帐号 (矩形) -->
    <div id="u76" class="ax_default _一级标题" data-label="管理员帐号">
        <div id="u76_div" class=""></div>
        <div id="u76_text" class="text ">
            <p><span>管理员帐号：admin001</span></p>
        </div>
    </div>
</div>
</body>
</html>
