<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="db2.jsp"%>	
	<% 
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		String userId = (String) session.getAttribute("userId");
				/* session 기본 리턴값 object. 문자열 형태로 다운캐스팅해야 된다.  */

		ResultSet rs = null;
		Statement stmt = null;

		
		try{
			
			stmt = conn.createStatement();
			String query = "INSERT INTO TBL_BOARD VALUES"+"("+ "NULL, '" + title + "', '" + contents+"', now() , 0, '"+ userId + "' "+")";
			stmt.executeUpdate(query);
			System.out.println("쿼리문: " + query);
			response.sendRedirect("boardList.jsp");
			

			
		} catch(SQLException ex) {
			out.println("SQLException : " + ex.getMessage());
		}
		
		
		
		
	%>

</body>
</html>
