<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-22
  Time: 오후 2:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>forEach tag</h1>
    <p>콘텐츠 반복 출력</p>
    <p>주요 attribute : begin, end, var, items, varStatus</p>
    <c:forEach begin="1" end="3">
        <li>Lorem ipsum.</li>
    </c:forEach>
</body>
</html>
