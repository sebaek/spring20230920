<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-10
  Time: 오전 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table {
            border-collapse: collapse;
        }
        th {
            background-color: skyblue;
        }
        table, th, td {
            border: 1px solid black;
        }
    </style>
</head>
<body>
<h4>고객명 조회</h4>
<form action="">
    <div>
        검색조건
        <select name="st">
            <option value="name1" ${searchType == 'name1' ? 'selected' : ''}>고객명</option>
            <option value="name2" ${searchType == 'name2' ? 'selected' : ''}>계약명</option>
        </select>
    </div>
    <div>
        검색어
        <input type="text" name="k" value="${keyword}">
    </div>
    <div>
        <button>조회</button>
    </div>
</form>

<hr>
<table>
    <tr>
        <th>고객명</th>
        <th>계약명</th>
    </tr>
    <c:forEach items="${customers}" var="customer">
        <tr>
            <td>${customer.customerName}</td>
            <td>${customer.contactName}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
