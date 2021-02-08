<%--
  Created by IntelliJ IDEA.
  User: 小伤伤
  Date: 2021/2/6
  Time: 1:21
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

    <form action="/myweb/knowledge/add" method="get">
        <input type="text" name=“title” /><br><br><br>
        <c:if test="${requestScope.flag eq -1}">
            <font style="color:red;font-size: 15px">请核对标题是否填写</font><br>
        </c:if>

        <textarea rows="30px" cols="50px" name="ncontent" ></textarea>
        <br>
        <c:if test="${requestScope.flag eq -2}">
            <font style="color:red;font-size: 15px">内容不能为空</font><br>
        </c:if>

        <select name="Classification">
            <option value="—请选择类别—">—请选择类别—</option>
            <option value="计算机类" >计算机</option>
            <option value="高数" >高数</option>
            <option value="英语">英语</option>
            <option value="物理" >物理</option>
        </select>
<br>
        <c:if test="${requestScope.flag eq -3}">
            <font style="color:red;font-size: 15px">请选择类别哦</font><br>
        </c:if>
        <br>
        <input type="submit" value="提交"/>
    </form>

</center>
</body>
</html>
