<%@ page import="entity.Knowledge" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 齑粉玥
  Date: 2021/2/5
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>物理类</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/物理类/styles.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<div id="base" class="">
    <%
        List<Knowledge> knoList = (List) session.getAttribute("物理");
        for (int i = 0; i < knoList.size(); i++) {
            if (i == 0) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u257" class="ax_default box_3">
        <div id="u257_div" class=""></div>
        <div id="u257_text" class="text ">
            <p><span>&nbsp;&nbsp; &nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>"  target="_blank">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 1) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u258" class="ax_default box_3">
        <div id="u258_div" class=""></div>
        <div id="u258_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>" target="_blank">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>

    <%
    } else if (i == 2) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u259" class="ax_default box_3">
        <div id="u259_div" class=""></div>
        <div id="u259_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>" target="_blank">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 3) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u260" class="ax_default box_3">
        <div id="u260_div" class=""></div>
        <div id="u260_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>" target="_blank">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 4) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u261" class="ax_default box_3">
        <div id="u261_div" class=""></div>
        <div id="u261_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>" target="_blank">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 5) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u262" class="ax_default box_3">
        <div id="u262_div" class=""></div>
        <div id="u262_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>" target="_blank">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 6) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u263" class="ax_default box_3">
        <div id="u263_div" class=""></div>
        <div id="u263_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>" target="_blank">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 7) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u264" class="ax_default box_3">
        <div id="u264_div" class=""></div>
        <div id="u264_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>" target="_blank">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 8) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u265" class="ax_default box_3">
        <div id="u265_div" class=""></div>
        <div id="u265_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>" target="_blank">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 9) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u266" class="ax_default box_3">
        <div id="u266_div" class=""></div>
        <div id="u266_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>" target="_blank">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
            }
        }
    %>
   <%-- <!-- Unnamed (矩形) -->
    <div id="u267" class="ax_default box_3">
        <div id="u267_div" class=""></div>
        <div id="u267_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; CSS教程</span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u268" class="ax_default box_3">
        <div id="u268_div" class=""></div>
        <div id="u268_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; C语言基础知识笔记</span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u269" class="ax_default box_3">
        <div id="u269_div" class=""></div>
        <div id="u269_text" class="text ">
            <p><span>&nbsp;&nbsp; HTML5教程</span></p>
        </div>
    </div>--%>
</div>
</body>
</html>
