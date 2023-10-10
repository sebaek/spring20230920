<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-10
  Time: 오전 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h4>직원 조회</h4>
<form action="">
    <div>
        검색 조건
        <select name="t" id="">
            <option value="lname">Last Name</option>
            <option value="fname">First Name</option>
            <option value="note">Notes</option>
        </select>
    </div>
    <div>
        검색어
        <input type="text" name="k" value="">
    </div>
    <div>
        <button>조회</button>
    </div>
</form>
</body>
</html>
