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
	%>
			<div><%= rs.getString("userId") %></div>
			<div><%= rs.getString("name") %></div>
			<div><%= rs.getString("status") %></div>
	<% 	
		}else{
			out.println("삭제된 아이디 입니다.");
			
		}
	} catch(SQLException ex) {
		out.println("SQLException : " + ex.getMessage());
	}

	
	
	%>
	
</body>
</html>