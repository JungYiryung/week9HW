<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../css/myPage.css">
    <title>Calender</title>
</head>
<body>
    <div class="menu">
        <button type="button" onclick="goMain()">메인으로</button>
        <button type="button" onclick="logOut()">로그아웃</button>
    </div>
    <div class="myInfo">
        <form>
            <table>
                <tr>
                    <td>기본정보</td>
                </tr>
                <tr>
                    <td><input type="text" id="name" class="inputBox" placeholder="이름"></td>
                </tr>
                <tr>
                    <td><input type="password" id="id" class="inputBox" placeholder="아이디"></td>
                </tr>
                <tr>
                    <td>
                    <input type="password" id="password" class="inputBox"placeholder="비밀번호">
                    <input type="button" value="수정">
                    </td>
                </tr>
                <tr>
                    <td><input type="text" id="phone" class="inputBox" placeholder="010-0000-0000"></td>
                </tr>
                <tr>
                    <td>
                    <input type="text" class="inputBox" placeholder="직책">
                    <input type="button" value="수정">
                    </td>
                </tr>
                <tr>
                    <td>
                    <input type="text" class="inputBox" placeholder="부서">
                    <input type="button" value="수정">
                    </td>
                </tr>
            </table>
            <input type="button" value="등록">
        </form>
    </div>
    <script src="../js/joinPage.js"></script>
</body>