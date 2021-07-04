<%@ page import="java.util.List" %>
<%@ page import="entity.User" %>
<%--
  Created by IntelliJ IDEA.
  User: 齑粉玥
  Date: 2021/2/6
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path=request . getContextPath() ;%>

<html>
<head>
    <title>管理用户页</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="<%=path%>resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="<%=path%>resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="<%=path%>data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="<%=path%>/files/管理用户页/styles.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
</head>
<body>
<div id="base" class="">

    <table border="2">
        <tr>
            <td>用户编号</td>
            <td>用户账户</td>
            <td>注销用户</td>
        </tr>
        <tr>
        <%
            List<User> list = (List<User>)request.getAttribute("list");
//            for (int i=0;i<list.size();i++){
//                User user =(User) list.get(i);

            for (int i=0;i<list.size();i++){
                User user =(User) list.get(i);
        %>

        <td><%=user.getUid()%></td>
        <td><%=user.getId()%></td>



        <td><a href="/del?id=<%=user.getUid()%>">删除</a></td>

        </tr>
        <%
            }
        %>

    </table>


    <!-- 注销成功 (组 合) -->
    <div id="u80" class="ax_default" data-label="注销成功" data-left="0" data-top="60" data-width="2722" data-height="1426">

        <!-- 遮蔽 (矩形) -->
        <div id="u81" class="ax_default box_3" data-label="遮蔽">
            <div id="u81_div" class=""></div>
        </div>

        <!-- Unnamed (矩形) -->
        <div id="u82" class="ax_default box_3">
            <div id="u82_div" class=""></div>
            <div id="u82_text" class="text ">
                <p><span>用户已被注销</span></p>
            </div>
        </div>
    </div>

    <!-- 导航 (组 合) -->
    <div id="u83" class="ax_default" data-label="导航" data-left="-196" data-top="0" data-width="1740" data-height="56">

        <!-- Unnamed (矩形) -->
        <div id="u84" class="ax_default box_2">
            <div id="u84_div" class=""></div>
        </div>

        <!-- 主页按钮 (图片) -->
        <div id="u85" class="ax_default _图片" data-label="主页按钮">
            <img id="u85_img" class="img " src="<%=path%>/images/管理员页/主页按钮_u66.png" alt="1"/>
        </div>

        <!-- logo (图片) -->
        <div id="u86" class="ax_default _图片" data-label="logo">
            <img id="u86_img" class="img " src="<%=path%>/images/管理员页/logo_u67.png" alt="1"/>
        </div>

        <!-- 管理员头像 (图片) -->
        <div id="u87" class="ax_default _图片" data-label="管理员头像">
            <img id="u87_img" class="img " src="<%=path%>/images/主页/管理员头像_u60.png"/>
        </div>

        <!-- 退出登录 (矩形) -->
        <div id="u88" class="ax_default _一级标题" data-label="退出登录">
            <div id="u88_div" class=""></div>
            <div id="u88_text" class="text ">
                <p><span>退出</span></p>
            </div>
        </div>

        <!-- 退出登录 (热区) -->
        <div id="u89" class="ax_default" data-label="退出登录">
        </div>

        <!-- logo (图片) -->
        <div id="u90" class="ax_default _图片" data-label="logo">
            <img id="u90_img" class="img " src="<%=path%>/images/管理员页/logo_u71.png"/>
        </div>

        <!-- Unnamed (图片) -->
        <div id="u91" class="ax_default _图片">
            <img id="u91_img" class="img " src="<%=path%>/images/主页/查询_u1.png"/>
        </div>
    </div>
</div>
</body>
</html>
