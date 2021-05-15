<%@ page import="entity.Knowledge" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 齑粉玥
  Date: 2021/2/5
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数学类</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/数学类/styles.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<div id="base" class="">
    <%
        List<Knowledge> knoList = (List) session.getAttribute("高数");
        for (int i = 0; i < knoList.size(); i++) {
            if (i == 0) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u281" class="ax_default box_3">
        <div id="u281_div" class=""></div>
        <div id="u281_text" class="text ">
            <p><span>&nbsp;&nbsp; &nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>"  target="_blank">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 1) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u282" class="ax_default box_3">
        <div id="u282_div" class=""></div>
        <div id="u282_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>"  target="_blank">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 2) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u283" class="ax_default box_3">
        <div id="u283_div" class=""></div>
        <div id="u283_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>"  target="_blank">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 3) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u284" class="ax_default box_3">
        <div id="u284_div" class=""></div>
        <div id="u284_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>"  target="_blank">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 4) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u285" class="ax_default box_3">
        <div id="u285_div" class=""></div>
        <div id="u285_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>"  target="_blank">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 5) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u286" class="ax_default box_3">
        <div id="u286_div" class=""></div>
        <div id="u286_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>"  target="_blank">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 6) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u287" class="ax_default box_3">
        <div id="u287_div" class=""></div>
        <div id="u287_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>"  target="_blank">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 7) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u288" class="ax_default box_3">
        <div id="u288_div" class=""></div>
        <div id="u288_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>"  target="_blank">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 8) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u289" class="ax_default box_3">
        <div id="u289_div" class=""></div>
        <div id="u289_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>" target="_blank">  <%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 9) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u290" class="ax_default box_3">
        <div id="u290_div" class=""></div>
        <div id="u290_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>"  target="_blank">  <%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
            }
        }
    %>
  <%--  <!-- Unnamed (矩形) -->
    <div id="u291" class="ax_default box_3">
        <div id="u291_div" class=""></div>
        <div id="u291_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; CSS教程</span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u292" class="ax_default box_3">
        <div id="u292_div" class=""></div>
        <div id="u292_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; C语言基础知识笔记</span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u293" class="ax_default box_3">
        <div id="u293_div" class=""></div>
        <div id="u293_text" class="text ">
            <p><span>&nbsp;&nbsp; HTML5教程</span></p>
        </div>
    </div>--%>
</div>
</body>
</html>
