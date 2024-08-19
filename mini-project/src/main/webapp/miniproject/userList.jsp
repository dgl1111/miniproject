<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	.wrap{
		margin-left: 360px;
		margin-right: 300px;
		width: 1100px;
		height: 100%;
		
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
		 width: 1100px;
		 margin-bottom: 50px;
	}
	
	table{
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
<jsp:include page="header.jsp"></jsp:include>
<body>
	<div class="wrap">
		<h3>회원조회</h3>
		<table>
			<tr>
				<th> 아이디 </th>
				<th> 이름 </th>
				<th> 권한 </th>
				<th> 비밀번호 </th>
			</tr>	
	</div>	
	 <!-- html 코드 -->
	 <%-- <%@ %> : 자바코드 	 --%>
	
	<%@include file="db2.jsp"%>	
	<%
	
	ResultSet rs = null;
	Statement stmt = null;
	String sessionstatus = (String) session.getAttribute("status");
	System.out.println(session.getAttribute("userId"));
	
	try{
		stmt = conn.createStatement();
		String querytext = "SELECT * FROM TBL_USER";
		rs = stmt.executeQuery(querytext);
	
	
		while (rs.next()) {
			String status = rs.getString("status").equals("A")?"관리자" : "일반회원";
		%>
			<tr>
				<td> <%= rs.getString("userId") %></td>
				<td> <%= rs.getString("name") %></td>
				<td> <%= status %></td>
			
					<td><button onclick="fnReset('<%= rs.getString("userId")%>')">초기화</button></td>
				
				
				
			</tr>
	<%		
		}
	
	
	
	
	} catch(SQLException ex) {
		out.println("SQLException : " + ex.getMessage());
	}
%>
	</table>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>
<script>
	function fnReset(userId) {
		/* location.href = "pwd-reset.jsp?userId=" +userId; */
		window.open("pwd-reset.jsp?userId=" +userId, "reset", "width = 500", "height=500");
		/* 팝업으로 띄우기 */
		
	}
	
	function fnReload() {
		location.reload();
		/* reload: 내장된 객체. 화면 갱신, 새로고침 */
	}
	
	
</script>