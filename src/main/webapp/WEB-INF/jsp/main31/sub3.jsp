<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-19
  Time: 오후 12:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>고객 조회</h3>
<form action="/main31/sub3">
    <select name="code" id="">
        <option value="1">고객명</option>
        <option value="2">계약명</option>
    </select>
    <input type="text" name="k" placeholder="검색어">
    <button>조회</button>
</form>
<hr>
<style>
    table, th, td {
        border-collapse: collapse;
        border: 1px solid black;
    }
</style>
<table>
    <tr>
        <th>고객명</th>
        <th>계약명</th>
    </tr>
    <c:forEach items="${names}" var="name">
        <tr>
            <td>${name.customerName}</td>
            <td>${name.contactName}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
