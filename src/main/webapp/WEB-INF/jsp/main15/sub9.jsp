<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-27
  Time: 오전 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>여전히 세션에서 꺼낸 음식들</title>
</head>
<body>
<h1>여전히 세션에서 꺼낸 음식들</h1>
<ul>
    <c:forEach items="${foodList}" var="item">
        <li>${item}</li>
    </c:forEach>
</ul>
<a href="/main15/sub7">음식 다시 선택하기</a>

</body>
</html>
