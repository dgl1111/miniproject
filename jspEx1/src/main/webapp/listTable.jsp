<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table, th, tr, td{
	border: 1px solid black;
	border-collapse: collapse;
	padding: 10px;
	}
</style>
</head>
<body>
	<%@include file="db.jsp"%>	
	<%
		ResultSet rs = null;
		/* result결과 담은 */
		Statement stmt = null;
		/* query를 호출할 객체 */
		
		try{
			stmt = conn.createStatement();
			String querytext = "select * from student";
			rs = stmt.executeQuery(querytext);
			/* querytext들을 담아 보냈다. rs로 리턴  rs객체 */
			
			out.println("<table>");
			out.println("<tr>");
			out.println("<th>선택</th>");
			out.println("<th>이름</th>");
			out.println("<th>학번</th>");
			
			
	
			while (rs.next()) {
				out.println("<tr>");
				out.println("<td>" + "<input type='radio' name='stu'>" +"</td>");
				out.println("<td>" + rs.getString("STU_NAME") +"</td>");
				out.println("<td>" + rs.getString("STU_NO") +"</td>");
				out.println("</tr>");
				
			}
			out.println("</table>");
	
		} catch(SQLException ex) {
			out.println("SQLException : " + ex.getMessage());
		}
	%>
</body>
</html>