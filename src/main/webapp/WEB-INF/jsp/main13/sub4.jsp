<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-26
  Time: 오전 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>회원가입</h1>
<form action="/main13/sub5">
    <%--div*6>label[for=input$]+input#input$[name][type]--%>
    <div>
        <label for="input1">아이디</label>
        <input type="text" id="input1" name="userId">
    </div>
    <div>
        <label for="input2">이메일</label>
        <input type="email" id="input2" name="userEmail">
    </div>
    <div>
        <label for="input3">생년월일</label>
        <input type="date" id="input3" name="birthDate">
    </div>

    <h3>취미</h3>
    <div>
        <label for="input4">영화</label>
        <input type="checkbox" id="input4" name="hobby" value="movie">
    </div>
    <div>
        <label for="input5">음악감상</label>
        <input type="checkbox" id="input5" name="hobby" value="music">
    </div>
    <div>
        <label for="input6">독서</label>
        <input type="checkbox" id="input6" name="hobby" value="reading">
    </div>
    <button>회원가입</button>
</form>

<hr>

<form action="/main13/sub6">
    <%--div*6>label[for=input$]+input#input$[name][type]--%>
    <div>
        <label for="input7">아이디</label>
        <input type="text" id="input7" name="userId">
    </div>
    <div>
        <label for="input8">이메일</label>
        <input type="email" id="input8" name="userEmail">
    </div>
    <div>
        <label for="input9">생년월일</label>
        <input type="date" id="input9" name="birthDate">
    </div>

    <h3>취미</h3>
    <div>
        <label for="input10">영화</label>
        <input type="checkbox" id="input10" name="hobby" value="movie">
    </div>
    <div>
        <label for="input11">음악감상</label>
        <input type="checkbox" id="input11" name="hobby" value="music">
    </div>
    <div>
        <label for="input12">독서</label>
        <input type="checkbox" id="input12" name="hobby" value="reading">
    </div>
    <button>회원가입</button>
</form>
</body>
</html>
