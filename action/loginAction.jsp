<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>

<%
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("idValue");
    String pw = request.getParameter("pwValue");
    
    Class.forName("org.mariadb.jdbc.Driver");
    Connection connect = DriverManager.getConnection("jdbc:mariadb://localhost:3306/week9HW","stageus","1234"); 
    String sql="SELECT name, positionIdx, partIdx FROM member WHERE id=? AND password=?;";
    PreparedStatement query = connect.prepareStatement(sql);
    query.setString(1,id);
    query.setString(2,pw);
    ResultSet result = query.executeQuery();
%>
    
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <%-- memberCalenderPage로 전달 --%>
    <% while(result.next())
    {
        %>
        <script>
            console.log("dho?")
            location.href="../page/memberCalenderPage.jsp?name=<%=result.getString(1)%>&position=<%=result.getString(2)%>&part=<%=result.getString(3)%>&id=<%=id%>"
        </script>
        <%
    }%>
</body>