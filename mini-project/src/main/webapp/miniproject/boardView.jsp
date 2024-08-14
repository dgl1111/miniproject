<%@page import="java.awt.Checkbox"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	table, th,  tr,  td{
	 border : 1px solid black ;
	 border-collapse: collapse;
	 padding: 10px;
	}

	.comment{
	width: 330px;
	height: 20px;
	padding: 5px;
	margin: 10px 0;
	}
	
</style>

</head>
<body>
	<form action="board-delete.jsp" name="board">
	<%@include file="db2.jsp"%>	
	<%
		ResultSet rs = null;
		Statement stmt = null;
		String boardNo = request.getParameter("boardNo");
		
		try{
			stmt = conn.createStatement();
			String querytext = "SELECT * FROM TBL_BOARD WHERE BOARDNO =" + boardNo;
			rs = stmt.executeQuery(querytext);
			
			if(rs.next()){
	%>			
				<div>
					<input type="hidden" value="<%= rs.getString("boardNo")%>" name="boardNo">
						<div>
							<h4>신청정보</h4>
						</div>
						<div>
							<div>신청일시 <%= rs.getString("title") %></div>
							<div>신청인 <%= rs.getString("title") %></div>
						</div>
						
						<div>
							<h4>민원 신청 내용</h4>
						</div>
						<div>
						<div> 제목 : <%= rs.getString("title") %></div>
						<div> 내용 : <%= rs.getString("contents") %></div>
						</div>
				</div>
							
	<% 
		String sessionId = (String) session.getAttribute("userId");
		String sessionstatus = (String) session.getAttribute("status");
	
		if(rs.getString("userId").equals(sessionId) || sessionstatus.equals("A")){
			
		
	%>				
				
				<button type="button" onclick="fnUpdate()">수정</button>
				<button type="submit">취하</button>
				<button type="button" onclick="location.href='boardList.jsp'">목록</button>
	<% 			
				}
	%>
				
			
	<%
			
			}else{
				out.println("삭제된 게시글 입니다.");
			}
	
		
		} catch(SQLException ex) {
			out.println("SQLException : " + ex.getMessage());
		}
	%>
	</form>
</body>
</html>
<script>
	function fnUpdate() {
		var form = document.board;
		form.action = "board-update.jsp"
		/* action의 값 바꿔서 */
		form.submit();
		
	}
	
	
	function fnReload(){
		location.reload();
	}
</script>