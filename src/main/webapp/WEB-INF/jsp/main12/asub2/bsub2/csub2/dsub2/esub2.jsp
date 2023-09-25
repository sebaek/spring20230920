<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-25
  Time: 오후 3:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h3>상대경로 .. 은 한 path 위</h3>
<form action="..">
    <input type="text" name="age">
    <button>전송</button>
</form>
<form action="../..">
    <button>전송</button>
</form>
</body>
</html>
