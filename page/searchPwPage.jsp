<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../css/searchPwPage.css">
    <title>Calender</title>
</head>
<body>
    <div class="title">
        <h1>비밀번호찾기</h1>
    </div>

    <div class="inputBox">
        <form name="findPwInput" class="form" action="../action/searchPwAction.jsp">
            <div>
                <input type="text" id="idValue" name="idValue" class="inputText" placeholder="아이디">
            </div>
            <div>
                <input type="text" id="phone" name="phone" class="inputText" placeholder="전화번호">
            </div>
            <div>
                <input type="button" class="findIdButton" onclick="findPwExceptionEvent()" value="비밀번호찾기">
                <%-- 버튼 form --%>
            </div>
        </form>
    </div>
    <script src="../js/searchPwPage.js"></script>

</body>