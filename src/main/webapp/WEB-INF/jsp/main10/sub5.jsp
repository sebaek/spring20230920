<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-22
  Time: 오후 2:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach begin="0" end="3" var="i">
    <p>${foodList[i]}</p>
</c:forEach>

<hr>
<c:forEach items="${names}" var="name">
    <p>${name}</p>
</c:forEach>

<hr>

<style>
    .box {
        border: 1px solid black;
        margin: 5px;
        padding: 10px;
        display: flex;
        gap: 10px;
    }
    .box > div {
        border: 2px solid orange;
    }
</style>
<%-- varStatus : 반복문의 상태 --%>
<c:forEach begin="0" end="3" var="n" varStatus="status">
    <%--div.box>div.content1+div.content2--%>
    <div class="box">
        <div class="content1">
            n : ${n}
        </div>
        <div class="content2">
            <div>count : ${status.count}</div>
            <div>index : ${status.index}</div>
            <div>current : ${status.current}</div>
            <div>first : ${status.first}</div>
            <div>last : ${status.last}</div>
        </div>
    </div>
</c:forEach>
<hr>
<c:forEach items="${names}" var="name" varStatus="status">
    <div class="box">
        <div>name : ${name}</div>
        <div>
            <div>count : ${status.count}</div>
            <div>index : ${status.index}</div>
            <div>current : ${status.current}</div>
            <div>first : ${status.first}</div>
            <div>last : ${status.last}</div>
        </div>
    </div>
</c:forEach>

<hr>
<%--
<ul>
  <li> 1 : pizza </li>
  <li> 2 : milk </li>
  <li> 3 : water </li>
  <li> 4 : salad </li>
</ul>
--%>
<ul>
    <c:forEach items="${foodList}" var="item" varStatus="status">
        <li> ${status.count} : ${item}</li>
    </c:forEach>
</ul>
</body>
</html>
