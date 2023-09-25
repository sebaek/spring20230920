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

<hr>
<p>${c > d}</p>
<p>${c < d}</p>
<p>${c >= d}</p>
<p>${c <= d}</p>
<p>${c == d}</p>
<p>${c != d}</p>

<hr>
<p>${e > f}</p>
<p>${e > g}</p>

<hr>
<h3>el 논리연산자</h3>
<h4>&& (and), || (or)</h4>
<h4>&& (and)</h4>
<p>\${true && true} : ${true && true}</p>
<p>\${true && false} : ${true && false}</p>
<p>\${false && true} : ${false && true}</p>
<p>\${false && false} : ${false && false}</p>
<p>\${true and true} : ${true and true}</p>
<p>\${true and false} : ${true and false}</p>
<p>\${false and true} : ${false and true}</p>
<p>\${false and false} : ${false and false}</p>

<h4>|| (or)</h4>
<p>\${true || true} : ${true || true}</p>
<p>\${true || false} : ${true || false}</p>
<p>\${false || true} : ${false || true}</p>
<p>\${false || false} : ${false || false}</p>
<p>\${true or true} : ${true or true}</p>
<p>\${true or false} : ${true or false}</p>
<p>\${false or true} : ${false or true}</p>
<p>\${false or false} : ${false or false}</p>

<h4>! (not)</h4>
<p>\${! true} : ${! true}</p>
<p>\${! false} : ${! false}</p>
<p>\${not true} : ${not true}</p>
<p>\${not false} : ${not false}</p>
</body>
</html>
