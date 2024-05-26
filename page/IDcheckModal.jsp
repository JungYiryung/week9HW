<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>

<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>

<%@ page session="true" %>

<%
    request.setCharacterEncoding("utf-8");
    String idValue = request.getParameter("id_value");
    Class.forName("org.mariadb.jdbc.Driver");
    Connection connect = DriverManager.getConnection("jdbc:mariadb://localhost:3306/homework","stageus","1234"); 
    String sql="SELECT id FROM member WHERE id = ?;";
    PreparedStatement query = connect.prepareStatement(sql);
    query.setString(1, idValue);
    ResultSet result = query.executeQuery();
%>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <%
    if(result.next())
    {
    %>
        <script>
            window.opener.document.getElementById("idValue").value = <%=result.getString(1)%> ;
            document.querySelector('okModalBody').classList.add('show');  
        </script>
    <%        
    }
    %>

</body>