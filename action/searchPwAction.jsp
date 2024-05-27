<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>

<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>

<%@ page session="true" %>

<%
    // request.setCharacterEncoding("utf-8");
    // String nameValue = request.getParameter("nameValue");
    // String phoneValue = request.getParameter("phoneValue");

    // Class.forName("org.mariadb.jdbc.Driver");
    // Connection connect = DriverManager.getConnection("jdbc:mariadb://localhost:3306/homework","stageus","1234"); 
    // String sql="SELECT id FROM member WHERE  = ?;";
    // PreparedStatement query = connect.prepareStatement(sql);
    // query.setString(1, idValue);
    // //query.setString(2, idValue);
    // //아이디 비밀번호 둘다 넣어서 수정하기

    // ResultSet result = query.executeQuery();
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
            //아이디와 폰번호와 매치되는 비밀번호가 있으면 pwPrintSuccessPage.jsp로 이동
            //이동시 아이디값전달
            if()
            {
    %>

    <%        
            }
            else// 아이디와 폰번호와 매치되는 비밀번호가 없으면, 
            //혹은 존재하는 아이디가 아니면 pwPrintFailPage.jsp로 이동
            //이동시 아이디값전달 form형식으로
            {

            }
        }
    %>
</body>
