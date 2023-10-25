<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-25
  Time: 오후 12:16
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
                axios.get("/main39/sub1")
                    .then(() => console.log("성공"))
                    .catch(() => console.log("실패"));

            }
        </script>
    </div>
    <div>
        <button onclick="ajax2()">button2</button>
        <script>
            function ajax2() {
                axios.get("/main39/sub2")
                    .then(() => console.log("성공"))
                    .catch(() => console.log("실패")) // 실패 시 실행되는 메소드
            }
        </script>
    </div>
<div>
    <button onclick="ajax3()">button3</button>
    <script>
        function ajax3() {
            axios.get("/main39/sub2")
                .catch(function (error) {
                    console.log(error);
                    console.log(error.response.status);
                    let status = error.response.status;
                    if (status >= 400 && status < 500) {
                        console.log("요청이 잘 못되었습니다.");
                    } else if (status >= 500 && status <= 599) {
                        console.log("서버에서 오류가 발생하였습니다.");
                    }
                });
        }
    </script>
</div>
<div>
    <button onclick="ajax4()">button4</button>
    <p id="result1"></p>
    <script>
        function ajax4() {
            // 400번대 응답이면 #result1 요소에 "잘못된 요청" 출력
            // 500번대 응답이면 #resutt1 요소에 "서버 에러" 출력
            axios.get("/main39/sub3")
                .catch(function (error) {
                    const code = error.response.status;
                    let message = "";
                    if (400 <= code && code < 500) {
                        message = "잘못된 요청";
                    } else if (500 <= code) {
                        message = "서버 에러";
                    }
                    document.querySelector("#result1").textContent = message;
                });
        }
    </script>
</div>
</body>
</html>
