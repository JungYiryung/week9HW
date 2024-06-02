<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../css/joinPage.css">
    <title>Calender</title>
</head>
<body>
    <div class="title">
        <h1>회원가입</h1>
    </div>

    <%-- <div id="modal">
        <div class="okModalBody">
            <p>아이디 : <span id="idValue"></span> </p>
            <p>사용가능합니다!</p>
            <button type="button" class="useButton" onclick="">사용하기</button> 
        </div>
        <div class="noModalBody">
            <p>아이디 : <span id="idValue"></span> </p>
            <p>사용불가능합니다!</p>
            <button type="button" class="xButton" onclick="">닫기</button> 
        </div>
    </div> --%>

    <div class="inputBox">
        <form  id="joinForm" action="../action/joinAction.jsp">
            <table>
                <tr>
                    <td><label>아이디<span>*</span></label></td>
                    <td><input type="text" id="idValue" name="idValue" class="inputText" placeholder="아이디"></td>
                    <td><input type="button" class="IDCheckButton"value="아이디중복확인" onclick="idCheckEvent()"></td>
                </tr>
                <tr>
                    <td><label>비밀번호<span>*</span></label></td>
                    <td><input type="password" id="pwValue"name="pwValue" class="inputText" placeholder="비밀번호"></td>
                </tr>
                <tr>
                    <td><label>비밀번호확인<span>*</span></label></td>
                    <td><input type="password" id="pwValueCheck"name="pwValue" class="inputText" placeholder="비밀번호확인"></td>
                </tr>
                <tr>
                    <td><label>이름<span>*</span></lable></td>
                    <td><input type="text" id="nameValue"name="nameValue" class="inputText" placeholder="홍길동"></td>
                </tr>
                <tr>
                    <td><label>전화번호<span>*</span></label></td>
                    <td><input type="text" id="phoneValue"name="phoneValue" class="inputText" placeholder="000-0000-0000"></td>
                </tr>
                <tr>
                    <td><label>직책<span>*</span></label></td>
                    <td>
                        <select name="role" class="inputText">
                            <option value="teamMember">팀원</option>
                            <option value="teamLeader">팀장</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label>부서<span>*</span></label></td>
                    <td>
                        <select name="department" class="inputText" >
                            <option value="planningTeam">기획팀</option>
                            <option value="hrTeam">인사팀</option>
                        </select>
                    </td>
                </tr>
            </table>
            <input type="button" class="joinButton" value="회원가입" onclick="joinExceptionEvent()">
            <%-- <input type="submit" class="joinButton" value="회원가입" > --%>
        </form>
    </div>
    <script src="../js/joinPage.js"></script>
</body>