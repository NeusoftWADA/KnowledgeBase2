<%--
  Created by IntelliJ IDEA.
  User: 齑粉玥
  Date: 2021/2/5
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";%>
<base href="<%=basePath%>">
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
    <style>
        .picture {
            border-width:0;
            position:absolute;
            left:374px;
            top:39px;
            width:777px;
            height:131px;

            -ms-overflow-x:hidden;
            overflow-x:hidden;
            -ms-overflow-y:hidden;
            overflow-y:hidden;
            background-image:none;
        }

        .radius {           /* 圆点所在的p (容器)  */
            width: 100%;
            height: 10px;
            position: absolute;
            bottom: 30px;
            text-align: center;
        }

        .pg {
            position: absolute;
            margin: 0;
            width: 100%;
            height: 20px;
            background-color: rgba(0, 0, 0, .4);
            text-align: center;
            font-size: 16px;
            font-weight: 600;
            color: #fff;
        }

        .title {
            visibility: hidden;
            position: absolute;
            width: 100%;
            bottom: 0px;
            text-align: center;
            font-size: 16px;
            font-weight: 600;
            color: rgb(21, 223, 72);
        }

        .spans {
            display: inline-block;
            border: 10px solid #fdfdfd;
            border-radius: 50%;
        }

        .spans:active {
            border: 10px solid #656466;
        }

        /* 左右箭头  */
        .arrowhead-left,
        .arrowhead-right {
            position: absolute;
            width: 41px;
            height: 69px;
            font-size: 30px;
            line-height: 70px;
            text-align: center;
            color: #D6D8D4;
            background-color: rgba(0,0,0,.3);
        }

        .arrowhead-left {
            left: 0;
            top: 30%;
        }

        .arrowhead-right {
            right: 0;
            top: 30%;
        }
    </style>

</head>

<body>
<!-- 圆点  -->
<div id="u63" class="ax_default _一级标题" data-label="注册" style="width: 100%;
            height: 10px;
            position: absolute;
            bottom: 30px;
            text-align: center;top:0%"></div>
    <div id="u63_div" class=""></div>
    <div id="u63_text" class="text ">
        <p><span ></span></p>
    </div>
<div id="base" class="">
    <div class="picture">

        <img src="./images/主页/u20.jpg " alt="">

        <!-- 小圆点点 -->
        <p class="radius"  id="radius"></p>
        <!-- 图片的下面标题 -->
        <p class="title">标题</p>

        <!-- 左右箭头 -->
        <div class="arrowhead-left" id="al"> < </div>
        <div class="arrowhead-right" id="ar"> > </div>
    </div>

    <script>
        var address = ["./images/主页/u21.jpg", "./images/主页/u22.jpg","./images/主页/u23.jpg"];
        //  var imgs = document.getElementsByTagName("img");
        var imgs = document.querySelector("img");
        var len = address.length;               //图片地址的数量为len
        var str = "";
        var pp = document.getElementsByTagName("p");//获取的是p标签的集合
        //  var pp  = document.querySelector("p");    //获取的是一个元素
        var al = document.getElementById("al");
        var ar = document.getElementById("ar");
        var n = 0 ;

        //添加span标签（小圆点），个数为len个
        for (i = 0; i < len; i++) {
            str += ' <span ><div class="spans"></div></span>'
        }
        pp[1].innerHTML = str;

        var spans = pp[1].getElementsByTagName('span');  //获取p[1]里所有span标签
        spans[0].className = 'spans:active ';                  //给第一个span标签添加样式 active

        for (i = 0; i < len; i++) {
            spans[i].index = i;              //自定义索引值

            spans[i].onmouseover = function () {            //鼠标指向圆点时的事件
                for (i = 0; i < len; i++) {
                    spans[i].className = "";               //通过循环，清除所有圆点的类名
                }
                n=this.index ;
                this.className = '.spans:active';                 //给鼠标移入的圆点添加类名
                imgs.src = address[this.index];


            }

        }

        ar.onclick = function () {            //右侧箭头，点击一次图片向右换一张
            n++;
            if (n>5) {
                n=0;
            }
            for (i = 0; i < len; i++) {
                spans[i].className = "";
            }

            spans[n].className = "spans:active ";
            imgs.src = address[n];


        }

        al.onclick = function () {        // //左侧箭头，点击一次图片向左换一张
            n--;
            if (n<0) {
                n=(len-1);
            }
            for (i = 0; i < len; i++) {
                spans[i].className = "";
            }
            spans[n].className = "spans:active ";
            imgs.src = address[n];

        }

        setInterval(ar.onclick,3000);             //添加定时器  setInterval（函数，间隔时间单位为毫秒）
                                                  //此次添加的函数为点击右侧箭头，间隔为3秒
    </script>
    <!-- logo (图片) -->
    <div id="u0" class="ax_default _图片" data-label="logo">
        <img id="u0_img" class="img" src="images/主页/logo_u0.png" alt="logo"/>
    </div>

    <!-- 查询 (图片) -->
    <div id="u1" class="ax_default _图片" data-label="查询">
        <img id="u1_img" class="img" src="images/主页/查询_u1.png" alt="查询"/>
    </div>

    <!-- 查询热区 (热区) -->
    <div id="u2" class="ax_default" onclick="javascript:window.location.href='SearchPage.jsp';" data-label="查询热区">
    </div>

    <!-- 登录 (矩形) -->
    <div id="u3" class="ax_default _一级标题" data-label="登录">
        <div id="u3_div" class=""></div>
        <div id="u3_text" class="text ">
            <p><span >登录</span></p>
        </div>
    </div>

    <!-- 登录热区 (热区) -->
    <div id="u4" class="ax_default" onclick="javascript:window.location.href='SignInPage.jsp';" data-label="登录热区">
    </div>

    <!-- 注册 (矩形) -->
    <div id="u5" class="ax_default _一级标题" data-label="注册">
        <div id="u5_div" class=""></div>
        <div id="u5_text" class="text ">
            <p><span >注册</span></p>
        </div>
    </div>

    <!-- 注册热区 (热区) -->
    <div id="u24" class="ax_default" onclick="javascript:window.location.href='RegisterPage.jsp';" data-label="注册热区">
    </div>

    <!-- Unnamed (内联框架) -->
    <div id="u6" class="ax_default">
        <iframe name="iframe1" id="u6_input" scrolling="no" frameborder="1"  src="javascript:window.location.href='ComputerClass.jsp';"></iframe>
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

    </div>

    
    <!-- 英语类 (梯形) -->
    <div id="u14" class="ax_default flow_shape" data-label="英语类" selectiongroup="类别选项组">
        <img id="u14_img" class="img " src="images/主页/计算机类_u13.png" alt="英语类"/>

    </div>


    <!-- 数学类 (梯形) -->
    <div id="u15" class="ax_default flow_shape" data-label="数学类" selectiongroup="类别选项组">
        <img id="u15_img" class="img " src="images/主页/计算机类_u13.png" alt="数学类"/>

    </div>

    <!-- 物理类 (梯形) -->
    <div id="u16" class="ax_default flow_shape" data-label="物理类" selectiongroup="类别选项组">
        <img id="u16_img" class="img " src="images/主页/计算机类_u13.png" alt="物理类"/>

    </div>

    <a id="u13_text" href="javascript:window.location.href='ComputerClass.jsp';"  style="text-decoration:none; color:#0BA4C6; left: 368px;top: 260px;font-size: 25;"target="iframe1">计算机</a>
    <a id="u14_text" href="javascript:window.location.href='EnglishClass.jsp';" style="text-decoration:none; color:#0BA4C6; top: 260px;font-size: 25;left: 480px;"target="iframe1">英 语</a>
    <a id="u15_text" href="javascript:window.location.href='MathematicsClass.jsp';" style="text-decoration:none;color:#0BA4C6; top: 260px;font-size: 25;left: 585px;" target="iframe1">数 学</a>
    <a id="u16_text" href="javascript:window.location.href='PhysicalClass.jsp';" style="text-decoration:none; color:#0BA4C6; top: 260px;font-size: 25;left: 688px;" target="iframe1">物 理</a>


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

