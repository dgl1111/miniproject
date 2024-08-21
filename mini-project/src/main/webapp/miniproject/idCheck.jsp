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
		boolean idExists = false;
		
		
		
		try{
			stmt = conn.createStatement();
			String querytext = "SELECT * FROM TBL_USER WHERE userId= '" + id + "' ";
			rs = stmt.executeQuery(querytext);
			
			
			if(rs.next()){
				idExists = true; 
				/* out.println("중복사용");  */
			}
			
		} catch(SQLException ex) {
			out.println("SQLException : " + ex.getMessage());
		}
		 
	
	%>
	
</body>
</html>
  <script>
    // ID 중복 여부에 따른 처리
    <% if (idExists) { %>
        // 아이디가 중복된 경우
        window.opener.alert("사용 중인 아이디입니다.");
    <% } else { %>
        // 아이디가 사용 가능한 경우
        window.opener.alert("사용 가능한 아이디입니다.");
    <% } %>

    // 팝업 창을 닫음
    window.close();
    </script>

	
	
	