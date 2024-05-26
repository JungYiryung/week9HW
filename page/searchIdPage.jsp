<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./css/searchIdPage.css">
    <title>Calender</title>
</head>
<body>
    <div class="title">
        <h1>아이디찾기</h1>
    </div>

    <div class="inputBox">
        <form  class="form" action="./action/searchIdAction.jsp">
            <div>
                <input type="text" name="name" class="inputText" placeholder="이름">
            </div>
            <div>
                <input type="text" name="phone" class="inputText" placeholder="전화번호">
            </div>
            <div>
                <input type="submit" class="findIdButton" value="아이디찾기">
            </div>
        </form>
    </div>
    <script src=""></script>

</body>