<%--
  Created by IntelliJ IDEA.
  User: 齑粉玥
  Date: 2021/2/5
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% String path=request . getContextPath() ;%>
<c:set scope="page" var="flag" value="0"></c:set>
<c:if test="${requestScope.count eq null}">
    <c:set scope="page" var="flag" value="-1"></c:set>
</c:if>

<html>
<head>
    <title>编写关键词页</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="<%=path%>/resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="<%=path%>/resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="<%=path%>/data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="<%=path%>/files/编写关键词页/styles.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
</head>
<body>
<div id="base" class="">

<form>
    <div id="u112" class="ax_default text_field" data-label="关键词名"style="
    border-width: 0px;
    position: absolute;
    left: 579px;
    top: 72px;
    width: 215px;
    height: 39px;
">
        <input id="u112_input" type="text" name="wname" style="position: absolute;
    left: 0px;
    top: 0px;
    width: 215px;
    height: 39px;
    font-family: 'Arial Normal', 'Arial';
    font-weight: 400;
    font-style: normal;
    font-size: 14px;
    text-decoration: none;
    color: #000000;
    text-align: left;"/>
    </div>

    <div id="u113" class="ax_default label" style="
    border-width: 0px;
    position: absolute;
    left: 470px;
    top: 75px;
    width: 109px;
    height: 39px;
    font-family: 'Arial Negreta', 'Arial Normal', 'Arial';
    font-weight: 700;
    font-style: normal;
    font-size: 18px;">
        <div id="u113_div" class=""></div>
        <div id="u113_text" class="text ">
            <p><span>新的关键词：</span></p>
        </div>
    </div>
    <!-- Unnamed (形状) -->
    <div id="u94" class="ax_default icon" style="border-width: 0px;
    position: absolute;
    left: 830px;
    top: 70px;
    width: 40px;
    height: 42px;">
        <img id="u94_img" class="img "  onclick="this.form.submit()" src="<%=path%>/images/编写关键词页/u86.png"/>
    </div>
    <hr color=#FFFFFF style="
    margin-top: 120px;
    width: 500px;
    height: 1px;
    margin-left: 430px;
">

</form>



    <form action="/myweb/manger/add" method="post">
    <!-- 关键词名 (文本框) -->
    <div id="u92" class="ax_default text_field" data-label="关键词名">
        <input id="u92_input" type="text"  name="wname"/>
    </div>

    <!-- 添加知识点编号框 (文本框) -->
    <div id="u93" class="ax_default text_field" data-label="添加知识点编号框">
        <input id="u93_input" type="text" value="输入添加知识点编号" name="kid"/>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u95" class="ax_default label">
        <div id="u95_div" class=""></div>
        <div id="u95_text" class="text ">
            <p><span>关键词：</span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u96" class="ax_default label">
        <div id="u96_div" class=""></div>
        <div id="u96_text" class="text ">
            <p><span>相关知识点：</span></p>
        </div>
    </div>

    <!-- 确认按钮 (矩形) -->
    <div id="u97" class="ax_default primary_button" data-label="确认按钮"  >
        <input id="u97_div" class="" onclick="this.form.submit()" style="color:#FFFFFF" value="         确认"></input>

    </div>


    <!-- 添加知识点的标题 (多行文本框) -->
    <div id="u98" class="ax_default text_area" data-label="添加知识点的标题">
        <textarea id="u98_input">2022考研数学高数：多元函数的积分学怎么考察?
2021考前高数冲刺：几个易混概念你了解么?
2022考研数学复习：42句高数知识点的口诀
</textarea>
    </div>
    </form>
    <!-- 添加错误提示 (矩形) -->
    <div id="u99" class="ax_default label" data-label="添加错误提示"style="
    top: 80px;
    left: 900px;
">
        <div id="u99_div" class=""></div>
        <div id="u99_text" class="text ">
            <p><span>已有该关键词</span></p>
        </div>
    </div>

<%--<c:if test="${pageScope.flag eq 0 && requestScope.count eq 1}">--%>
<%--    <!-- 修改成功 (组 合) -->--%>
<%--    <div id="u100" class="ax_default" data-label="修改成功" data-left="0" data-top="56" data-width="2849" data-height="1498">--%>

<%--        <!-- 遮蔽 (矩形) -->--%>
<%--        <div id="u101" class="ax_default box_3" data-label="遮蔽">--%>
<%--            <div id="u101_div" class=""></div>--%>
<%--        </div>--%>

<%--        <!-- 成功提示 (矩形) -->--%>
<%--        <div id="u102" class="ax_default box_3" data-label="成功提示">--%>
<%--            <div id="u102_div" class=""></div>--%>
<%--            <div id="u102_text" class="text ">--%>
<%--                <p><span>关键词添加成功</span></p>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</c:if>--%>

    <!-- 导航 (组 合) -->
    <div id="u103" class="ax_default" data-label="导航" data-left="-196" data-top="0" data-width="1740" data-height="56">

        <!-- Unnamed (矩形) -->
        <div id="u104" class="ax_default box_2">
            <div id="u104_div" class=""></div>
        </div>

        <!-- 主页按钮 (图片) -->
        <div id="u105" class="ax_default _图片" data-label="主页按钮">
            <img id="u105_img" class="img " src="<%=path%>/images/管理员页/主页按钮_u66.png"/>
        </div>

        <!-- logo (图片) -->
        <div id="u106" class="ax_default _图片" data-label="logo">
            <img id="u106_img" class="img " src="<%=path%>/images/管理员页/logo_u67.png"/>
        </div>

        <!-- 管理员头像 (图片) -->
        <div id="u107" class="ax_default _图片" data-label="管理员头像">
            <img id="u107_img" class="img " src="<%=path%>/images/主页/管理员头像_u60.png"/>
        </div>

        <!-- 退出登录 (矩形) -->
        <div id="u108" class="ax_default _一级标题" data-label="退出登录">
            <div id="u108_div" class=""></div>
            <div id="u108_text" class="text ">
                <p><span>退出</span></p>
            </div>
        </div>

        <!-- 退出登录 (热区) -->
        <div id="u109" class="ax_default" data-label="退出登录">
        </div>

        <!-- logo (图片) -->
        <div id="u110" class="ax_default _图片" data-label="logo">
            <img id="u110_img" class="img " src="<%=path%>/images/管理员页/logo_u71.png"/>
        </div>

        <!-- Unnamed (图片) -->
        <div id="u111" class="ax_default _图片">
            <img id="u111_img" class="img " src="<%=path%>/images/主页/查询_u1.png"/>
        </div>
    </div>
</div>
</body>
</html>
