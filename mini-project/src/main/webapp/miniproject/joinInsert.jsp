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
		/* db를 연결하기 위해 호출하는 방법 */
		
		
		/* 보낸값 꺼낼때 */
		String id = request.getParameter("userId");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("userName");
		
		stmt = conn.createStatement();
		/* db에 연결할수있는 객체가 됐다. */
		String query  = "INSERT INTO tbl_user" + " VALUES ('"+ name +"', '"+ id +"', '"+ pwd +"', '' , '', '', 'C')";
		System.out.println(query);
		stmt.executeUpdate(query);
		/* insert문  */
		
	
	%>

</body>
</html>