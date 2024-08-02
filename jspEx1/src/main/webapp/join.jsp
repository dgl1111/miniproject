<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<form action="join_result.jsp" method="get"> <!-- : 제출  -->
		<div>아이디 : <input type="text" name="userId"></div>
					<!-- name 속성 정의하지 않으면 안넘어간다 -->
		<div>비밀번호 : <input type="password" name="Pwd"></div>
		<div>이름 : <input type="text" name="userName"></div>
		<div>
			<label><input type="radio" value="M" name="gender">남자</label>
			<label><input type="radio" value="F" name="gender">여자</label>
		</div>
		<!-- <button type="submit">회원 가입</button> -->
		<input type="submit" value="회원 가입">
		<!-- 제출을 누르면 input에 담아서 action으로  -->
	</form>
</body>
</html>