<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../css/pwPrintFailPage.css">
    <title>Calender</title>
</head>
<body>
    <div class="resultBox">
        <div class="title">
            <h1>비밀번호 검색결과</h1>
        </div>
        <div class="contents">
            <p>아이디 : <%--<%=%>--%></p>
            <p>비밀번호 : <%--<%=%>--%></p>
        </div>
        
        <button type="button" class="button" onclick="moveMainpage()">로그인하기</button>
    </div>
    <script>
        function moveMainpage(){
            location.href="../index.jsp";
        }
    </script>
</body>