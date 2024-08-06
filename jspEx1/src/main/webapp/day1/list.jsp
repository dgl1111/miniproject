<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	
			while (rs.next()) {
				/* rs.next() = true.next의 return값이 true */
				out.println(rs.getString("stu_name") + "\t" + rs.getString("stu_no") + "<br>"); 
			}
	
		} catch(SQLException ex) {
			out.println("SQLException : " + ex.getMessage());
		}
	%>
</body>
</html>