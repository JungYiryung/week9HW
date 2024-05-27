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
            <p>아이디 : <%--<%=%>--%>에 대한 비밀번호를 찾을 수 없습니다.</p>
            <p>아이디찾기를 시도해보시겠어요?</p>
        </div>
        
        <button type="button" class="button" onclick="moveSearchPwPage()">아이디찾기</button>
    </div>

    <script>
        function moveSearchPwPage(){
            location.href="./searchIdPage.jsp";
        }
    </script>
</body>