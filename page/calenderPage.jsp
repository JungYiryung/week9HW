<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>

<%@ page session="true" %>

<%
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("memberName");
    String position = request.getParameter("position");
    String team = request.getParameter("team");

    // Class.forName("org.mariadb.jdbc.Driver");
    // Connection connect = DriverManager.getConnection("jdbc:mariadb://localhost:3306/homework","stageus","1234"); 
    // String sql="SELECT name, position, team FROM member WHERE id = ?;";
    // PreparedStatement query = connect.prepareStatement(sql);
    // query.setString(1, idValue);
    // ResultSet result = query.executeQuery();
%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../css/calenderCSS.css">
    <title>Calender</title>
</head>
<body>
    <div class="infoButtonPart">
        <div class="myInfo">
            <h2>내정보</h2>
            <p> 이름 <%=name%> </p>
            <p> 직책 <%=position%> </p>
            <p> 팀 <%=team%> </p>
        </div>
        <div>
            <input type="button" value="마이페이지" onclick="">
        </div>
        <div>
            <input type="button" value="로그아웃" onclick="">
        </div>
    </div>

    <div class="calenderPart">    
        <div>
            <select  class="month">
                <option value="one">1월</option>
                <option value="two">2월</option>
                <%-- js반복문 --%>
            </select>
        </div>
        <div>
            <table>
                <thead>
                    <tr>
                        <th>월</th>
                        <th>화</th>
                        <th>수</th>
                        <th>목</th>
                        <th>금</th>
                        <th>토</th>
                        <th>일</th>
                    </tr>
                </thead>
                <tbody>
                    <td><a>1</a></td>


        </div>
    </div>
    <script src="../js/calenderJs.js"></script>
</body>