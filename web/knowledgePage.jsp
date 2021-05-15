<%@ page import="entity.Knowledge" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 齑粉玥
  Date: 2021/2/5
  Time: 19:34
  To change this template use File | Settings | File Templates.
--%>
<%String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";%>
<base href="<%=basePath%>">
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>知识点页</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/知识点页/styles.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
</head>
<body>
<div id="base" class="">

    <!-- 边框 (图片) -->
    <div id="u307" class="ax_default image" data-label="边框">
        <img id="u307_img" class="img " src="images/知识点页/边框_u307.png"/>
    </div>

    <!-- 返回主页 (组 合) -->
    <div id="u308" class="ax_default" data-label="返回主页" data-left="0" data-top="0" data-width="0" data-height="0">
    </div>

    <!-- 标题 (矩形) -->
    <div id="u309" class="ax_default _一级标题" data-label="标题">
        <div id="u309_div" class=""></div>
        <div id="u309_text" class="text ">
            <p><span> ${requestScope.knowledge.title}</span></p>
        </div>
    </div>

    <!-- 内容 (多行文本框) -->
    <div id="u310" class="ax_default text_area" data-label="内容">
        <textarea id="u310_input">
            ${requestScope.knowledge.content}
        </textarea>
    </div>

    <!-- 关键词 (矩形) -->
    <div id="u311" class="ax_default label" data-label="关键词">
        <div id="u311_div" class=""></div>
        <div id="u311_text" class="text ">
            <p><span>#笔记#</span></p>
        </div>
    </div>

    <!-- 分类2 (矩形) -->
    <div id="u312" class="ax_default _一级标题" data-label="分类2">
        <div id="u312_div" class=""></div>
        <div id="u312_text" class="text ">
            <p><span>类别：${requestScope.cname} </span></p>
        </div>
    </div>

    <!-- 分类1 (图片) -->
    <div id="u313" class="ax_default _图片" data-label="分类1">
        <img id="u313_img" class="img " src="images/个人页/分类按钮_u115.png"/>
    </div>

    <!-- 关注2 (矩形) -->
    <div id="u314" class="ax_default _一级标题" data-label="关注2">
        <div id="u314_div" class=""></div>
        <div id="u314_text" class="text ">
            <p><span>关注： ${requestScope.knowledge.attention}</span></p>
        </div>
    </div>

    <!-- 关注1 (图片) -->
    <div id="u315" class="ax_default _图片" data-label="关注1">
        <img id="u315_img" class="img " src="images/知识点页/关注1_u315.png"/>
    </div>

    <!-- 点赞 (矩形) -->
    <div id="u316" class="ax_default _一级标题" data-label="点赞">
        <div id="u316_div" class=""></div>
        <div id="u316_text" class="text ">
            <p><span>点赞</span></p>
        </div>
    </div>

    <!-- 点赞 (组 合) -->
    <div id="u317" class="ax_default" data-label="点赞" data-left="958" data-top="461" data-width="54" data-height="54">

        <!-- 底框 (椭圆形) -->
        <div id="u318" class="ax_default ellipse" data-label="底框">
            <img id="u318_img" class="img " src="images/知识点页/底框_u318.png"/>
        </div>

        <!-- 点赞按钮 (图片) -->
        <div id="u319" class="ax_default _图片" data-label="点赞按钮">
            <img id="u319_img" class="img " src="images/知识点页/点赞按钮_u319.png"/>
        </div>
    </div>

    <!-- 导航 (组 合) -->
    <div id="u320" class="ax_default" data-label="导航" data-left="-121" data-top="0" data-width="1786" data-height="56">

        <!-- Unnamed (矩形) -->
        <div id="u321" class="ax_default box_2" >
            <div id="u321_div" class=""></div>
        </div>

        <!-- 主页按钮 (图片) -->
        <div id="u322" class="ax_default _图片" onclick="javascript:window.location.href='HomePage.jsp';" data-label="主页按钮">
            <img id="u322_img" class="img " src="images/管理员页/主页按钮_u66.png"/>
        </div>

        <!-- logo (图片) -->
        <div id="u323" class="ax_default _图片" data-label="logo">
            <img id="u323_img" class="img " src="images/管理员页/logo_u67.png"/>
        </div>

        <!-- 管理员头像 (图片) -->
        <div id="u324" class="ax_default _图片" data-label="管理员头像">
            <img id="u324_img" class="img " src="images/主页/管理员头像_u60.png"/>
        </div>

        <!-- 退出登录 (矩形) -->
        <div id="u325" class="ax_default _一级标题" data-label="退出登录">
            <div id="u325_div" class=""></div>
            <div id="u325_text" class="text ">
                <p><span>退出</span></p>
            </div>
        </div>

        <!-- 退出登录 (热区) -->
        <div id="u326" class="ax_default" data-label="退出登录">
        </div>

        <!-- 用户头像 (图片) -->
        <div id="u327" class="ax_default _图片" data-label="用户头像">
            <img id="u327_img" class="img " src="images/主页/用户头像_u59.png"/>
        </div>

        <!-- logo (图片) -->
        <div id="u328" class="ax_default _图片" data-label="logo">
            <img id="u328_img" class="img " src="images/管理员页/logo_u71.png"/>
        </div>

        <!-- Unnamed (图片) -->
        <div id="u329" class="ax_default _图片" onclick="javascript:window.location.href='SearchPage.jsp';">
            <img id="u329_img" class="img " src="images/主页/查询_u1.png"/>
        </div>
    </div>
</div>
</body>
</html>
