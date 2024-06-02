<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>

<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<%@ page session="true" %>

<%
    request.setCharacterEncoding("utf-8");
    Object nameObj = session.getAttribute("name");
    Object positionObj = session.getAttribute("position");
    Object partObj = session.getAttribute("part");
    Object idObj = session.getAttribute("id");
    String name = (String)nameObj;
    String position = (String)positionObj;
    String part = (String)partObj;
    String id = (String)idObj;

    //특정 날짜 클릭하거나 추가했을때 받는 변수
    String parameterDate = request.getParameter("date");
    SimpleDateFormat dateForm = new SimpleDateFormat("yyyy-MM-dd");
    Date changeString = dateForm.parse(parameterDate);
    String specificDate= dateForm.format(changeString);
    String year = specificDate.substring(0,4);
    String month = specificDate.substring(5,7);
    String day= specificDate.substring(8,10);

    Class.forName("org.mariadb.jdbc.Driver");
    Connection connect = DriverManager.getConnection("jdbc:mariadb://localhost:3306/week9HW","stageus","1234"); 
    String sql="SELECT todoTime, contents FROM calenderContents WHERE id=? AND todoDate=? ORDER BY todoTime;";
    PreparedStatement query = connect.prepareStatement(sql);
    query.setString(1,id);
    query.setString(2,specificDate);
    ResultSet result = query.executeQuery();
    //개수가져오는 sql
    String countSql = "SELECT COUNT(*) AS count FROM calenderContents WHERE id=?;";
    PreparedStatement countQuery = connect.prepareStatement(countSql);
    countQuery.setString(1,id);
    ResultSet countResult = countQuery.executeQuery();
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
            <p> 팀 <%=part%> </p>
        </div>
        <div>
            <input type="button" value="메인" onclick="moveCalenderPageEvent()">
        </div>
        <div>
            <input type="button" value="로그아웃" onclick="">
        </div>
    </div>
    
    <div class="planField">
        <div>
            <%-- 년월일을 가져와서 여기다가 써준다 --%>
            <p><%=year%>년 <%=month%>월 <%=day%>일</p>
        </div>

        <div id ="plusPlan">
            <form id="plusPlanForm" action="../action/plusPlanAction.jsp">
                <div>
                    <input type="button" value="일정추가하기" onclick="addplanExceptionEvent()">
                </div>
                <div>
                    <input type="text" name="contents" id="contents" placeholder="내용">
                </div>
                <div>
                    <input type="date" name="date" id="date">
                    <input type="time" name="time" id="time">
                </div>
            </form>

            <div>
            <p>오늘 할 일 목록</p>
            <table>
            <%-- 스파게티코드로 오늘할일목록 불러오기 / 스크롤구현하기  --%>
            <%
                 if(countResult.next())
                 {
                    int count = countResult.getInt(1);
                    for(int i=0;i<count;i++)
                    {
                        if(result.next())
                        {
                        %>
                        <tr>
                            <td><%=result.getTime(1)%></td>
                            <td><%=result.getString(2)%></td>
                            <td>
                                <button type="button">수정하기</button>
                                <button type="button">삭제하기</button>
                            </td>
                        </tr>
                        <%
                        }
                    }
                 }
            %>
                
            </table>
        </div>
    </div>
    
    <script>
    function addplanExceptionEvent(){
        const contents = document.getElementById("contents").value
        const date = document.getElementById("date").value
        const time = document.getElementById("time").value
        if(!contents)
        {
            alert("내용을 입력해주세요!");
        }
        else if(!(date))
        {
            alert("날짜를 입력해주세요!");
        }
        else if(!(time))
        {
            alert("시간을 입력해주세요!");
        }
        else
        {
            document.getElementById("plusPlanForm").submit();
        }
    }
    function moveCalenderPageEvent(){
        location.href="../page/memberCalenderPage.jsp?name=<%=name%>&position=<%=position%>&part=<%=part%>";
    }
    </script>
</body>