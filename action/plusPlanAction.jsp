<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>

<%
    request.setCharacterEncoding("utf-8");
    String contents = request.getParameter("contents");
    String date = request.getParameter("date");
    String time = request.getParameter("time");
    Object idObj = session.getAttribute("id");
    String id = (String)idObj;

    Class.forName("org.mariadb.jdbc.Driver");
    Connection connect = DriverManager.getConnection("jdbc:mariadb://localhost:3306/week9HW","stageus","1234"); 
    String sql="INSERT INTO calenderContents(id, contents, todoDate, todoTime) VALUES (?, ?, ?, ?);";
    PreparedStatement query = connect.prepareStatement(sql);
    query.setString(1,id);
    query.setString(2,contents);
    query.setString(3,date);
    query.setString(4,time);
    query.executeUpdate();
%>


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <script>
        location.href = "../page/memberTodoDetail.jsp?date=<%=date%>"
    </script>

</body>
