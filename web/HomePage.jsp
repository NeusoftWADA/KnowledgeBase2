<%--
  Created by IntelliJ IDEA.
  User: 齑粉玥
  Date: 2021/2/5
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>主页</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/><!--固定字体格式-->
    <link href="files/主页/styles.css" type="text/css" rel="stylesheet"/><!--本页的所有元素的颜色大小-->
    <script type="text/javascript" src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
    <script type="text/javascript">
        function denglu(){
            $("#u33_state0").css("display","block");
            $("u33_state0_content").css("display","block");
            $("#u33_state1").css("display","none");
            $("#u33_state1_content").css("display","none");
        }
        function zhuce(){
            $("#u33_state1").css("display","block");
            $("#u33_state1_content").css("display","block");
            $("#u33_state0").css("display","none");
            $("u33_state0_content").css("display","none");
        }
        function denglucuowu(){
            $("#u41 ").css("display","block");
        }
        function zhucecuowu1(){
            $("#u52 ").css("display","block");
            $("#u54 ").css("display","none");
            $("#u53 ").css("display","none");
        }
        function zhucecuowu2(){
            $("#u53 ").css("display","block");
            $("#u54 ").css("display","none");
            $("#u52 ").css("display","none");
        }
        function zhucecuowu3(){
            $("#u54 ").css("display","block");
            $("#u52 ").css("display","none");
            $("#u53 ").css("display","none");
        }
        function zhucechenggong(){
            $("#u33 ").css("display","block");
            $("#u33_state0").css("display","block");
            $("#u33_state0_content").css("display","block");
            $("#u24 ").css("display","block");
            $("#u24_div ").css("display","block");
            $("#u24_text ").css("display","block");
            $("#25_img ").css("display","block");
            $("#u25 ").css("display","block");
            $("#u25_text ").css("display","block");
            $("#u26_img ").css("display","block");
            $("#u26 ").css("display","block");
            $("#u26_img.mouseOver ").css("display","block");
            $("#u26_text ").css("display","block");
            $("#u27_img ").css("display","block");
            $("#u27 ").css("display","block");
            $("#u27_text ").css("display","block");
            $("#u28_img ").css("display","block");
            $("#u28 ").css("display","block");
            $("#u28_text ").css("display","block");
            $("#u29_div ").css("display","block");
            $("#u29 ").css("display","block");
            $("#u29_text ").css("display","block");
            $("#u30_div ").css("display","block");
            $("#u30 ").css("display","block");
            $("#u31 ").css("display","block");
            $("#u30_text ").css("display","block");
            $("#u32").css("display","block");
        }
        function yincang(){
            $("#u33 ").css("display","none");
            $("#u33_state0").css("display","none");
            $("#u33_state0_content").css("display","none");
            $("#u24 ").css("display","none");
            $("#u24_div ").css("display","none");
            $("#u24_text ").css("display","none");
            $("#25_img ").css("display","none");
            $("#u25 ").css("display","none");
            $("#u25_text ").css("display","none");
            $("#u26_img ").css("display","none");
            $("#u26 ").css("display","none");
            $("#u26_img.mouseOver ").css("display","none");
            $("#u26_text ").css("display","none");
            $("#u27_img ").css("display","none");
            $("#u27 ").css("display","none");
            $("#u27_text ").css("display","none");
            $("#u28_img ").css("display","none");
            $("#u28 ").css("display","none");
            $("#u28_text ").css("display","none");
            $("#u29_div ").css("display","none");
            $("#u29 ").css("display","none");
            $("#u29_text ").css("display","none");
            $("#u30_div ").css("display","none");
            $("#u30 ").css("display","none");
            $("#u31 ").css("display","none");
            $("#u30_text ").css("display","none");
            $("#u32").css("display","none");
        }

        function xianshi(){
            $("#u33_state0").css("display","block");
            $("u33_state0_content").css("display","block");
            $("#u33_state1").css("display","none");
            $("#u33_state1_content").css("display","none");
            $("#u33 ").css("display","block");
            $("#u33_state0").css("display","block");
            $("#u33_state0_content").css("display","block");
            $("#u24 ").css("display","block");
            $("#u24_div ").css("display","block");
            $("#u24_text ").css("display","block");
            $("#25_img ").css("display","block");
            $("#u25 ").css("display","block");
            $("#u25_text ").css("display","block");
            $("#u26_img ").css("display","block");
            $("#u26 ").css("display","block");
            $("#u26_img.mouseOver ").css("display","block");
            $("#u26_text ").css("display","block");
            $("#u27_img ").css("display","block");
            $("#u27 ").css("display","block");
            $("#u27_text ").css("display","block");
            $("#u28_img ").css("display","block");
            $("#u28 ").css("display","block");
            $("#u28_text ").css("display","block");
            $("#u29_div ").css("display","block");
            $("#u29 ").css("display","block");
            $("#u29_text ").css("display","block");
            $("#u30_div ").css("display","block");
            $("#u30 ").css("display","block");
            $("#u31 ").css("display","block");
            $("#u30_text ").css("display","block");
            $("#u32").css("display","block");

        }

    </script>
</head>

<body>

<div id="base" class="">

    <!-- logo (图片) -->
    <div id="u0" class="ax_default _图片" data-label="logo">
        <img id="u0_img" class="img " src="images/主页/logo_u0.png" alt="logo"/>
    </div>

    <!-- 查询 (图片) -->
    <div id="u1" class="ax_default _图片" data-label="查询">
        <img id="u1_img" class="img " src="images/主页/查询_u1.png" alt="查询"/>
    </div>

    <!-- 查询热区 (热区) -->
    <div id="u2" class="ax_default" onclick="javascript:window.location.href='SearchPage.jsp';" data-label="查询热区">
    </div>

    <!-- 登录1 (图片) -->
    <div id="u3" class="ax_default _图片" data-label="登录1">
        <img id="u3_img" class="img " src="images/主页/登录1_u3.png" alt="登录1"/>
    </div>

    <!-- 登录2 (矩形) -->
    <div id="u4" class="ax_default _一级标题" data-label="登录2">
        <div id="u4_div" class=""></div>
        <div id="u4_text" class="text ">
            <p><span>登录</span></p>
        </div>
    </div>

    <!-- 登录注册热区 (热区) -->
    <div onclick="xianshi()" id="u5"  class="ax_default"  data-label="登录注册热区">
    </div>

    <!-- Unnamed (内联框架) -->
    <div id="u6" class="ax_default">
        <iframe id="u6_input" scrolling="no" frameborder="1" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
    </div>

    <!-- 边框 (组 合) -->
    <div id="u7" class="ax_default" data-label="边框" data-left="353" data-top="295.5" data-width="794.5" data-height="1231.5">

        <!-- Unnamed (矩形) -->
        <div id="u8" class="ax_default box_2">
            <div id="u8_div" class=""></div>
        </div>

        <!-- Unnamed (矩形) -->
        <div id="u9" class="ax_default box_2">
            <div id="u9_div" class=""></div>
        </div>

        <!-- Unnamed (矩形) -->
        <div id="u10" class="ax_default box_2">
            <div id="u10_div" class=""></div>
        </div>

        <!-- Unnamed (矩形) -->
        <div id="u11" class="ax_default box_2">
            <div id="u11_div" class=""></div>
        </div>
    </div>

    <!-- 遮蔽 (矩形) -->
    <div id="u12" class="ax_default box_3" data-label="遮蔽">
        <img id="u12_img" class="img " src="images/主页/遮蔽_u12.png" alt="遮蔽" />
        <div id="u12_text" class="text ">
            <p><span>登录后查看更多知识</span></p><p><span><br></span></p><p><span><br></span></p><p><span><br></span></p><p><span><br></span></p><p><span><br></span></p><p><span><br></span></p><p><span><br></span></p>
        </div>
    </div>

    <!-- 计算机类 (梯形) -->
    <div id="u13" class="ax_default flow_shape selected" data-label="计算机类" selectiongroup="类别选项组">
        <img id="u13_img" class="img " src="images/主页/计算机类_u13_selected.png" alt="计算机类"/>
        <div id="u13_text" class="text ">
            <p><span>计算机</span></p>
        </div>
    </div>

    <!-- 英语类 (梯形) -->
    <div id="u14" class="ax_default flow_shape" data-label="英语类" selectiongroup="类别选项组">
        <img id="u14_img" class="img " src="images/主页/计算机类_u13.png" alt="英语类"/>
        <div id="u14_text" class="text ">
            <p><span>英语</span></p>
        </div>
    </div>

    <!-- 数学类 (梯形) -->
    <div id="u15" class="ax_default flow_shape" data-label="数学类" selectiongroup="类别选项组">
        <img id="u15_img" class="img " src="images/主页/计算机类_u13.png" alt="数学类"/>
        <div id="u15_text" class="text ">
            <p><span>数学</span></p>
        </div>
    </div>

    <!-- 物理类 (梯形) -->
    <div id="u16" class="ax_default flow_shape" data-label="物理类" selectiongroup="类别选项组">
        <img id="u16_img" class="img " src="images/主页/计算机类_u13.png" alt="物理类"/>
        <div id="u16_text" class="text ">
            <p><span>物理</span></p>
        </div>
    </div>

    <!-- 上标签切换按钮3 (矩形) -->
    <div id="u17" class="ax_default button" data-label="上标签切换按钮3">
        <div id="u17_div" class=""></div>
        <div id="u17_text" class="text ">
            <p><span>3</span></p>
        </div>
    </div>

    <!-- 上标签切换按钮2 (矩形) -->
    <div id="u18" class="ax_default button" data-label="上标签切换按钮2">
        <div id="u18_div" class=""></div>
        <div id="u18_text" class="text ">
            <p><span>2</span></p>
        </div>
    </div>

    <!-- 上标签切换按钮1 (矩形) -->
    <div id="u19" class="ax_default button" data-label="上标签切换按钮1">
        <div id="u19_div" class=""></div>
        <div id="u19_text" class="text ">
            <p><span>1</span></p>
        </div>
    </div>

    <!-- 上标签 (动态面板) -->
    <div id="u20" class="ax_default" data-label="上标签">
        <div id="u20_state0" class="panel_state" data-label="State1" style="">
            <div id="u20_state0_content" class="panel_state_content">

                <!-- Unnamed (图片) -->
                <div id="u21" class="ax_default image">
                    <img id="u21_img" class="img " src="images/主页/u21.jpg" alt=" "/>
                </div>
            </div>
        </div>
        <div id="u20_state1" class="panel_state" data-label="State2" style="visibility: hidden;">
            <div id="u20_state1_content" class="panel_state_content">

                <!-- Unnamed (图片) -->
                <div id="u22" class="ax_default image">
                    <img id="u22_img" class="img " src="images/主页/u22.jpg" alt=" "/>
                </div>
            </div>
        </div>
        <div id="u20_state2" class="panel_state" data-label="State3" style="visibility: hidden;">
            <div id="u20_state2_content" class="panel_state_content">

                <!-- Unnamed (图片) -->
                <div id="u23" class="ax_default image">
                    <img id="u23_img" class="img " src="images/主页/u23.jpg" alt=" "/>
                </div>
            </div>
        </div>
    </div>

    <!-- 遮蔽2 (矩形) -->
    <div id="u24" class="ax_default box_3" data-label="遮蔽2">
        <div id="u24_div" class=""></div>
    </div>

    <!-- 弹出登陆注册框 (矩形) -->
    <div id="u25" class="ax_default box_1" data-label="弹出登陆注册框">
        <img id="u25_img" class="img " src="images/主页/弹出登陆注册框_u25.png" alt="弹出登陆注册框"/>
    </div>

    <!-- 取消按钮 (形状) -->
    <div onclick="yincang()" id="u26" class="ax_default icon" data-label="取消按钮">
        <img id="u26_img" class="img " src="images/主页/取消按钮_u26.png" alt="取消按钮"/>
    </div>

    <!-- 注册底框 (图片) -->
    <div id="u27" class="ax_default image" data-label="注册底框" selectiongroup="登录or注册">
        <img id="u27_img" class="img " src="images/主页/注册底框_u27.png" alt="注册底框"/>
    </div>

    <!-- 登录底框 (图片) -->
    <div id="u28" class="ax_default image selected" data-label="登录底框" selectiongroup="登录or注册">
        <img id="u28_img" class="img " src="images/主页/登录底框_u28.png" alt="登录底框"/>
    </div>

    <!-- 登录 (矩形) -->
    <div id="u29" class="ax_default _一级标题" data-label="登录">
        <div id="u29_div" class=""></div>
        <div id="u29_text" class="text ">
            <p><span>登 录</span></p>
        </div>
    </div>

    <!-- 注册 (矩形) -->
    <div id="u30" class="ax_default _一级标题" data-label="注册">
        <div id="u30_div" class=""></div>
        <div id="u30_text" class="text ">
            <p><span>注 册</span></p>
        </div>
    </div>

    <!-- 登录热区 (热区) -->
    <div onclick="denglu()" id="u31" class="ax_default" data-label="登录热区">
    </div>

    <!-- 注册热区 (热区) -->
    <div onclick="zhuce()" id="u32" class="ax_default" data-label="注册热区">
    </div>

    <!-- 登录注册 (动态面板) -->
    <div id="u33" class="ax_default" data-label="登录注册">
        <div id="u33_state0" class="panel_state" data-label="登录" >
            <div id="u33_state0_content" class="panel_state_content">

                <!-- 登录账户边框 (矩形) -->
                <div id="u34" class="ax_default box_1" data-label="登录账户边框">
                    <div id="u34_div" class=""></div>
                </div>

                <!-- 登录密码边框 (矩形) -->
                <div id="u35" class="ax_default box_1" data-label="登录密码边框">
                    <div id="u35_div" class=""></div>
                </div>

            <form action="/myweb/login" method="post">
                <!-- 登录账户名 (文本框) -->
                <div id="u36" class="ax_default text_field" data-label="登录账户名">
                    <label for="u36_input"></label><input id="u36_input" type="text"  name="id"/>
                </div>

                <!-- 登录密码 (文本框) -->
                <div id="u37" class="ax_default text_field" data-label="登录密码">
                    <label for="u37_input"></label><input id="u37_input" type="password"  name="upassword"/>
                </div>

                <c:if test="${requestScope.loginResult != 1}">
                    <!-- 登录错误提示 (矩形) -->
                    <div id="u41" class="ax_default label" data-label="登录错误提示">
                        <div id="u41_div" class=""></div>
                        <div id="u41_text" class="text ">
                            <p><span>*用户名密码有误，请仔细核对后再登录</span></p>
                        </div>
                    </div>
                </c:if>

                <%--   <!-- 登录按钮 (矩形) -->
                  <div  id="u38" class="ax_default primary_button" data-label="登录按钮" >
                     <button id="u38_div" name="SignIn" class="" style=" color:#FFFFFF; border-width:0;position:absolute;left:0;top:0;width:109px;height:36px;background:inherit;background-color:rgba(90, 219, 246, 1);border:none;border-radius:5px;-moz-box-shadow:none;-webkit-box-shadow:none;box-shadow:none; font-size:18px;">
                      登录
                      </button>  </div> --%>
                <input type="submit" value="登录" id="u38_div"class="ax_default primary_button" data-label="登录按钮"  style=" color:#FFFFFF; border-width:0;position:absolute;left:0;top:0;width:109px;height:36px;background:inherit;background-color:rgba(90, 219, 246, 1);border:none;border-radius:5px;-moz-box-shadow:none;-webkit-box-shadow:none;box-shadow:none; font-size:18px;"/>

            </form>
                <!-- 登录账户输入提示 (矩形) -->
                <div id="u39" class="ax_default label" data-label="登录账户输入提示">
                    <div id="u39_div" class=""></div>
                    <div id="u39_text" class="text ">
                        <p><span>请输入账户名（手机号）</span></p>
                    </div>
                </div>

                <!-- 登录密码输入提示 (矩形) -->
                <div id="u40" class="ax_default label" data-label="登录密码输入提示">
                    <div id="u40_div" class=""></div>
                    <div id="u40_text" class="text ">
                        <p><span>请输入密码</span></p>
                    </div>
                </div>


            </div>
        </div>
        <div id="u33_state1" class="panel_state" data-label="注册" >
            <div id="u33_state1_content" class="panel_state_content">

                <!-- 注册输入账户框 (矩形) -->
                <div id="u42" class="ax_default box_1" data-label="注册输入账户框">
                    <div id="u42_div" class=""></div>
                </div>

                <!-- 注册输入密码框 (矩形) -->
                <div id="u43" class="ax_default box_1" data-label="注册输入密码框">
                    <div id="u43_div" class=""></div>
                </div>



                <!-- 注册账号输入提示 (矩形) -->
                <div id="u46" class="ax_default label" data-label="注册账号输入提示">
                    <div id="u46_div" class=""></div>
                    <div id="u46_text" class="text ">
                        <p><span>请输入注册手机号</span></p>
                    </div>
                </div>

                <!-- 注册密码输入提示 (矩形) -->
                <div id="u47" class="ax_default label" data-label="注册密码输入提示">
                    <div id="u47_div" class=""></div>
                    <div id="u47_text" class="text ">
                        <p><span>请输入密码（至少六位数）</span></p>
                    </div>
                </div>

                <!-- 注册再次输入密码框 (矩形) -->
                <div id="u48" class="ax_default box_1" data-label="注册再次输入密码框">
                    <div id="u48_div" class=""></div>
                </div>

                <!-- 注册再次密码输入提示 (矩形) -->
                <div id="u50" class="ax_default label" data-label="注册再次密码输入提示">
                    <div id="u50_div" class=""></div>
                    <div id="u50_text" class="text ">
                        <p><span>再次确认密码</span></p>
                    </div>
                </div>

                    <!-- 注册账号 (文本框) -->
                    <form id="u44"  class="ax_default text_field" data-label="注册账号" >
                        <label for="u44_input"></label><input id="u44_input" type="text" value="" name="userid—1"/>
                    </form>

                    <!-- 注册密码 (文本框) -->
                    <form id="u45" class="ax_default text_field" data-label="注册密码">
                        <label for="u45_input"></label><input id="u45_input" type="password" value=""  name="password—1"/>
                    </form>

                    <!-- 注册再次密码 (文本框) -->
                <form id="u49" class="ax_default text_field" data-label="注册再次密码" >
                    <label for="u49_input"></label><input id="u49_input" type="password" value=""  name="repeat—1"/>
                </form>


                <!-- 注册按钮 (矩形) -->
                <form  id="51" class="ax_default primary_button" data-label="注册按钮" style="border-width:0;position:absolute;left:252px;top:173px;width:109px;height:36px;font-size:18px;" >
                    <button id="u51_div" name="Register" class="" style=" color:#FFFFFF;border-width:0;position:absolute;left:0;top:0;width:109px;height:36px;background:inherit;background-color:rgba(90, 219, 246, 1);border:none;border-radius:5px;-moz-box-shadow:none;-webkit-box-shadow:none;box-shadow:none; font-size:18px;">
                        注册
                    </button>
                </form>

                <!-- 注册错误提示1 (矩形) -->
                <div id="u52" class="ax_default label" data-label="注册错误提示1">
                    <div id="u52_div" class=""></div>
                    <div id="u52_text" class="text ">
                        <p><span>*该账户已被注册</span></p>
                    </div>
                </div>

                <!-- 注册错误提示2 (矩形) -->
                <div id="u53" class="ax_default label" data-label="注册错误提示2">
                    <div id="u53_div" class=""></div>
                    <div id="u53_text" class="text ">
                        <p><span>*密码长度不符合要求</span></p>
                    </div>
                </div>

                <!-- 注册错误提示3 (矩形) -->
                <div id="u54" class="ax_default label" data-label="注册错误提示3">
                    <div id="u54_div" class=""></div>
                    <div id="u54_text" class="text ">
                        <p><span>*第二次密码输入错误</span></p>
                    </div>
                </div>

                <!-- 注册成功 (组 合) -->
                <div id="u55" class="ax_default" data-label="注册成功" data-left="32" data-top="6" data-width="363" data-height="207">

                    <!-- Unnamed (矩形) -->
                    <div id="u56" class="ax_default box_3">
                        <div id="u56_div" class=""></div>
                        <div id="u56_text" class="text ">
                            <p style="font-size:16px;"><span>已成功注册&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p><p style="font-size:12px;"><span style="font-size:16px;">请点击返回登录&nbsp; &nbsp;&nbsp; </span><span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p>
                        </div>
                    </div>

                    <!-- Unnamed (图片) -->
                    <div id="u57" class="ax_default _图片">
                        <img id="u57_img" class="img " src="images/主页/u57.png" alt=" "/>
                    </div>

                    <!-- Unnamed (热区) -->
                    <div id="u58" class="ax_default">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 用户头像 (图片) -->
    <div id="u59" class="ax_default _图片" onclick="javascript:window.location.href='PersonalPage.jsp';" data-label="用户头像">
        <img id="u59_img" class="img " src="images/主页/用户头像_u59.png" alt="用户头像"/>
    </div>

    <!-- 管理员头像 (图片) -->
    <div id="u60" class="ax_default _图片" onclick="javascript:window.location.href='ManagerPage.jsp';" data-label="管理员头像">
        <img id="u60_img" class="img " src="images/主页/管理员头像_u60.png" alt="管理员头像" />
    </div>

    <!-- 退出登录 (矩形) -->
    <div id="u61" class="ax_default _一级标题" data-label="退出登录">
        <div id="u61_div" class=""></div>
        <div id="u61_text" class="text ">
            <p><span>退出</span></p>
        </div>
    </div>

    <!-- 退出登录 (热区) -->
    <div id="u62" class="ax_default" data-label="退出登录">
    </div>
</div>
</body>
</html>

