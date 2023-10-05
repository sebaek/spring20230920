<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-05
  Time: 오후 4:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h4>국가로 공급자 조회</h4>

<form action="/main20/sub11" id="form1">
    <button>조회</button>
    <button type="button" id="addButton"> +</button>
    <br>

    <%--select.select1[name=country]--%>
    <select name="country" class="select1">
        <c:forEach items="${countryList}" var="country">
            <option value="${country}">${country}</option>
        </c:forEach>
    </select>


</form>

<script>
    document.querySelector("#addButton").addEventListener("click", function () {
        const selectElem = document.querySelector(".select1");
        const copyElem = selectElem.cloneNode(true);

        selectElem.before(copyElem);
        selectElem.before(document.createElement("br"));
    });

</script>
</body>
</html>
