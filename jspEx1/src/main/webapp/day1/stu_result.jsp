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
		String stuNo = request.getParameter("stuNo");
		/* parameter로 넘어올걸 받을거야 */
		
		
		ResultSet rs = null;
		/* result결과 담은 */
		Statement stmt = null;
		/* query를 호출할 객체 */
		
		try{
			stmt = conn.createStatement(); 
			String querytext = "select * from student where STU_NO = " + stuNo ;
			/* 검색조건. 문자일때는'""'로 감싸주기 "select * from student where STU_NO = '" + stuNo + "'" */
			rs = stmt.executeQuery(querytext);
			/* 쿼리문 실행 rs에 결과 담아준다. */
			
			if(rs.next()){
				out.println(rs.getString("STU_NO") + "<br>" + rs.getString("STU_NAME") + "<br>" + rs.getString("STU_DEPT")+ "<br>" + rs.getString("STU_GENDER") + "<br>"); 
			}else{
				out.println("해당 학생이 존재 하지 않습니다.");
			}
			
			
		} catch(SQLException ex) {
			out.println("SQLException : " + ex.getMessage());
		}
	%>

</body>
</html>