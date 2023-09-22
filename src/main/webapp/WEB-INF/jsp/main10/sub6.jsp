<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-22
  Time: 오후 3:40
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
            border: 1px solid black;
            width: 100%;
        }
        th {
            background-color: #eee;
        }
        th, td {
            padding: 5px;
        }
    </style>
</head>
<body>
<table>
    <tr>
        <th>ID</th>
        <th>FIRST NAME</th>
        <th>LAST NAME</th>
        <th>CLASS</th>
        <th>PHONE</th>
    </tr>
    <c:forEach items="${moving}" var="item">

        <tr>
            <td>${item.id}</td>
            <td>${item.firstName}</td>
            <td>${item.lastName}</td>
            <td>${item.className}</td>
            <td>${item.phoneNumber}</td>
        </tr>

    </c:forEach>
</table>

</body>
</html>
