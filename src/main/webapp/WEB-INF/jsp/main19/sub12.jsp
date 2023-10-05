<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-05
  Time: 오전 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h4>국가별 고객 조회</h4>
<form action="/main19/sub13">
    국가
    <select name="country" id="">
        <c:forEach items="${countryList}" var="country">
            <option value="${country}">${country}</option>
        </c:forEach>
    </select>
    <button>조회</button>
</form>

</body>
</html>
