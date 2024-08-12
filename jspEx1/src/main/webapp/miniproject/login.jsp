<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>회원 로그인</div>

	<%
		session.invalidate();
		/* session을 10개 넣더라도 한번에 삭제 가능 */
		/* out.println(session.getAttribute("userId")); */
	%>
	<form action="main.jsp" name="login">
	<%@include file="db2.jsp"%>	
	<div>
		<input type="text" name="userId" id="userId" maxlength="50" pattern="[A-Za-z0-9]" placeholder="아이디" >
	</div>
	<div>
		<input type="password" name="pwd" id="pwd" maxlength="20" placeholder="비밀번호">
	</div>
	<button type="button" onclick="fn_login()">로그인</button>
	</form>
</body>
</html>
<script>
	//login
	function fn_login() {
		var form = document.login;
		if(form.userId.value)
	}

			
</script>