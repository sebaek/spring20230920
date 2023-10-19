<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-19
  Time: 오전 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h3>고객 정보 조회</h3>
<form action="/main30/sub15">
    <input type="text" name="id" placeholder="고객 번호">
    <button>조회</button>
</form>

<hr>
<div>${message}</div>
<h3>고객 정보 수정</h3>
<form action="/main30/sub16" method="post">
    <div>
        <input type="text" name="id" value="${customer.id}" readonly>
    </div>
    <div>
        <input type="text" name="name" value="${customer.name}">
    </div>
    <div>
        <input type="text" name="contactName" value="${customer.contactName}">
    </div>
    <div>
        <input type="text" name="address" value="${customer.address}">
    </div>
    <div>
        <input type="text" name="city" value="${customer.city}">
    </div>
    <div>
        <input type="text" name="postalCode" value="${customer.postalCode}">
    </div>
    <div>
        <input type="text" name="country" value="${customer.country}">
    </div>
    <div>
        <button>수정</button>
    </div>

</form>
</body>
</html>
