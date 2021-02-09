<%--
  Created by IntelliJ IDEA.
  User: 齑粉玥
  Date: 2021/2/9
  Time: 0:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
    Integer loginResult =  (Integer)request.getAttribute("loginResult");
    int flag = 0;
    if (loginResult==null){
        flag = -1;
    }
%>
<html>
<head>
    <title>登录</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/登录/styles.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
</head>
<body>
<div id="base" class="">
    <!-- 弹出登陆注册框 (矩形) -->
    <div id="u296" class="ax_default box_1" data-label="弹出登陆注册框">
        <img id="u296_img" class="img " src="images/登录/弹出登陆注册框_u296.png"/>
    </div>

    <!-- 取消按钮 (形状) -->
    <div id="u297" class="ax_default icon" onclick="javascript:window.location.href='HomePage.jsp';" data-label="取消按钮">
        <img id="u297_img" class="img " src="images/登录/取消按钮_u297.png"/>
    </div>

    <!-- 登录底框 (图片) -->
    <div id="u298" class="ax_default image selected" data-label="登录底框">
        <img id="u298_img" class="img " src="images/登录/登录底框_u298.png"/>
    </div>

    <!-- 登录 (矩形) -->
    <div id="u299" class="ax_default _一级标题" data-label="登录">
        <div id="u299_div" class=""></div>
        <div id="u299_text" class="text ">
            <p><span>登 录</span></p>
        </div>
    </div>

    <!-- 登录账户边框 (矩形) -->
    <div id="u300" class="ax_default box_1" data-label="登录账户边框">
        <div id="u300_div" class=""></div>
    </div>

    <!-- 登录密码边框 (矩形) -->
    <div id="u301" class="ax_default box_1" data-label="登录密码边框">
        <div id="u301_div" class=""></div>
    </div>

    <form action="/myweb/login" method="post">
        <!-- 登录账户名 (文本框) -->
        <div id="u302" class="ax_default text_field" data-label="登录账户名">
            <input id="u302_input" type="text"  name="id"/>
        </div>

        <!-- 登录密码 (文本框) -->
        <div id="u303" class="ax_default text_field" data-label="登录密码">
            <input id="u303_input" type="password"  name="upassword"/>
        </div>

       <%--判断用户名密码是否正确--%>
        <%
            if (flag == 0&&loginResult==0){
        %>
<%--           <!-- 登录错误提示 (矩形) -->
            <div id="u307" class="ax_default label" data-label="登录错误提示">
                <div id="u307_div" class=""></div>
                <div id="u307_text" class="text ">
                    <p><span>*用户名密码有误，请仔细核对后再登录</span></p>
                </div>
            </div>--%>
        <%
            }
        %>

        <!-- 登录按钮 (矩形) -->
        <div id="u304" class="ax_default primary_button" data-label="登录按钮">
            <input type="submit" id="u304_div"  class="" value="登录" style=" color:#FFFFFF; ">
        </div>

    </form>


    <!-- 登录账户输入提示 (矩形) -->
    <div id="u305" class="ax_default label" data-label="登录账户输入提示">
        <div id="u305_div" class=""></div>
        <div id="u305_text" class="text ">
            <p><span>请输入账户名（手机号）</span></p>
        </div>
    </div>

    <!-- 登录密码输入提示 (矩形) -->
    <div id="u306" class="ax_default label" data-label="登录密码输入提示">
        <div id="u306_div" class=""></div>
        <div id="u306_text" class="text ">
            <p><span>请输入密码</span></p>
        </div>
    </div>

    <!-- 登录错误提示 (矩形) -->
    <div id="u307" class="ax_default label" data-label="登录错误提示">
        <div id="u307_div" class=""></div>
        <div id="u307_text" class="text ">
            <p><span>*用户名密码有误，请仔细核对后再登录</span></p>
        </div>
    </div>



</div>
</body>
</html>
