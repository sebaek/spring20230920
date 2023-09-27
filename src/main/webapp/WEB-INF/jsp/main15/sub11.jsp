<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-27
  Time: 오전 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h4>모델에서 꺼내기</h4>
  <ul>
    <c:forEach items="${items}" var="item">
      <li>${item}</li>
    </c:forEach>
  </ul>
  <h4>세션에서 꺼내기</h4>
  <ul>
    <c:forEach items="${sessionScope.items}" var="item">
      <li>${item}</li>
    </c:forEach>
  </ul>
</body>
</html>
