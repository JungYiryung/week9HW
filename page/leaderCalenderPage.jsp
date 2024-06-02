<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%-- <%@ page import="java.util.ArrayList"%> --%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

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

    //현재날짜 가져오기
    Date today = new Date();
    SimpleDateFormat yearForm = new SimpleDateFormat("yyyy");
    SimpleDateFormat monthForm = new SimpleDateFormat("MM");
    SimpleDateFormat dayForm = new SimpleDateFormat("dd");
    int nowYear = Integer.parseInt(yearForm.format(today));
    int nowMonth = Integer.parseInt(monthForm.format(today));
    int nowDay = Integer.parseInt(dayForm.format(today));
        
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
            <input type="button" value="팀원일정보기" onclick="">
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
            <button onclick="">&lt;</button>
            <p> <%=nowYear%> </p>
            <p class="hidden" id="hidden"> <%=nowMonth%> </p>
            <div class="selectMonth">
                <select  id="month" onchange="selectMonth()">
                </select>
            </div>
            <button onclick="">&gt;</button>
        </div>        
        
        <div id ="calender">
            <table id="day">
            <%    
            int[] month31 = {1,3,5,7,8,10,12};
            int[] month30 = {4,6,9,11};
            int idxDay=1;
        
                if (nowMonth == 1 || nowMonth==3 ||nowMonth==5 ||
                nowMonth==7 ||nowMonth==8 ||nowMonth==10 ||nowMonth==12)
                {   
                    for (int idxWeek=1; idxWeek<=5; idxWeek++) 
                    { %>   
                        <tr>
                        <% for (; idxDay<=31 ; idxDay++) 
                            { %>
                            <td><a><%=idxDay%></a></td>
                            <% if(idxDay%7 == 0){
                                idxDay++;
                                break;}
                            } %>
                        </tr>
            <%      }
                }
                else if(nowMonth == 4||nowMonth == 6||nowMonth == 9||nowMonth ==11 )
                { 
                for (int idxWeek=1; idxWeek<=5; idxWeek++) 
                    { %>   
                        <tr>
                        <% for (; idxDay<=30 ; idxDay++) 
                            { %>
                            <td><a><%=idxDay%></a></td>
                            <% if(idxDay%7 == 0){
                                idxDay++;
                                break;}
                            } %>
                        </tr>
            <%      }
                }
                else
                { 
                for (int idxWeek=1; idxWeek<=4; idxWeek++) 
                    { %>   
                        <tr>
                        <% for (; idxDay<=28 ; idxDay++) 
                            { %>
                            <td><a><%=idxDay%></a></td>
                            <% if(idxDay%7 == 0){
                                idxDay++;
                                break;}
                            } %>
                        </tr>
            <%      }
                }%>
            </table>
        </div>
    </div>
    <script src="../js/calender.js"></script>
</body>