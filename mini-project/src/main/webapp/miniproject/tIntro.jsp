<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h2{
	max-width: 1200px;
    margin: 0 auto;
    border-bottom: 1px solid #818181;
    padding: 40px 10px;
    font-size: 36px;
    font-weight: 500;
    color: #222222;
    position: relative;
    text-align: center;
	}
	
	.int{
		padding: 30px 0 50px;
		max-width: 1200px;
	    margin: 0 auto;
	    font-family: 'MalgunGothic', '맑은 고딕', Sans-Serif;
	    letter-spacing: -0.03em;
	    font-weight: 400;
	    font-size: 17px;
	    color: #555;
	}
	
	h3{
		margin: 40px 0 20px 0;
	    color: #2b2b2b;
	    font-size: 22px;
	    font-weight: bold;
	}
	
	.cont{
		padding: 20px 40px;
	    border: 1px solid #cfcdcd;
		font-weight: 400;
    	font-size: 17px;
	}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<h2>생각함 소개</h2>
	<div class="int">
	<h3>생각함이란?</h3>
	<p class="cont">국민권익위원회에서 운영하는 온라인 “정책소통공간”으로, 일상에서 마주하는 여러가지 공공의제에 대해 서로 생각을 나누고 좋은 생각은 함께 발전시켜 정부정책으로 만들어 갑니다!</p>
	</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>