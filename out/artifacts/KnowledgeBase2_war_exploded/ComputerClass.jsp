<%@ page import="entity.Knowledge" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 齑粉玥
  Date: 2021/2/5
  Time: 20:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>计算机类</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/计算机类/styles.css" type="text/css" rel="stylesheet"/>
</head>
<body>

    </div>
    <%
        List<Knowledge> knoList = (List) session.getAttribute("计算机类");
        for (int i = 0; i < knoList.size(); i++) {
            if (i == 0) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u294" class="ax_default box_3">
        <div id="u294_div" class=""></div>
        <div id="u294_text" class="text ">
            <p><span>&nbsp;&nbsp; &nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp;<%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 1) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u295" class="ax_default box_3">
        <div id="u295_div" class=""></div>
        <div id="u295_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp; &nbsp; <%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>

    <%
    } else if (i == 2) {
    %>

    <!-- Unnamed (矩形) -->
    <div id="u296" class="ax_default box_3">
        <div id="u296_div" class=""></div>
        <div id="u296_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp; &nbsp; <%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 3) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u297" class="ax_default box_3">
        <div id="u297_div" class=""></div>
        <div id="u297_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp;  <%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 4) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u298" class="ax_default box_3">
        <div id="u298_div" class=""></div>
        <div id="u298_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp;  <%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 5) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u299" class="ax_default box_3">
        <div id="u299_div" class=""></div>
        <div id="u299_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp;  <%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 6) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u300" class="ax_default box_3">
        <div id="u300_div" class=""></div>
        <div id="u300_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp;  <%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 7) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u301" class="ax_default box_3">
        <div id="u301_div" class=""></div>
        <div id="u301_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp;  <%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
    } else if (i == 8) {
    %>
    <div id="base" class="">
        <!-- Unnamed (矩形) -->
        <!-- Unnamed (矩形) -->
        <div id="u302" class="ax_default box_3">
            <div id="u302_div" class=""></div>
            <div id="u302_text" class="text ">
                <p><span>&nbsp;&nbsp;&nbsp; <a
                        style="text-decoration:none"
                        href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp;  <%=knoList.get(i).getTitle()%></a></span></p>
            </div>

    <%
    } else if (i == 9) {
    %>
    <!-- Unnamed (矩形) -->
    <div id="u303" class="ax_default box_3">
        <div id="u303_div" class=""></div>
        <div id="u303_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; <a
                    style="text-decoration:none"
                    href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp;  <%=knoList.get(i).getTitle()%></a></span></p>
        </div>
    </div>
    <%
            }
        }
    %>


    <div id="u304" class="ax_default box_3">
        <div id="u304_div" class=""></div>
        <div id="u304_text" class="text ">
            <p><span>&nbsp;&nbsp;&nbsp; 案发当时</span></p>
        </div>
    </div>



    <!-- Unnamed (矩形) -->
    <div id="u306" class="ax_default box_3">
        <div id="u306_div" class=""></div>
        <div id="u306_text" class="text ">
            <p><span>&nbsp;&nbsp;放大放大</span></p>
        </div>
    </div>

</div>
</body>
</html>
