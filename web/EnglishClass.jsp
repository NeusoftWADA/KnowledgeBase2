<%@ page import="entity.Knowledge" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 齑粉玥
  Date: 2021/2/5
  Time: 21:11
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>英语类</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/英语类/styles.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<%
    List<Knowledge> knoList = (List) session.getAttribute("英语");
    for (int i = 0; i < knoList.size(); i++) {
        if (i == 0) {
%>
<div id="base" class="">

    <!-- Unnamed (矩形) -->
    <div id="u270" class="ax_default box_3">
        <div id="u270_div" class=""></div>
        <div id="u270_text" class="text ">
            <p><span>&nbsp;&nbsp; &nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 1) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u271" class="ax_default box_3">
        <div id="u271_div" class=""></div>
        <div id="u271_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 2) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u272" class="ax_default box_3">
        <div id="u272_div" class=""></div>
        <div id="u272_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 3) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u273" class="ax_default box_3">
        <div id="u273_div" class=""></div>
        <div id="u273_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 4) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u274" class="ax_default box_3">
        <div id="u274_div" class=""></div>
        <div id="u274_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 5) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u275" class="ax_default box_3">
        <div id="u275_div" class=""></div>
        <div id="u275_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 6) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u276" class="ax_default box_3">
        <div id="u276_div" class=""></div>
        <div id="u276_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 7) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u277" class="ax_default box_3">
        <div id="u277_div" class=""></div>
        <div id="u277_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 8) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u278" class="ax_default box_3">
        <div id="u278_div" class=""></div>
        <div id="u278_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 9) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u279" class="ax_default box_3">
        <div id="u279_div" class=""></div>
        <div id="u279_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
            }
        }
    %>
<%--
    <!-- Unnamed (矩形) -->
    <div id="u280" class="ax_default box_3">
        <div id="u280_div" class=""></div>
        <div id="u280_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; 2018年12月英语四级真题及答案第三套</span></p>
        </div>
    </div>--%>
</div>
</body>
</html>
