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
<form action="controller/UserDeleteServlet" method="get">
<div id="base" class="">

    <table border="2">
        <tr>
            <td>用户编号</td>
            <td>用户账户</td>
            <td>注销用户</td>
        </tr>
        <%
            List<User> list = (List<User>)request.getAttribute("list");
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
</form>
</body>
</html>
