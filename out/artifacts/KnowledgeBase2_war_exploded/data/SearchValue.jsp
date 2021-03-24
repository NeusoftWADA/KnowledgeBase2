<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 小伤伤
  Date: 2021/3/23
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
    <%String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";%>
<base href="<%=basePath%>">

<body>
   <table>
        <tr><td>与“${param.words}”关键字相关的知识点有</td></tr>
        <c:forEach items="${requestScope.Know}" var="knowledge">
            <tr>
            <td>
                <a href="show/Knowledge/Context?title=${knowledge.title}"> ${knowledge.title} </a>
            </td>
            </tr>
        </c:forEach>
    </table>
<jsp:forward page="/SearchResults.jsp"></jsp:forward>
</body>
</html>
