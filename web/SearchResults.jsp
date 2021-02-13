<%--
  Created by IntelliJ IDEA.
  User: 齑粉玥
  Date: 2021/2/5
  Time: 21:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>搜索结果页（样例）</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/搜索结果页（样例）/styles.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
</head>
<body>
<div id="base" class="">

    <!-- 搜索框 (矩形) -->
    <div id="u233" class="ax_default box_2" data-label="搜索框">
        <div id="u233_div" class=""></div>
    </div>

    <!-- 搜索图标 (图片) -->
    <div id="u234" class="ax_default _图片" data-label="搜索图标">
        <img id="u234_img" class="img " src="images/主页/查询_u1.png"/>
    </div>

    <!-- 返回主页 (组 合) -->
    <div id="u235" class="ax_default" data-label="返回主页" data-left="344" data-top="57" data-width="70" data-height="63">

        <!-- 返回底框 (椭圆形) -->
        <div id="u236" class="ax_default ellipse" data-label="返回底框">
            <img id="u236_img" class="img " src="images/搜索页/返回底框_u195.png"/>
        </div>

        <!-- 返回图标 (图片) -->
        <div id="u237" class="ax_default _图片"  data-label="返回图标">
            <img id="u237_img" class="img " src="images/个人信息页/返回按钮_u165.png"/>
        </div>

        <!-- 返回热区 (热区) -->
        <div id="u238" class="ax_default" onclick="javascript:window.location.href='HomePage.jsp';" data-label="返回热区">
        </div>
    </div>

    <!-- 搜索输入 (文本框) -->
    <div id="u239" class="ax_default text_field" data-label="搜索输入">
        <input id="u239_input" type="text" value=""/>
    </div>

    <!-- 搜索热区 (热区) -->
    <div id="u240" class="ax_default" data-label="搜索热区">
    </div>

    <!-- 底框 (图片) -->
    <div id="u241" class="ax_default image" data-label="底框">
        <img id="u241_img" class="img " src="images/搜索结果页（样例）/底框_u241.png"/>
    </div>

    <!-- 搜索结果 (内联框架) -->
    <div id="u242" class="ax_default" data-label="搜索结果">
        <iframe id="u242_input" data-label="搜索结果" scrolling="auto" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
    </div>
</div>
</body>
</html>
