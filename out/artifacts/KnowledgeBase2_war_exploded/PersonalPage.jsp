<%@ page import="java.util.List" %>
<%@ page import="entity.Knowledge" %>
<%@ page import="entity.User_detail" %><%--
  Created by IntelliJ IDEA.
  User: 齑粉玥
  Date: 2021/2/5
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>

<%--删除成功暂时注销--%>

<%
    User_detail user_detail =(User_detail) session.getAttribute("user_detail");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>个人页</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/个人页/styles.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<div id="base" class="">

    <!-- 边框 (图片) -->
    <div id="u95" class="ax_default image" data-label="边框">
        <img id="u95_img" class="img " src="images/个人页/边框_u95.png"/>
    </div>

    <!-- 用户账号1 (矩形) -->
    <div id="u96" class="ax_default label" data-label="用户账号1">
        <div id="u96_div" class=""></div>
        <div id="u96_text" class="text ">
            <p><span style="color:#FFFFFF;">账号：</span></p><p><span><br></span></p>
        </div>
    </div>


    <!-- 录入底框 (矩形) -->
    <div id="u98" class="ax_default box_2" data-label="录入底框">
        <img id="u98_img" class="img " src="images/个人页/录入底框_u98.png"/>
    </div>

    <!-- 录入按钮 (图片) -->
    <div id="u99" class="ax_default _图片" onclick="javascript:window.location.href='KnowledgeInput.jsp';"data-label="录入按钮">
        <img id="u99_img" class="img " src="images/个人页/录入按钮_u99.png"/>
    </div>

    <!-- 用户账号2 (矩形) -->
    <div id="u100" class="ax_default label" data-label="用户账号2">
        <div id="u100_div" class=""></div>
        <div id="u100_text" class="text ">
            <p><span style="color:#FFFFFF;">${sessionScope.uid}</span><span> </span></p>
        </div>
    </div>

    <!-- 个性签名 (矩形) -->
    <div id="u106" class="ax_default _文本段落" data-label="个性签名">
        <div id="u106_div" class=""></div>
        <div id="u106_text" class="text ">
            <p><span style="color:#FFFFFF;">个性签名：<%=user_detail.getTitle()%></span></p><p><span><br></span></p><p><span><br></span></p>
        </div>
    </div>

    <!-- 爱好 (矩形) -->
    <div id="u97" class="ax_default label" data-label="爱好">
        <div id="u97_div" class=""></div>
        <div id="u97_text" class="text ">
            <p><span style="color:#FFFFFF;">&nbsp;&nbsp; 爱&nbsp;&nbsp; 好 ：<%=user_detail.getContent()%></span></p><p><span><br></span></p>
        </div>
    </div>

    <!-- 性别 (矩形) -->
    <div id="u105" class="ax_default label" data-label="性别">
        <div id="u105_div" class=""></div>
        <div id="u105_text" class="text ">
            <p><span style="color:#FFFFFF;">&nbsp;&nbsp; 性&nbsp;&nbsp; 别 ：<%=user_detail.getSex()%></span></p><p><span><br></span></p>
        </div>
    </div>

    <!-- 学校 (矩形) -->
    <div id="u101" class="ax_default label" data-label="学校">
        <div id="u101_div" class=""></div>
        <div id="u101_text" class="text ">
            <p><span style="color:#FFFFFF;">&nbsp;&nbsp; 学&nbsp;&nbsp; 校：<%=user_detail.getSchool()%></span></p><p><span><br></span></p>
        </div>
    </div>

    <!-- 专业 (矩形) -->
    <div id="u124" class="ax_default label" data-label="专业">
        <div id="u124_div" class=""></div>
        <div id="u124_text" class="text ">
            <p><span style="color:#FFFFFF;">&nbsp;&nbsp; 专&nbsp;&nbsp; 业：<%=user_detail.getProfession()%></span></p><p><span><br></span></p>
        </div>
    </div>


    <%
        List<Knowledge> knoList = (List)request.getAttribute("knowledges");

        for (int i = 0; i < knoList.size(); i++) {
            if (i==0){
    %>
        <!-- Unnamed (矩形) -->
        <div id="u107" class="ax_default box_3">
            <div id="u107_div" class=""></div>
            <div id="u107_text" class="text ">
                <p><span><a href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp; &nbsp; 1、<%=knoList.get(i).getTitle()%></a> </span></p>
            </div>
        </div>
    <%
            }else if (i==1){
    %>
        <!-- Unnamed (矩形) -->
        <div id="u108" class="ax_default box_3">
            <div id="u108_div" class=""></div>
            <div id="u108_text" class="text ">
                <p><span><a href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp; &nbsp;2、 <%=knoList.get(i).getTitle()%></a> </span></p>
            </div>
        </div>
    <%
            }else if (i==2){
    %>
        <!-- Unnamed (矩形) -->
        <div id="u103" class="ax_default box_3">
            <div id="u103_div" class=""></div>
            <div id="u103_text" class="text ">
                <p><span><a href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp; &nbsp;3、 <%=knoList.get(i).getTitle()%></a> </span></p>
            </div>
        </div>
    <%
            }else if (i==3){
    %>
        <!-- Unnamed (矩形) -->
        <div id="u112" class="ax_default box_3">
            <div id="u112_div" class=""></div>
            <div id="u112_text" class="text ">
                <p><span><a href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp; &nbsp;4、 <%=knoList.get(i).getTitle()%></a> </span></p>
            </div>
        </div>
    <%
            }else if (i==4){
    %>
        <!-- Unnamed (矩形) -->
        <div id="u104" class="ax_default box_3">
            <div id="u104_div" class=""></div>
            <div id="u104_text" class="text ">
                <p><span><a href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp; &nbsp;5、 <%=knoList.get(i).getTitle()%></a> </span></p>
            </div>
        </div>--%>
    <%
            }else if (i==5){
    %>
        <!-- Unnamed (矩形) -->
        <div id="u109" class="ax_default box_3">
            <div id="u109_div" class=""></div>
            <div id="u109_text" class="text ">
                <p><span><a href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp; &nbsp;6、 <%=knoList.get(i).getTitle()%></a> </span></p>
            </div>
        </div>
    <%
            }else if (i==6){
    %>
        <!-- Unnamed (矩形) -->
        <div id="u110" class="ax_default box_3">
            <div id="u110_div" class=""></div>
            <div id="u110_text" class="text ">
                <p><span><a href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp; &nbsp;7、 <%=knoList.get(i).getTitle()%></a> </span></p>
            </div>
        </div>
    <%
            }else if (i==7){
    %>
        <!-- Unnamed (矩形) -->
        <div id="u113" class="ax_default box_3">
            <div id="u113_div" class=""></div>
            <div id="u113_text" class="text ">
                <p><span><a href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp; &nbsp;8、 <%=knoList.get(i).getTitle()%></a> </span></p>
            </div>
        </div>
    <%
            }else if (i==8){
    %>

        <!-- Unnamed (矩形) -->
        <div id="u111" class="ax_default box_3">
            <div id="u111_div" class=""></div>
            <div id="u111_text" class="text ">
                <p><span><a href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp; &nbsp;9、 <%=knoList.get(i).getTitle()%></a> </span></p>
            </div>
        </div>
    <%
            }else if (i==9){
    %>
        <!-- Unnamed (矩形) -->
        <div id="u102" class="ax_default box_3">
            <div id="u102_div" class=""></div>
            <div id="u102_text" class="text ">
                <p><span><a href="/myweb/show/Knowledge/Context?title=<%=knoList.get(i).getTitle()%>">&nbsp;&nbsp; &nbsp;10、 <%=knoList.get(i).getTitle()%></a> </span></p>
            </div>
        </div>

    <%
            }
        }
    %>





    <!-- 删除知识点按钮 (图片) -->
    <div id="u114" class="ax_default _图片" data-label="删除知识点按钮">
        <img id="u114_img" class="img " src="images/个人页/删除知识点按钮_u114.png"/>
    </div>

    <!-- 分类按钮 (图片) -->
    <div id="u115" class="ax_default _图片" data-label="分类按钮">
        <img id="u115_img" class="img " src="images/个人页/分类按钮_u115.png"/>
    </div>

    <!-- 分享按钮1 (图片) -->
    <div id="u116" class="ax_default _图片" data-label="分享按钮1">
        <img id="u116_img" class="img " src="images/个人页/分享按钮1_u116.png"/>
    </div>

    <!-- 分类组合 (组 合) -->
    <div id="u117" class="ax_default" data-label="分类组合" data-left="785" data-top="613" data-width="88" data-height="99">

        <!-- Unnamed (矩形) -->
        <div id="u118" class="ax_default box_3">
            <div id="u118_div" class=""></div>
        </div>

        <!-- Unnamed (单选按钮) -->
        <div id="u119" class="ax_default radio_button">
            <label for="u119_input" style="position: absolute; left: 0px;">
                <div id="u119_text" class="text ">
                    <p><span>计算机类</span></p>
                </div>
            </label>
            <input id="u119_input" type="radio" value="radio" name="类别"/>
        </div>

        <!-- Unnamed (单选按钮) -->
        <div id="u120" class="ax_default radio_button">
            <label for="u120_input" style="position: absolute; left: 0px;">
                <div id="u120_text" class="text ">
                    <p><span>数学类</span></p>
                </div>
            </label>
            <input id="u120_input" type="radio" value="radio" name="类别"/>
        </div>

        <!-- Unnamed (单选按钮) -->
        <div id="u121" class="ax_default radio_button">
            <label for="u121_input" style="position: absolute; left: 0px;">
                <div id="u121_text" class="text ">
                    <p><span>英语类</span></p>
                </div>
            </label>
            <input id="u121_input" type="radio" value="radio" name="类别"/>
        </div>

        <!-- Unnamed (单选按钮) -->
        <div id="u122" class="ax_default radio_button">
            <label for="u122_input" style="position: absolute; left: 0px;">
                <div id="u122_text" class="text ">
                    <p><span>物理</span></p>
                </div>
            </label>
            <input id="u122_input" type="radio" value="radio" name="类别"/>
        </div>

        <!-- Unnamed (三角形) -->
        <div id="u123" class="ax_default flow_shape">
            <img id="u123_img" class="img " src="images/个人页/u123.png"/>
        </div>
    </div>



    <!-- 个人信息按钮 (热区) -->
    <div id="u125" class="ax_default" onclick="javascript:window.location.href='PersonalInformation.jsp';" data-label="个人信息按钮">
    </div>

    <!-- 导航 (组 合) -->
    <div id="u126" class="ax_default" data-label="导航" data-left="-122" data-top="0" data-width="1823" data-height="56">

        <!-- Unnamed (矩形) -->
        <div id="u127" class="ax_default box_2" >
            <div id="u127_div" class=""></div>
        </div>

        <!-- 主页按钮 (图片) -->
        <div id="u128" class="ax_default _图片" data-label="主页按钮" onclick="javascript:window.location.href='HomePage.jsp';">
            <img id="u128_img" class="img " src="images/管理员页/主页按钮_u66.png"/>
        </div>

        <!-- logo (图片) -->
        <div id="u129" class="ax_default _图片" data-label="logo">
            <img id="u129_img" class="img " src="images/管理员页/logo_u67.png"/>
        </div>

        <!-- 退出登录 (矩形) -->
        <div id="u130" class="ax_default _一级标题" data-label="退出登录">
            <div id="u130_div" class=""></div>
            <div id="u130_text" class="text ">
                <p><span>退出</span></p>
            </div>
        </div>

        <!-- 退出登录 (热区) -->
        <div id="u131" class="ax_default" data-label="退出登录">
        </div>

        <!-- 用户头像 (图片) -->
        <div id="u132" class="ax_default _图片" data-label="用户头像">
            <img id="u132_img" class="img " src="images/主页/用户头像_u59.png"/>
        </div>

        <!-- logo (图片) -->
        <div id="u133" class="ax_default _图片" data-label="logo">
            <img id="u133_img" class="img " src="images/管理员页/logo_u71.png"/>
        </div>

        <!-- Unnamed (图片) -->
        <div id="u134" class="ax_default _图片"onclick="javascript:window.location.href='SearchPage.jsp';">
            <img id="u134_img" class="img " src="images/主页/查询_u1.png"/>
        </div>
    </div>

<%--    <!-- 删除成功 (组 合) -->
    <div id="u135" class="ax_default" data-label="录入成功" data-left="-223" data-top="0" data-width="2721" data-height="1488">

        <!-- 遮蔽 (矩形) -->
        <div id="u136" class="ax_default box_3" data-label="遮蔽">
            <div id="u136_div" class=""></div>
        </div>

        <!-- 成功提示 (矩形) -->
        <div id="u137" class="ax_default box_3" data-label="成功提示">
            <div id="u137_div" class=""></div>
            <div id="u137_text" class="text ">
                <p><span>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 已删除，请刷新查看</span></p>
            </div>
        </div>

        <!-- 成功图标 (图片) -->
        <div id="u138" class="ax_default _图片" onclick="window.location.reload()"  data-label="成功图标">
            <img id="u138_img" class="img " src="images/主页/u57.png"/>
        </div>

    </div>--%>
</div>
</body>
</html>
