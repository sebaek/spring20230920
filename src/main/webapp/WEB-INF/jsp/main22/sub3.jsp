<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-06
  Time: 오후 3:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h4>고객 목록</h4>
<table>
    <tr>
        <th>ID</th>
        <th>NAME</th>
    </tr>

    <c:forEach items="${customerList}" var="customer">
        <tr>
            <td>${customer.id}</td>
            <td>${customer.name}</td>
        </tr>
    </c:forEach>
</table>
<div>
    <c:forEach begin="1" end="${lastPageNumber}" var="pageNumber">
        <a href="/main22/sub3?p=${pageNumber}">${pageNumber}</a> |
    </c:forEach>

</div>

</body>
</html>
