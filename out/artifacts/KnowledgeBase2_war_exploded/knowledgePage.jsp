<%@ page import="entity.Knowledge" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 齑粉玥
  Date: 2021/2/5
  Time: 19:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>知识点页</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/知识点页/styles.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
</head>
<%
    Knowledge knowledge =(Knowledge) request.getAttribute("knowledge");
    String cname = (String) request.getAttribute("cname");
%>
<body>
<div id="base" class="">

    <!-- 边框 (图片) -->
    <div id="u307" class="ax_default image" data-label="边框">
        <img id="u307_img" class="img " src="images/知识点页/边框_u307.png"/>
    </div>

    <!-- 返回主页 (组 合) -->
    <div id="u308" class="ax_default" data-label="返回主页" data-left="0" data-top="0" data-width="0" data-height="0">
    </div>

    <!-- 标题 (矩形) -->
    <div id="u309" class="ax_default _一级标题" data-label="标题">
        <div id="u309_div" class=""></div>
        <div id="u309_text" class="text ">
            <p><span> <%=knowledge.getTitle()%></span></p>
        </div>
    </div>

    <!-- 内容 (多行文本框) -->
    <div id="u310" class="ax_default text_area" data-label="内容">
        <textarea id="u310_input">

            <%=knowledge.getContent()%>



            <%--五个基本的关系代数操作
&nbsp; &nbsp; 并、差、笛卡尔积、选择、投影
数据库语言四大类
&nbsp; &nbsp; DQL（Data Query Language）：数据库查询语言。
&nbsp; &nbsp; DDL（Data Definition Language）：数据库定义语言。定义关系模式、删除关系、修改关系模式。
&nbsp; &nbsp; &nbsp; &nbsp; 关系、属性
&nbsp; &nbsp; DML（Data Manipulation Language）：数据库操纵语言。插入元组、删除元组、修改元组。
&nbsp; &nbsp; &nbsp; &nbsp; 元组
&nbsp; &nbsp; DCL（Data Control Language）：数据库控制语言。用来授权或回收访问数据库的某种特权，并控制数据库操纵事务发生的时间及效果。
&nbsp; &nbsp; &nbsp; &nbsp; GRANT、revoke
&nbsp; &nbsp; &nbsp; &nbsp; commit / rollback work
完整性

&nbsp; &nbsp; 实体完整性：要求每个关系（表）有且仅有一个主键，每一个主键值必须唯一，而且不允许为“空”（NULL）或重复。
&nbsp; &nbsp; &nbsp; &nbsp; 主键
&nbsp; &nbsp; 参照完整性：对于永久关系的相关表，在更新、插入或删除记录时，如果只改其一，就会影响数据的完整性。如删除父表的某记录后，子表的相应记录未删除，致使这些记录称为孤立记录。对于更新、插入或删除表间数据的完整性。
&nbsp; &nbsp; &nbsp; &nbsp; 外键
&nbsp; &nbsp; 自定义完整性
基础操作
&nbsp; &nbsp; 创建关系
create table instructor2(
&nbsp; &nbsp; id char(5) not null,
&nbsp; &nbsp; name varchar(20) not null,
&nbsp; &nbsp; dept_name varchar(20) not null,
&nbsp; &nbsp; salary numeric(8,2),
&nbsp; &nbsp; primary key(id)
);
可看出对属性进行了相关定义。
这里写图片描述
&nbsp; &nbsp; 插入元组
&nbsp; &nbsp; &nbsp; &nbsp; insert into 关系名 values(每个属性对应的值)；
insert into instructor2 values(00001,'ai','math',2500.37);
insert into instructor2 values(00002,'la','math',3700.89);
insert into instructor2 values(00003,'bi','math',5400.45);
insert into instructor2 values(00004,'ma','english',1450.23);
insert into instructor2 values(00005,'ye','english',3421.34);
insert into instructor2 values(00006,'er','technology',10000.65)；
删除所有元组
&nbsp; &nbsp; delete from 关系名；
&nbsp; &nbsp; &nbsp; &nbsp; 删除了元组，但关系和属性还存在。
&nbsp; &nbsp; &nbsp; &nbsp; 这里写图片描述
删除关系
&nbsp; &nbsp; drop table 关系名；
&nbsp; &nbsp; &nbsp; &nbsp; 删除了关系，进行select查询时会出现关系名无效的错误。
&nbsp; &nbsp; &nbsp; &nbsp; 这里写图片描述
属性操作
&nbsp; &nbsp; alter table 关系名 add 新属性 数据类型，新属性 数据类型，⋯
&nbsp; &nbsp; 例：alter table instructor2 add firstname varchar(20),lastname varchar(20);
&nbsp; &nbsp; 这里写图片描述
alter table 关系名 drop 属性，⋯
&nbsp; &nbsp; &nbsp; &nbsp; 例：alter table instructor2 drop firstname ,lastname ;
查询语句基础结构
&nbsp; &nbsp; select对应投影Π
from对应笛卡尔积
where对应选择σ
&nbsp; &nbsp; &nbsp; &nbsp; 含义
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; （1）.为from子句列出的关系产生笛卡尔积。
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; （2）.在（1）的结果上应用where子句中指定的谓词（条件）。
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; （3）.对于（2）中的元组，输出select子句中指定的属性。
select *(属性1，属性2，...)
from 关系名1，关系名2，...
where 条件1 and 条件2 and ...;
select id,name,salary
from instructor2
where salary&gt;4000;
这里写图片描述
&nbsp; &nbsp; 去重操作（distinct）
&nbsp; &nbsp; &nbsp; &nbsp; 对于一些属性来说，在某些元组中存在相同的值，有时我们需要对结果去重，得到正确答案。
select distinct 属性名
from 关系名
where 条件
例如：当我们想要查看系名时，多个老师可能位于同一个系，不去重将产生下列结果：
这里写图片描述
显然这不是我们想要的答案。我们只需要知道存在哪些系，而无需知道个数：
这里写图片描述
&nbsp; &nbsp; 更名操作（as）
&nbsp; &nbsp; &nbsp; &nbsp; 优点
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 方便：长名字变短名字，便于书写语句。
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 同一关系笛卡尔积：区分属性。
&nbsp; &nbsp; &nbsp; &nbsp; 对属性：
&nbsp; &nbsp; &nbsp; &nbsp; 对关系：
select 属性 as 属性别名
from 关系名
where 条件
select 属性
from 关系名 as 关系别名
where 条件
例：属性别名
select name as instructor_name,salary
from instructor2
where salary&gt;3500;--%>

        </textarea>
    </div>

    <!-- 关键词 (矩形) -->
    <div id="u311" class="ax_default label" data-label="关键词">
        <div id="u311_div" class=""></div>
        <div id="u311_text" class="text ">
            <p><span>#笔记#</span></p>
        </div>
    </div>

    <!-- 分类2 (矩形) -->
    <div id="u312" class="ax_default _一级标题" data-label="分类2">
        <div id="u312_div" class=""></div>
        <div id="u312_text" class="text ">
            <p><span>类别：<%=cname%>></span></p>
        </div>
    </div>

    <!-- 分类1 (图片) -->
    <div id="u313" class="ax_default _图片" data-label="分类1">
        <img id="u313_img" class="img " src="images/个人页/分类按钮_u115.png"/>
    </div>

    <!-- 关注2 (矩形) -->
    <div id="u314" class="ax_default _一级标题" data-label="关注2">
        <div id="u314_div" class=""></div>
        <div id="u314_text" class="text ">
            <p><span>关注：<%=knowledge.getAttention()%></span></p>
        </div>
    </div>

    <!-- 关注1 (图片) -->
    <div id="u315" class="ax_default _图片" data-label="关注1">
        <img id="u315_img" class="img " src="images/知识点页/关注1_u315.png"/>
    </div>

    <!-- 点赞 (矩形) -->
    <div id="u316" class="ax_default _一级标题" data-label="点赞">
        <div id="u316_div" class=""></div>
        <div id="u316_text" class="text ">
            <p><span>点赞</span></p>
        </div>
    </div>

    <!-- 点赞 (组 合) -->
    <div id="u317" class="ax_default" data-label="点赞" data-left="958" data-top="461" data-width="54" data-height="54">

        <!-- 底框 (椭圆形) -->
        <div id="u318" class="ax_default ellipse" data-label="底框">
            <img id="u318_img" class="img " src="images/知识点页/底框_u318.png"/>
        </div>

        <!-- 点赞按钮 (图片) -->
        <div id="u319" class="ax_default _图片" data-label="点赞按钮">
            <img id="u319_img" class="img " src="images/知识点页/点赞按钮_u319.png"/>
        </div>
    </div>

    <!-- 导航 (组 合) -->
    <div id="u320" class="ax_default" data-label="导航" data-left="-121" data-top="0" data-width="1786" data-height="56">

        <!-- Unnamed (矩形) -->
        <div id="u321" class="ax_default box_2" >
            <div id="u321_div" class=""></div>
        </div>

        <!-- 主页按钮 (图片) -->
        <div id="u322" class="ax_default _图片" onclick="javascript:window.location.href='HomePage.jsp';" data-label="主页按钮">
            <img id="u322_img" class="img " src="images/管理员页/主页按钮_u66.png"/>
        </div>

        <!-- logo (图片) -->
        <div id="u323" class="ax_default _图片" data-label="logo">
            <img id="u323_img" class="img " src="images/管理员页/logo_u67.png"/>
        </div>

        <!-- 管理员头像 (图片) -->
        <div id="u324" class="ax_default _图片" data-label="管理员头像">
            <img id="u324_img" class="img " src="images/主页/管理员头像_u60.png"/>
        </div>

        <!-- 退出登录 (矩形) -->
        <div id="u325" class="ax_default _一级标题" data-label="退出登录">
            <div id="u325_div" class=""></div>
            <div id="u325_text" class="text ">
                <p><span>退出</span></p>
            </div>
        </div>

        <!-- 退出登录 (热区) -->
        <div id="u326" class="ax_default" data-label="退出登录">
        </div>

        <!-- 用户头像 (图片) -->
        <div id="u327" class="ax_default _图片" data-label="用户头像">
            <img id="u327_img" class="img " src="images/主页/用户头像_u59.png"/>
        </div>

        <!-- logo (图片) -->
        <div id="u328" class="ax_default _图片" data-label="logo">
            <img id="u328_img" class="img " src="images/管理员页/logo_u71.png"/>
        </div>

        <!-- Unnamed (图片) -->
        <div id="u329" class="ax_default _图片" onclick="javascript:window.location.href='SearchPage.jsp';">
            <img id="u329_img" class="img " src="images/主页/查询_u1.png"/>
        </div>
    </div>
</div>
</body>
</html>
