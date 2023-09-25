<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-25
  Time: 오전 9:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h3>el에서 사용할 수 있는 연산자</h3>
    <h4>산술 연산자</h4>
    <h4>+, -, *, /, %</h4>
    <hr>
    <h5>+ : 더하기</h5>
    <p>${a} + ${b} = ${a + b}</p>
    <p>${c} + ${d} = ${c + d}</p>
    <h5>- : 빼기</h5>
    <p>${a} - ${b} = ${a - b}</p>
    <p>${c} - ${d} = ${c - d}</p>
    <h5>* : 곱하기</h5>
    <p>${a} * ${b} = ${a * b}</p>
    <p>${c} * ${d} = ${c * d}</p>
    <h5>/ (div) : 나누기</h5>
    <p>${a} / ${b} = ${a / b}</p>
    <p>${c} / ${d} = ${c / d}</p>
    <p>${a} / ${b} = ${a div b}</p>
    <p>${c} / ${d} = ${c div d}</p>
</body>
</html>
