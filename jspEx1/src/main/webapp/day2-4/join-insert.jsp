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
	
	<!-- 행을 테이블의 형태로 받을필요가 없는 insert delete update -->
	<!-- resultSet rs : select한 query "결과"를 담는애  -->
	
	
	<%
		Statement stmt = null;
		/* db를 연결하기 위해 호출하는 방법 */
		
		
		/* 보낸값 꺼낼때 */
		String id = request.getParameter("userId");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("userName");
		
		stmt = conn.createStatement();
		/* db에 연결할수있는 객체가 됐다. */
		String query  = "INSERT INTO tbl_user" + " VALUES ('"+ id +"', '"+ pwd +"', '"+ name +"', 0, 'N', 'C')";
		System.out.println(query);
		stmt.executeUpdate(query);
		/* insert문  */
		
	
	%>

</body>
</html>