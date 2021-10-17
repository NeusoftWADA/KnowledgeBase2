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
<jsp:include page="Navigation.jsp"></jsp:include>
<div id="base" class="">

    <!-- Unnamed (图片) -->
    <div id="u63" class="ax_default image">
        <img id="u63_img" class="img " src="images/管理员页/u63.png"/>
    </div>

    <!-- 用户管理按钮 (矩形) -->
    <div id="u73" class="ax_default box_1 selected" data-label="用户管理按钮"onclick="javascript:window.location.href='/myweb/user/del';"  selectiongroup="管理员功能">
        <div id="u73_div" class="selected"></div>
        <div id="u73_text" class="text ">
            <p><span>用户管理</span></p>
        </div>
    </div>

    <!-- 设定关键词按钮 (矩形) -->
    <div id="u74" class="ax_default box_1" data-label="设定关键词按钮" selectiongroup="管理员功能"onclick="javascript:window.location.href='WriteKeywordPage.jsp';" >
        <div id="u74_div" class=""></div>
        <div id="u74_text" class="text ">
            <p><span>设定关键词</span></p>
        </div>
    </div>

    <!-- 管理员帐号 (矩形) -->
    <div id="u76" class="ax_default _一级标题" data-label="管理员帐号">
        <div id="u76_div" class=""></div>
        <div id="u76_text" class="text ">
            <p><span>管理员帐号： ${sessionScope.aid}</span></p>
        </div>
    </div>
</div>
</body>
</html>
