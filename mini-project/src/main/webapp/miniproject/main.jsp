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
		min-height: 100vh;
	}
	
	.main{
		
	}
		
	.back{
		position: relative;
		width: 100%;
	}
	
	.top{
		position: absolute; 
		z-index: 2;
	}
	.bot{
		position: absolute;
		
		z-index: 1;
	}
</style>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
		<main>
			<form class="main">
				<img src="../img/bottom.png"  alt="" class="bot">
				<img src="../img/top.png"  alt="" class="top">
				<img src="../img/main.jpg" alt="" class="back">
			</form>	
		</main>
</body>
<jsp:include page="footer.jsp"></jsp:include>
