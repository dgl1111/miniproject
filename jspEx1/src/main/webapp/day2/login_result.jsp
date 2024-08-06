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
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		ResultSet rs = null;
		Statement stmt = null;
		
		try{
			
			stmt = conn.createStatement();
			String querytext = "SELECT * FROM TBL_USER " + "WHERE userId= '" + id + "' " + "AND pwd = '" + pwd + "'";
			rs = stmt.executeQuery(querytext);
			
			/* 자바의 string은 class. 객체 == 비교는 주소값의 비교. 자바에서 문자열 비교할떄는 equals  */
			if(rs.next()){
				out.println("로그인 성공");
				session.setAttribute("userId", rs.getString("userId"));
								/* session안에는 key, value 값 들어있다. session은 어느페이지에서든  */
				response.sendRedirect("list2.jsp");
			}else{
				out.println("로그인 실패");
			}

			

			
		} catch(SQLException ex) {
			out.println("SQLException : " + ex.getMessage());
		}

			
	%>
</body>
</html>