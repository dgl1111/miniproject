<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		/* session.removeAttribute("userId"); */
		/* session 삭제하는 방법. 그렇게 많이 안쓴다. */
		session.invalidate();
		/* session을 10개 넣더라도 한번에 삭제 가능 */
		/* out.println(session.getAttribute("userId")); */
	%>
	<form action="login_result.jsp" >
	<%@include file="db2.jsp"%>	
	<div>
		<label>아이디 : <input type="text" name="id"></label>
	</div>
	<div>
		<label>패스워드 : <input type="password" name="pwd"></label>
	</div>
	<input type="submit" value="로그인!">
	</form>
</body>
</html>