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
    String name = request.getParameter("name");
    String position = request.getParameter("position");
    if(position.equals("1")) {position = "팀원";}
    else {position="팀장";}
    String part = request.getParameter("part");
    if(part.equals("1")) {part = "기획팀";}
    else {part ="인사팀";}
    String id = request.getParameter("id");

    Class.forName("org.mariadb.jdbc.Driver");
    Connection connect = DriverManager.getConnection("jdbc:mariadb://localhost:3306/week9HW","stageus","1234"); 
    
    //현재날짜 받아오기- 현재날짜가 필요한 이유 해당 월 출력위해    
    Date today = new Date();
    SimpleDateFormat yearForm = new SimpleDateFormat("yyyy");
    SimpleDateFormat monthForm = new SimpleDateFormat("MM");
    SimpleDateFormat dayForm = new SimpleDateFormat("dd");
    int numYear = Integer.parseInt(yearForm.format(today));
    int numMonth = Integer.parseInt(monthForm.format(today));
    int numDay = Integer.parseInt(dayForm.format(today));

    //세션에 값 저장하기 
    String sessionName = name;
    String sessionPosition = position;
    String sessionPart = part;
    String sessionId = id;
    session.setAttribute("name",sessionName);
    session.setAttribute("position",sessionPosition);
    session.setAttribute("part",sessionPart);
    session.setAttribute("id",sessionId);

    //일별통계
    String sql = "SELECT DATE(todoDate) AS 'date', COUNT(id) AS 'count' FROM calenderContents WHERE DATE_FORMAT(todoDate, '%m') = ? GROUP BY todoDate;";
    PreparedStatement query = connect.prepareStatement(sql);
    query.setInt(1,numMonth);
    ResultSet result = query.executeQuery();

    // ArrayList<ArrayList<String>> list = new ArrayList<ArrayList<String>>();
    // // var list = []

    // while (result.next()) {
    //     ArrayList<String> tmp = new ArrayList<String>();
    //     // var tmp = []
    //     String content = result.getString(1);
    //     String year = result.getString(2);
    //     String date = result.getString(3);
    //     tmp.add(content);
    //     tmp.add(year);
    //     tmp.add(date);

    //     list.add(tmp);
    // }
    // 중요점 : ResultSet을 2차원 List로 어떻게 옮겨주겠는가?
    // 대체 왜?

    // 수업 떄 나간 방법 : createElement를 jsp에서 함
    // 그렇기에 resultSet을 그냥 바로 이용할 수 있음

    // 이령팀원이 애먹는 방법 : createElement를 js에서 함
    // 문제? 태그를 만들면서 데이터베이스의 값이 필요한데, resultSet으로 되어 있어서 js가 인식을 못함
    // 아! 그래서 jsp의 resultSet을 js가 알아볼 수 있게 일반 2차원 리스트로 옮기자
            
    
        
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
            <input type="button" value="마이페이지" onclick="">
        </div>
        <div>
            <input type="button" value="로그아웃" onclick="">
        </div>
    </div>

    <div class="calenderPart">
        <div>
            <button onclick="">&lt;</button>
            <p> <%=numYear%> </p>
            <p class="hidden" id="hidden"> <%=numMonth%> </p>
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
                for (int idxWeek=1; idxWeek<=5; idxWeek++) { 
            %>   
                    <tr>
                    <% 
                    if (numMonth == 1 || numMonth==3 ||numMonth==5 ||numMonth==7 ||numMonth==8 ||numMonth==10 ||numMonth==12) {
                        for (; idxDay<=31 ; idxDay++) {  
                    %>
                            <td onclick="moveDetailPageEvent(<%=idxDay%>)">
                                <p><%=idxDay%></p>

                                <% 
                                while(result.next()) {
                                    Date dateRow = result.getDate(1);
                                    SimpleDateFormat idxDayForm = new SimpleDateFormat("dd");
                                    int Day = Integer.parseInt(idxDayForm.format(dateRow));
                                    if(Day == idxDay) { 
                                %>
                                        <div class="hidden"><%=result.getInt(2)%>개</div> 
                                <%
                                    }
                                }
                                %>

                            </td>

                                <% if(idxDay%7 == 0){
                                idxDay++;
                                break;}}
                        }
                        else if(numMonth == 4||numMonth == 6||numMonth == 9||numMonth ==11)
                        { for (; idxDay<=30 ; idxDay++) { %>
                            <td onclick="moveDetailPageEvent(<%=idxDay%>)">
                            <p><%=idxDay%></p>
                            <% while(result.next()){
                                Date dateRow = result.getDate(1);
                                SimpleDateFormat idxDayForm = new SimpleDateFormat("dd");
                                int Day = Integer.parseInt(idxDayForm.format(dateRow));
                                if(Day == idxDay){ %>
         
                                    <div class="hidden"><%=result.getInt(2)%>개</div><%}}
                            %>
                            </td>
                            <%if(idxDay%7 == 0){
                            idxDay++;
                            break;}
                            }
                        }
                        else
                        { for (; idxDay<=28 ; idxDay++) { %>
                            <td onclick="moveDetailPageEvent(<%=idxDay%>)">
                            <p><%=idxDay%></p>
                            <% while(result.next()){
                                Date dateRow = result.getDate(1);
                                SimpleDateFormat idxDayForm = new SimpleDateFormat("dd");
                                int Day = Integer.parseInt(idxDayForm.format(dateRow));
                                if(Day == idxDay)
                                { %> <div class="hidden"><%=result.getInt(2)%>개</div><%}
                            }%>
                            </td>
                            <% if(idxDay%7 == 0){
                            idxDay++;
                            break;}}%>
                    </tr> <% }}
                    %>
            </table>
        </div>
    </div>
    <script>
    // 달 선택 html 생성
        const monthValue = document.querySelector("#hidden").innerHTML
        const selectTag = document.querySelector("#month")
        for(let i = 1; i<=12 ; i++){
            const newOption = document.createElement("option");
            if(monthValue==i)
            {
                newOption.setAttribute('value',i)
                newOption.setAttribute('selected',true)
                newOption.innerHTML = i+"월" ;
            }
            else
            {
                newOption.setAttribute('value',i)
                newOption.innerHTML = i+"월";
            }
            selectTag.appendChild(newOption)
        }
        <%-- console.log(document.documentElement.innerHTML) --%>
        let year = <%=numYear%>;
        let month = <%=numMonth%>;
        function moveDetailPageEvent(idxDay){   
            let date = year + "-" +month+"-"+idxDay
            location.href="memberTodoDetail.jsp?date=" + date;
        } 
    </script>
</body>