<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-23
  Time: 오전 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h3>s3에 파일 업로드</h3>
    <form action="/main34/sub2" method="post" enctype="multipart/form-data">
        <input type="file" name="file">
        <input type="submit" value="전송">
    </form>
</body>
</html>
