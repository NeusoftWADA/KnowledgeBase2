<%--
  Created by IntelliJ IDEA.
  User: 小伤伤
  Date: 2021/2/1
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>

<body>
<center>
    <button><a href="/myweb/login.html">登录</a></button>  &nbsp; &nbsp;&nbsp;   <button ><a href="/myweb/user_Add.html">注册 </a></button><br><p></p>
    <form action="/myweb/user/Add" method="get">

        请输入注册手机号 <br>
        <input type="text" name="id"/><br>

        <c:if test="${requestScope.result eq -1}">
            <font style="color:red;font-size: 15px">该用户已被注册</font><br>
        </c:if>


        请输入密码(至少六位数)<br>
        <input type="password" name="upassword"/><br>

        <c:if test="${requestScope.result eq -3}">
            <font style="color:red;font-size: 15px">密码长度不符合要求</font><br>
        </c:if>

        再次确认密码 <br>
        <input type="password" name="password"/><br>
        <c:if test="${requestScope.result eq -2}">
            <font style="color:red;font-size: 15px">第二次输入密码错误</font><br>
        </c:if>

        &nbsp; &nbsp; <input type="submit" value="用户注册"/>
    </form>
</center>

</body>
</html>
