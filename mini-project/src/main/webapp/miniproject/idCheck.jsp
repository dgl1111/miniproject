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
	<%@include file="db2.jsp"%>	
	
	<% 
	  	String id = request.getParameter("userId");
		ResultSet rs = null;
		Statement stmt = null;
		
		
		try{
			stmt = conn.createStatement();
			String querytext = "SELECT * FROM TBL_USER WHERE userId= '" + id + "' ";
			rs = stmt.executeQuery(querytext);
			
			
			if(rs.next()){
				/* next함수가 하는역할 : 다음행이 존재하는지 확인 */
				out.println("중복된 아이디");
			
			}else{
				out.println("사용가능");
				
			}
		} catch(SQLException ex) {
			out.println("SQLException : " + ex.getMessage());
		}
	
	
	%>

</body>
</html>