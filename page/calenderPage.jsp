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
    <link rel="stylesheet" type="text/css" href="../css/calender.css">
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
            <select  id="month" onchange="selectMonth()">
            </select>
        </div>
        <div id ="calender">
            <table id="day">
                <%-- <tr>
                    <td><a>1</a></td>
                    <td><a>2</a></td>
                    <td><a>3</a></td>
                    <td><a>4</a></td>
                    <td><a>5</a></td>
                    <td><a>6</a></td>
                    <td><a>7</a></td>
                </tr>
                <tr>
                    <td><a>1</a></td>
                    <td><a>2</a></td>
                    <td><a>3</a></td>
                    <td><a>4</a></td>
                    <td><a>5</a></td>
                    <td><a>6</a></td>
                    <td><a>7</a></td>
                </tr> --%>
            </table>
        </div>
    </div>
    <script src="../js/calender.js"></script>
</body>