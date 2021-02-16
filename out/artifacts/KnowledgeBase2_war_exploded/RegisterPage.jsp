<%--
  Created by IntelliJ IDEA.
  User: 齑粉玥
  Date: 2021/2/9
  Time: 0:46
  To change this template use File | Settings | File Templates.
--%>
<%String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";%>
<base href="<%=basePath%>">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--判断第几次跳转到此页面,第一次flag为-1，否则为0--%>
<c:set scope="page" var="flag" value="0"></c:set>
<c:if test="${requestScope.result eq null}">
    <c:set scope="page" var="flag" value="-1"></c:set>
</c:if>

<html>
<head>
    <title>注册</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/注册/styles.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
</head>
<body>
<div id="base" class="">
    <!-- 弹出登陆注册框 (矩形) -->
    <div id="u308" class="ax_default box_1" data-label="弹出登陆注册框">
        <img id="u308_img" class="img " src="images/登录/弹出登陆注册框_u296.png" alt="框"/>
    </div>

    <!-- 取消按钮 (形状) -->
    <div id="u309" class="ax_default icon" onclick="javascript:window.location.href='HomePage.jsp';" data-label="取消按钮">
        <img id="u309_img" class="img " src="images/登录/取消按钮_u297.png" alt="取消"/>
    </div>

    <!-- 登录底框 (图片) -->
    <div id="u310" class="ax_default image selected" data-label="登录底框">
        <img id="u310_img" class="img " src="images/登录/登录底框_u298.png" alt="框"/>
    </div>

    <!-- 注册 (矩形) -->
    <div id="u311" class="ax_default _一级标题" data-label="注册">
        <div id="u311_div" class=""></div>
        <div id="u311_text" class="text ">
            <p><span>注册</span></p>
            <p><span><br></span></p>
        </div>
    </div>


    <!-- 注册输入账户框 (矩形) -->
    <div id="u313" class="ax_default box_1" data-label="注册输入账户框">
        <div id="u313_div" class=""></div>
    </div>

    <!-- 注册输入密码框 (矩形) -->
    <div id="u314" class="ax_default box_1" data-label="注册输入密码框">
        <div id="u314_div" class=""></div>
    </div>

    <!-- 注册再次输入密码框 (矩形) -->
    <div id="u315" class="ax_default box_1" data-label="注册再次输入密码框">
        <div id="u315_div" class=""></div>
    </div>




    <form action="/myweb/user/Add" method="post">

        <!-- 注册账号 (文本框) -->
        <div id="u317" class="ax_default text_field" data-label="注册账号">
            <input id="u317_input" type="text" name="id"/>
        </div>



        <!-- 注册密码 (文本框) -->
        <div id="u318" class="ax_default text_field" data-label="注册密码">
            <input id="u318_input" type="password" name="upassword"/>
        </div>



        <!-- 注册再次密码 (文本框) -->
        <div id="u316" class="ax_default text_field" data-label="注册再次密码">
            <input id="u316_input" type="password" name="password"/>
        </div>


        <!-- 注册按钮 (矩形) -->
        <div id="u312" class="ax_default primary_button" data-label="注册按钮">
            <input type="submit" id="u312_div" class="" value="注册" style=" color:#FFFFFF; ">
        </div>
    </form>

    <%-- //判断账号是否存在--%>
    <c:if test="${pageScope.flag eq 0 && requestScope.result eq -1}">
        <!-- 注册错误提示1 (矩形) -->
        <div id="u322" class="ax_default label" data-label="注册错误提示1">
            <div id="u322_div" class=""></div>
            <div id="u322_text" class="text ">
                <p><span>*该账户已被注册</span></p>
            </div>
        </div>
    </c:if>

    <%--判断密码是否小于6位数--%>
    <c:if test="${pageScope.flag eq 0 && requestScope.result eq -3}">
        <!-- 注册错误提示2 (矩形) -->
        <div id="u323" class="ax_default label" data-label="注册错误提示2">
            <div id="u323_div" class=""></div>
            <div id="u323_text" class="text ">
                <p><span>*密码长度不符合要求</span></p>
            </div>
        </div>
    </c:if>

    <%--判断第二次密码是否正确--%>
    <c:if test="${pageScope.flag eq 0 && requestScope.result eq -2}">
        <!-- 注册错误提示3 (矩形) -->
        <div id="u324" class="ax_default label" data-label="注册错误提示3">
            <div id="u324_div" class=""></div>
            <div id="u324_text" class="text ">
                <p><span>*第二次密码输入错误</span></p>
            </div>
        </div>
    </c:if>


    <%--判断是否注册成功--%>
    <c:if test="${pageScope.flag eq 0 && requestScope.result eq 1}">
    <!-- 注册成功 (组 合) -->
    <div id="u325" class="ax_default" data-label="注册成功" data-left="501" data-top="159" data-width="588"
         data-height="344">

        <!-- Unnamed (矩形) -->
        <div id="u326" class="ax_default box_3">
            <div id="u326_div" class=""></div>
            <div id="u326_text" class="text ">
                <p style="font-size:28px;">
                    <span>已成功注册&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p>
                <p style="font-size:12px;"><span style="font-size:28px;">请点击返回登录</span><span
                        style="font-size:16px;">&nbsp; &nbsp;&nbsp; </span><span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>
                </p>
            </div>
        </div>

        <!-- Unnamed (图片) -->
        <div id="u327" class="ax_default _图片">
            <img id="u327_img" class="img " src="images/个人页/成功图标_u104.png"/>
        </div>

        <!-- Unnamed (热区) -->
        <div id="u328" onclick="javascript:window.location.href='SignInPage.jsp';" class="ax_default"></div>
    </div>

    </c:if>

    <!-- 注册账号输入提示 (矩形) -->
    <div id="u319" class="ax_default label" data-label="注册账号输入提示">
        <div id="u319_div" class=""></div>
        <div id="u319_text" class="text ">
            <p><span>请输入注册手机号</span></p>
        </div>
    </div>

    <!-- 注册密码输入提示 (矩形) -->
    <div id="u320" class="ax_default label" data-label="注册密码输入提示">
        <div id="u320_div" class=""></div>
        <div id="u320_text" class="text ">
            <p><span>请输入密码（至少六位数）</span></p>
        </div>
    </div>

    <!-- 注册再次密码输入提示 (矩形) -->
    <div id="u321" class="ax_default label" data-label="注册再次密码输入提示">
        <div id="u321_div" class=""></div>
        <div id="u321_text" class="text ">
            <p><span>再次确认密码</span></p>
        </div>
    </div>
</div>
</body>
</html>
