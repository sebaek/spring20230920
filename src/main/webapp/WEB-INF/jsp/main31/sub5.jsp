<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-19
  Time: 오후 4:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>고객조회</h3>
<form action="/main31/sub5">
    도시/국가
    <select name="type" id="">
        <option value="1">도시</option>
        <option value="2">국가</option>
    </select>
    도시
    <select name="city" multiple>
        <c:forEach items="${cityList}" var="city">
            <option value="${city}">${city}</option>
        </c:forEach>
    </select>
    국가
    <select name="country" multiple>
        <c:forEach items="${countryList}" var="country">
            <option value="${country}">${country}</option>
        </c:forEach>
    </select>
    <button>조회</button>
</form>

<hr>

<table>
    <tr>
        <th>이름</th>
        <th>도시</th>
        <th>국가</th>
    </tr>
    <c:forEach items="${customerList}" var="customer">
        <tr>
            <td>${customer.name}</td>
            <td>${customer.city}</td>
            <td>${customer.country}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
