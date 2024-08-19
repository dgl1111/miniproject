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
		Statement stmt = null;
		
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String gender = request.getParameter("gender");
		
		
		String phone = phone1 + phone2 + phone3;
		String email = email1 + email2;
		
		
		stmt = conn.createStatement();
		/* db에 연결할수있는 객체가 됐다. */
		String query  = "INSERT INTO tbl_user VALUES ('"+ name +"', '"+ id +"', '"+ pwd +"', '"+ phone +"', '"+ email +"', '"+ gender +"', 'C', 0)";
						
		System.out.println(query);
		stmt.executeUpdate(query);
		
		/* insert문  */
		
		response.sendRedirect("main.jsp");
	
	%>

</body>
</html>
