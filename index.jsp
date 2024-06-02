<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./css/index.css">
    <title>Calender</title>
</head>
<body>
    <div class="title">
        <h1>STAGEUS<br>CALENDER</h1>
    </div>

    <div class="inputBox">
        <form  id="loginForm" class="form" action="./action/loginAction.jsp">
            <div>
                <input type="text" id="idValue" name="idValue" class="inputText" placeholder="아이디">
            </div>
            <div>
                <input type="password" id="pwValue" name="pwValue" class="inputText" placeholder="비밀번호">
            </div>
            <div>
                <input type="button" class="loginButton" value="로그인" onclick="loginExceptionEvent()">
            </div>
        </form>
        
        <div class="threeButton">
            <button type="button" class="IDsearchButton" onclick="openSearchIdPageEvent()">ID찾기</button>
            <button type="button" class="PWsearchButton" onclick="openSearchPwPageEvent()">비밀번호찾기</button>
            <button type="button" class="joinButton" onclick="openJoinPageEvent()">회원가입</button>
        </div>
    </div>
    <script src="./js/index.js"></script>

</body>