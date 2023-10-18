<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-18
  Time: 오후 4:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>새 직원 등록</h3>
<form action="/main30/sub10" method="post">
    <div>
        last name
        <input type="text" name="lastName">
    </div>
    <div>
        first name
        <input type="text" name="firstName">
    </div>
    <div>
        <input type="submit" value="등록">
    </div>
</form>
</body>
</html>
