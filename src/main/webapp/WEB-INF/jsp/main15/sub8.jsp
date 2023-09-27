<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-27
  Time: 오전 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h1>선택한 음식들</h1>
  <ul>
    <c:forEach items="${foodList}" var="food">
      <li>${food}</li>
    </c:forEach>
  </ul>
  <a href="/main15/sub9">다른 페이지에서 보기</a>
</body>
</html>
