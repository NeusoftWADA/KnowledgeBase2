<%@ page import="entity.User_detail" %><%--
  Created by IntelliJ IDEA.
  User: 齑粉玥
  Date: 2021/2/5
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";%>
<base href="<%=basePath%>">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%--判断第几次跳转到此页面,第一次flag为-1，否则为0--%>
<c:set scope="page" var="flag" value="0"></c:set>
<c:if test="${requestScope.res eq null}">
    <c:set scope="page" var="flag" value="-1"></c:set>
</c:if>


%>
<html>
<head>
    <title>个人信息页</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/个人信息页/styles.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
</head>
<body>
<div id="base" class="">

    <!-- 边框 (图片) -->
    <div id="u139" class="ax_default image" data-label="边框">
        <img id="u139_img" class="img " src="images/个人信息页/边框_u139.png"/>
    </div>

    <!-- 个人信息标题 (矩形) -->
    <div id="u140" class="ax_default _一级标题" data-label="个人信息标题">
        <div id="u140_div" class=""></div>
        <div id="u140_text" class="text ">
            <p><span>个人信息</span></p>
        </div>
    </div>


    <!-- 个性签名1 (矩形) -->
    <div id="u142" class="ax_default label" data-label="个性签名1">
        <div id="u142_div" class=""></div>
        <div id="u142_text" class="text ">
            <p><span>个 性 签 名：</span></p>
        </div>
    </div>


    <!-- 爱好1 (矩形) -->
    <div id="u144" class="ax_default label" data-label="爱好1">
        <div id="u144_div" class=""></div>
        <div id="u144_text" class="text ">
            <p><span>爱&nbsp;&nbsp; 好：</span></p>
        </div>
    </div>



    <!-- 性别1 (矩形) -->
    <div id="u146" class="ax_default label" data-label="性别1">
        <div id="u146_div" class=""></div>
        <div id="u146_text" class="text ">
            <p><span>性&nbsp;&nbsp; 别：</span></p>
        </div>
    </div>



    <!-- 导航 (组 合) -->
    <div id="u148" class="ax_default" data-label="导航" data-left="-124" data-top="0" data-width="1867" data-height="56">

        <!-- Unnamed (矩形) -->
        <div id="u149" class="ax_default box_2" >
            <div id="u149_div" class=""></div>
        </div>

        <!-- 主页按钮 (图片) -->
        <div id="u150" class="ax_default _图片" onclick="javascript:window.location.href='HomePage.jsp';" data-label="主页按钮">
            <img id="u150_img" class="img " src="images/管理员页/主页按钮_u66.png"/>
        </div>

        <!-- logo (图片) -->
        <div id="u151" class="ax_default _图片" data-label="logo">
            <img id="u151_img" class="img " src="images/管理员页/logo_u67.png"/>
        </div>

        <!-- 退出登录 (矩形) -->
        <div id="u152" class="ax_default _一级标题" data-label="退出登录">
            <div id="u152_div" class=""></div>
            <div id="u152_text" class="text ">
                <p><span>退出</span></p>
            </div>
        </div>

        <!-- 退出登录 (热区) -->
        <div id="u153" class="ax_default" data-label="退出登录">
        </div>

        <!-- 用户头像 (图片) -->
        <div id="u154" class="ax_default _图片" data-label="用户头像">
            <img id="u154_img" class="img " src="images/主页/用户头像_u59.png"/>
        </div>

        <!-- logo (图片) -->
        <div id="u155" class="ax_default _图片" data-label="logo">
            <img id="u155_img" class="img " src="images/管理员页/logo_u71.png"/>
        </div>

        <!-- Unnamed (图片) -->
        <div id="u156" class="ax_default _图片"onclick="javascript:window.location.href='SearchPage.jsp';">
            <img id="u156_img" class="img " src="images/主页/查询_u1.png"/>
        </div>
    </div>

    <!-- 学校1 (矩形) -->
    <div id="u157" class="ax_default label" data-label="学校1">
        <div id="u157_div" class=""></div>
        <div id="u157_text" class="text ">
            <p><span>学&nbsp;&nbsp; 校：</span></p>
        </div>
    </div>


    <!-- 专业1 (矩形) -->
    <div id="u159" class="ax_default label" data-label="专业1">
        <div id="u159_div" class=""></div>
        <div id="u159_text" class="text ">
            <p><span>专&nbsp; &nbsp; 业：</span></p>
        </div>
    </div>


    <form action="/myweb/detail/update" method="get">

    <!-- 个性签名2 (文本框) -->
    <div id="u141" class="ax_default text_field" data-label="个性签名2">
        <input id="u141_input" type="text" name="title" value="${sessionScope.user_detail.title}"/>
    </div>

    <!-- 爱好2 (文本框) -->
    <div id="u143" class="ax_default text_field" data-label="爱好2">
        <input id="u143_input" type="text" name="content" value="${sessionScope.user_detail.content}"/>
    </div>

    <!-- 性别2 (下拉列表框) -->
    <div id="u145" class="ax_default droplist" data-label="性别2">
        <select id="u145_input" name="sex">
            <option value=""></option>
            <option value="男"  ${"男" eq sessionScope.user_detail.sex ?"selected":""}> 男</option>
            <option value="女"  ${"女" eq sessionScope.user_detail.sex ?"selected":""}>女</option>
        </select>
    </div>

    <!-- 学校2 (文本框) -->
    <div id="u147" class="ax_default text_field" data-label="学校2">
        <input id="u147_input" type="text" name="school" value="${sessionScope.user_detail.school}"/>
    </div>

    <!-- 专业2 (文本框) -->
    <div id="u158" class="ax_default text_field" data-label="专业2">
        <input id="u158_input" type="text"  name="profession" value="${sessionScope.user_detail.profession}"/>
    </div>


    <!-- 确认按钮 (矩形) -->
    <div id="u160" class="ax_default primary_button" data-label="确认按钮" onlick="this.form.submit">
        <input type="submit" id="u160_div" class="" value="确认修改" style=" color:#FFFFFF; ">
    </div>
    </form>

    <!-- 取消按钮 (矩形) -->
    <div id="u161" class="ax_default primary_button" data-label="取消按钮" onclick="javascript:history.back(-1);">
        <div id="u161_div" class=""></div>
        <div id="u161_text" class="text ">
            <p><span>取消修改</span></p>
        </div>
    </div>


    <%--判断是否注册成功--%>
    <c:if test="${pageScope.flag eq 0 && requestScope.res eq 1}">
    <!-- 修改成功 (组 合) -->
    <div id="u162" class="ax_default" data-label="修改成功" data-left="-97" data-top="0" data-width="1813" data-height="899">

        <!-- 遮蔽2 (矩形) -->
        <div id="u163" class="ax_default box_3" data-label="遮蔽2">
            <div id="u163_div" class=""></div>
        </div>

        <!-- 成功提示 (矩形) -->
        <div id="u164" class="ax_default box_3" data-label="成功提示">
            <div id="u164_div" class=""></div>
            <div id="u164_text" class="text ">
                <p><span>已成功修改&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; </span></p><p><span><a href="/myweb/show/knowledge">请点击返回个人页&nbsp; &nbsp; &nbsp; &nbsp;</a>  </span></p>
            </div>
        </div>

        <!-- 返回按钮 (图片) -->
        <div id="u165" class="ax_default _图片"  data-label="返回按钮">
            <img id="u165_img" class="img " src="images/个人信息页/返回按钮_u165.png"/>
        </div>

        <!-- 返回热区 (热区) -->
        <div id="u166" class="ax_default" onclick="javascript:window.location.href='PersonalPage.jsp';" data-label="返回热区">
        </div>
    </div>
    </c:if>
</div>
</body>
</html>
