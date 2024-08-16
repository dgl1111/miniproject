<%@page import="org.apache.catalina.tribes.group.interceptors.TwoPhaseCommitInterceptor"%>
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
	
</style>

</head>
<body>
	<%@include file="db2.jsp"%>	
	<%
	ResultSet rs = null;
	Statement stmt = null;
	System.out.println(session.getAttribute("userId"));
	
	try{
		stmt = conn.createStatement();
		String querytext = 
				  "SELECT B.boardNo, title, NAME, B.cnt, cdatetime, B.userId " + "FROM tbl_board B " + "INNER JOIN tbl_user U ON B.userId = U.userId";
		rs = stmt.executeQuery(querytext);
	%>
		<table>
		<tr>
			<th> 번호 </th>
			<th> 제목 </th>
			<th> 작성자 </th>
			<th> 조회수 </th>
			<th> 작성일 </th>
		</tr>			
	
		<tr>
			<td> <%= rs.getString("boardNo") %></td>
			<td> 
				<a href="javascript:;" onclick="fnView('<%= rs.getString("boardNo") %>')">
					<%= rs.getString("title") %>
				</a>
			</td>
			<td>
			  	<a href="javascript:;" onclick="fnInfo('<%= rs.getString("userId") %>')">
			  		<%= rs.getString("name") %>
			  	</a> 
			 </td>
			<td> <%= rs.getString("cnt") %></td>
			<td> <%= rs.getString("cdatetime") %></td>
		</tr>
	
	</table>
	<button onclick="location.href='boardWrite.jsp'">글쓰기</button>
	<%
	} catch(SQLException ex) {
		out.println("SQLException : " + ex.getMessage());
	}
	%>

</body>
</html>
<script>
	function fnView(boardNo) {
		location.href="boardView.jsp?boardNo="+boardNo;
	}
	function fnInfo(userId){
		location.href="myPage.jsp?userId="+userId;
	}
</script>