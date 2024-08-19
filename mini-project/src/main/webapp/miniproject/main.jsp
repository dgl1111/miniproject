<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	html{
		height: 100%;
	}
	
	body{
		max-width: 1920px;
	}
	
	.main{
		height: 435px;
    	position: relative;
    	padding-top: 10px;
    	margin-top: 45px;
	}
		
	.back{
		position: relative;
		width: 100%;
		height: 435;
	}
	
	
</style>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
	
		<main>
			<form class="main">
				<img src="../img/main.jpg" alt="" class="back">
			</form>	
		</main>
</body>
<jsp:include page="footer.jsp"></jsp:include>
