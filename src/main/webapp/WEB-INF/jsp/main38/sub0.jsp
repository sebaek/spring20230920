<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-24
  Time: 오후 4:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
</head>
<body>
<div>
    <button onclick="ajax1()">button1</button>
    <script>
        function ajax1() {
            axios.get("/main38/sub1");
        }
    </script>
</div>
<div>
    <button onclick="ajax2()">button2</button>
    <script>
        function ajax2() {
            axios.get("/main38/sub2")
                .then(function () {
                    console.log("응답 받은 후 해야 하는 일");
                });
        }
    </script>
</div>
</body>
</html>
