<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-26
  Time: 오후 12:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>form</h1>
<form action="/main13/sub8">
    <div>
        <label for="input1">ID</label>
        <input type="number" id="input1" name="id">
    </div>
    <div>
        <label for="input2">이름</label>
        <input type="text" id="input2" name="name">
    </div>
    <div>
        <label for="input3">주소</label>
        <input type="text" id="input3" name="address">
    </div>
    <div>
        <label for="input4">약속일시</label>
        <input type="datetime-local" id="input4" name="schedule">
    </div>
    <div>
        <label for="input5">할일1</label>
        <input type="text" id="input5" name="todos" value="">
    </div>
    <div>
        <label for="input6">할일2</label>
        <input type="text" id="input6" name="todos" value="">
    </div>
    <div>
        <label for="input7">할일3</label>
        <input type="text" id="input7" name="todos" value="">
    </div>
    <button>전송</button>
</form>
</body>
</html>
