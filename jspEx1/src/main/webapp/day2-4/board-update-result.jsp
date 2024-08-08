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
		String boardNo = request.getParameter("boardNo");
		

		ResultSet rs = null;
		Statement stmt = null;

		
		try{
			
			stmt = conn.createStatement();
			String query = "UPDATE TBL_BOARD SET " + title = "", contents = "" + "WHERE boardNo =" + boardNo + "'";
			stmt.executeUpdate(query);
			response.sendRedirect("list2.jsp");
			

			
		} catch(SQLException ex) {
			out.println("SQLException : " + ex.getMessage());
		}
		
		
		
		
	%>

</body>
</html>
<script>
	alert("수정되었다");
	location.href = "board-view.jsp?boardNo="+boardNo;
</script>