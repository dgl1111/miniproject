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
		String id = request.getParameter("userId");
		String[] hobby = request.getParameterValues("hobby");
		/* return type이 배열인 경우: request.getParameterValues  */
		for(String h : hobby){
			/* for-each문 */
			out.println(h + "<br>");
		}
		out.println(id + "님 환영합니다!");
	
	%>

</body>
</html>