<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.wrap {
	position: relative;
	padding-bottom: 50px;
	margin-left: 350px;
	margin-right: 300px;
}

h3 {
	border-bottom: 1px solid #707070;
	padding-bottom: 40px;
	margin-bottom: 30px;
	position: relative;
	display: block;
	text-align: left;
	font-weight: 500;
	color: #292929;
	font-size: 33px;
	line-height: 130%;
}

table, th, tr, td {
	border-collapse: collapse;
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 15px;
	color: #555;
	font-weight: 400;
	padding: 14px 7px;
	line-height: 20px;
	text-align: center;
}

table {
	width: 100%;
	height: auto;
	border-top: 2px solid #7f7f7f;
	border-bottom: 2px solid #7f7f7f;
}

th {
	
	border-top: 2px solid #7f7f7f;
	background: #f9f9f9;
	border: 0;
	font-weight: bold;
	color: #111;
}

tr {
	
	border-top: 1px solid #d5d5db;
	border-bottom: 1px solid #d5d5db;
}
</style>
</style>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	
	<div class="wrap">
	<h3>나의 민원</h3>
	
	<table>
		<tr>
			<th> 이름 </th>
			<th> 아이디 </th>
			<th> 휴대폰번호 </th>
			<th> 이메일 </th>
		</tr>	
	
	
	<%@include file="db2.jsp"%>	
	<%
	ResultSet rs = null;
	Statement stmt = null;
	String userId = request.getParameter("userId");
	System.out.println(session.getAttribute("userId"));
	
	try{
		stmt = conn.createStatement();
		String querytext = "SELECT * FROM TBL_USER WHERE userId = '"+ userId +"'";
		rs = stmt.executeQuery(querytext);
	
	
	if (rs.next()) {
		
	%>
		<tr>
			<td> <%= rs.getString("name") %></td>
			<td> <%= rs.getString("userId") %></td>
			<td> <%= rs.getString("phone") %></td>
			<td> <%= rs.getString("email") %></td>
		</tr>
	
	<%
	}else {
        response.sendRedirect("login.jsp");
	}
	
%>
	
	
	<%	
	} catch(SQLException ex) {
		out.println("SQLException : " + ex.getMessage());
	}
	
%>
	</table>
	</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
