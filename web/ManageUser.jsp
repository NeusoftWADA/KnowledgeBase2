<%--
  Created by IntelliJ IDEA.
  User: 齑粉玥
  Date: 2021/2/6
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理用户页</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/管理用户页/styles.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
</head>
<body>
<div id="base" class="">

    <!-- 查找框 (文本框) -->
    <div id="u77" class="ax_default text_field" data-label="查找框">
        <input id="u77_input" type="text" value="请输入用户名或相关词汇"/>
    </div>

    <!-- 相关用户列表 (列表框) -->
    <div id="u78" class="ax_default list_box" data-label="相关用户列表">
        <select id="u78_input" size="2">
        </select>
    </div>

    <!-- 查找用户 (图片) -->
    <div id="u79" class="ax_default _图片" data-label="查找用户">
        <img id="u79_img" class="img " src="images/主页/查询_u1.png"/>
    </div>

    <!-- 注销按钮 (矩形) -->
    <div id="u80" class="ax_default button" data-label="注销按钮">
        <div id="u80_div" class=""></div>
        <div id="u80_text" class="text ">
            <p><span>注销</span></p>
        </div>
    </div>

    <!-- 注销成功 (组 合) -->
    <div id="u81" class="ax_default" data-label="注销成功" data-left="-322" data-top="-71" data-width="2722" data-height="1426">

        <!-- 遮蔽 (矩形) -->
        <div id="u82" class="ax_default box_3" data-label="遮蔽">
            <div id="u82_div" class=""></div>
        </div>

        <!-- Unnamed (矩形) -->
        <div id="u83" class="ax_default box_3">
            <div id="u83_div" class=""></div>
            <div id="u83_text" class="text ">
                <p><span>用户已被注销</span></p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
