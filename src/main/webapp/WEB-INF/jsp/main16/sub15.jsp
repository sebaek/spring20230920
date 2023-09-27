<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-27
  Time: 오후 2:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>model에서 attribute 꺼내서 보여주기</h1>
    <ul>
        <c:forEach items="${foodList}" var="item">
            <li>${item}</li>
        </c:forEach>
    </ul>
</body>
</html>
