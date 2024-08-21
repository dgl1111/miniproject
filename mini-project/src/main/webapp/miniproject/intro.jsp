<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#cont{
		padding: 0 0 50px 0;
	    max-width: 1200px;
	    height: auto;
	    margin-left: 400px;
	    margin-right: 400px;
	    font-family: 'Noto Sans KR', sans-serif;
	    
		}
	
	h3{
		border-bottom: 1px solid #707070;
	    padding: 40px 0;
	    margin-bottom: 30px;
	    margin-top: 0px;
	    font-weight: 500;
	    color: #292929;
	    font-size: 33px;
	    text-align: center;
}
	}
	.int{
		margin-bottom: 30px;
    	padding: 0 0 25px 5px;
   		border-bottom: 1px solid #e8e8e8;
   		vertical-align: middle;
	}
	strong{
		font-size: 22px;
	    color: #333;
	    font-weight: 500;
	    line-height: 32px;
	}
	.mean{
		margin-top: 15px;
	    line-height: 27px;
	    font-weight: 400;
	    font-size: 15px;
	}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<div id="cont">
	<h3>사이트 소개</h3>
	<div class="int">
	<strong>국민신문고는</strong>
	<p class="mean">정부에 대한 민원·제안·참여 등을 인터넷으로 간편하게 신청하고 처리하는 범정부 대표 온라인 소통 창구로, 모든 행정기관(중앙·지자체·교육청·해외공관), 사법부, 주요 공공기관과 연결되어 원-스톱 서비스를 제공합니다.</p>
	</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>