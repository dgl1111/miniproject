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
	.wrap{
		
		position: relative;
    	width: 1500px;
    	padding-bottom: 50px;
    	margin-left: 350px;
    	margin-right: 300px;

	}
	h3{
		border-bottom: 1px solid #707070;
	    padding-bottom : 40px;
	    margin-bottom: 30px;
	    position: relative;
	    display: block;
	    text-align: left;
	    font-weight: 500;
	    color: #292929;
	    font-size: 33px;
	    line-height: 130%;
	    width: 1200px;
		}
	


	table, th,  tr,  td{
		 border-collapse: collapse;
		 font-family: 'Noto Sans KR', sans-serif;
		 font-size: 15px;
		 color: #555;
		 font-weight: 400;
		 padding: 14px 7px;
		 line-height: 20px;
		 text-align: center;
	}
	
	table{
		width: 1200px;
		height: 600px; 
		border-top: 2px solid #7f7f7f;
		border-bottom: 2px solid #7f7f7f;
		
		
	}
	
	th{
		border-top: 2px solid #7f7f7f;
		background: #f9f9f9;
	    border: 0;
	    font-weight: bold;
	    color: #111;
	}
	
	tr{
		border-top: 1px solid #d5d5db;
		border-bottom: 1px solid #d5d5db;
		
	}
</style>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
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
		<div class="wrap">
		<h3>민원조회</h3>
		
		<table>
		<tr>
			<th> 번호 </th>
			<th> 제목 </th>
			<th> 작성자 </th>
			<th> 조회수 </th>
			<th> 작성일 </th>
		</tr>	
		
		<%
			while (rs.next()) {		
		%>
		<tr>
			<td> <%= rs.getString("boardNo") %></td>
			<td> 
				<a href="javascript:;" onclick="fnView('<%= rs.getString("boardNo") %>')" style="text-decoration:none; color: black;">
					<%= rs.getString("title") %>
				</a>
			</td>
			<td>
			  		<%= rs.getString("name") %>
			  	</a> 
			 </td>
			<td> <%= rs.getString("cnt") %></td>
			<td> <%= rs.getString("cdatetime") %></td>
		</tr>
	<%
		}
	%>
	</table>
	</div>
	<%
	} catch(SQLException ex) {
		out.println("SQLException : " + ex.getMessage());
	}
	%>
<jsp:include page="footer.jsp"></jsp:include>
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