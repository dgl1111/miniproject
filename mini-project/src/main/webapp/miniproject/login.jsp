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
	<form action="main.jsp" name="login">
	<div>
		<input type="text" name="userId" id="userId" maxlength="50" pattern="[A-Za-z0-9]" placeholder="아이디" >
	</div>
	<div>
		<input type="password" name="pwd" id="pwd" maxlength="20" placeholder="비밀번호">
	</div>
	<input type="button" onclick="fn_login()" value="로그인">
	</form>
</body>
</html>
<script>
	//login
	function fn_login() {
		var form = document.login;
		form.action = "main.jsp"
		form.submit();
	}

			
</script>