<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>

<%
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("idValue");
    String pw = request.getParameter("pwValue");
    String name = request.getParameter("nameValue");
    String phone = request.getParameter("phoneValue");
    String role = request.getParameter("role");
    
    int roleNum;
    int departmentNum;
    if(role=="teamMember")
    {
        roleNum =1;
    }
    else 
    {
        roleNum =2;
    }
    String department = request.getParameter("department");
    if(department=="planningTeam")
    {
        departmentNum =1;
    }
    else 
    {
        departmentNum =2;
    }
    Class.forName("org.mariadb.jdbc.Driver");
    Connection connect = DriverManager.getConnection("jdbc:mariadb://localhost:3306/week9HW","stageus","1234"); 
    String sql="INSERT INTO member(id, password, name, phone, positionIdx, partIdx) VALUES (?,?,?,?,?,?);";
    PreparedStatement query = connect.prepareStatement(sql);
    query.setString(1,id);
    query.setString(2,pw);
    query.setString(3,name);
    query.setString(4,phone);
    query.setInt(5,roleNum);
    query.setInt(6,departmentNum);

    query.executeUpdate();
%>


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <script>
        //console.log("<%=role%>")
        alert("회원가입에 성공하였습니다.")
        location.href="../index.jsp"
    </script>

</body>
