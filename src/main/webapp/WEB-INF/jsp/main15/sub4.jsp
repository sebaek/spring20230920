<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-27
  Time: 오전 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>이름을 입력하세요</h1>
    <form action="/main15/sub5" method="post">
        이름
        <input type="text" name="name">
        <button>전송</button>
    </form>
</body>
</html>
