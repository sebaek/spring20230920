<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-25
  Time: 오후 2:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>form 요소</h1>

<form>
    <input type="text" name="param1">
    <br>
    <input type="text" name="param2">
    <br>
    <%-- select(option), textarea --%>
    <button>전송</button>
</form>

<hr>

<form>
    <%--
    전송버튼 클릭시
    ?name=lee&age=44&address=seoul&email=abc@gmail.com
    --%>
    <%--(input[name]+br)*4--%>
    <input type="text" name="name">
    <br>
    <input type="text" name="age">
    <br>
    <input type="text" name="address">
    <br>
    <input type="text" name="email">
    <br>
    <button>전송</button>
</form>
<hr>
<h3>action 속성 : request 파라미터들을 어디로 보낼 지 결정</h3>
<form action="https://search.naver.com/search.naver">
    <input type="text" name="query">
    <br>
    <button>전송</button>
</form>
<form action="https://google.com/search">
    <input type="text" name="q">
    <br>
    <button>전송</button>
</form>
<form action="">
    <input type="text" name="q">
    <button>다음에서 검색</button>
</form>

</body>
</html>
