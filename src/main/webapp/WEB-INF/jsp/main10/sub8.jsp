<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-25
  Time: 오전 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>el 비교연산자</h3>
<p> <, >, <=, >=, ==, != </p>
<p> lt, gt, le, ge, eq, ne </p>
<h4><, lt</h4>
<p>${a} < ${b} = ${a < b}</p>
<p>${a} lt ${b} = ${a lt b}</p>

<h4> >, gt </h4>
<p>${a} > ${b} = ${a > b}</p>
<p>${a} gt ${b} = ${a gt b}</p>

<h4> <=, le </h4>
<p>${a} <= ${b} = ${a <= b}</p>
<p>${a} le ${b} = ${a le b}</p>

<h4> >=, ge </h4>
<p>${a} >= ${b} = ${a >= b}</p>
<p>${a} ge ${b} = ${a ge b}</p>

<h4> ==, eq </h4>
<p>${a} == ${b} = ${a == b}</p>
<p>${a} eq ${b} = ${a eq b}</p>

<h4> !=, ne </h4>
<p>${a} != ${b} = ${a != b}</p>
<p>${a} ne ${b} = ${a ne b}</p>



</body>
</html>
