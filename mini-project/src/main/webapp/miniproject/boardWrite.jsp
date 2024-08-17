<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.body{
		padding: 0 0 50px 0;
	    min-height: 950px;
	    position: relative;
	    max-width: 1200px;
	    margin: 0 auto;
		}
	
	
	.top{
		border-bottom: 1px solid #707070;
	    padding: 40px 0;
	    margin-bottom: 30px;
	    display: block;
	    font-weight: 400;
	  	font-size: 15px;
	    font-family: 'Noto Sans KR', sans-serif;
	    margin: 0;
	    padding: 0;
	    color: #555;
	    word-break: break-all;
		}
	
	
	h3{
		font-weight: 500;
		color: #292929;
		font-size: 33px;
		text-align: center;
		line-height: 130%;
		font-family: 'Noto Sans KR', sans-serif;
		}
		
	.form{
		margin-top: 30px;
	    padding: 16px 15px 15px;
	    background: #f4f5f9;
	    border-top: 1px solid #c4c9ce;
	    line-height: 130%;
	    display: block;
	    font-weight: 400;
	    font-size: 15px;
	    font-family: 'Noto Sans KR', sans-serif;
	    color: #555;
		}
		
	h4{
		font-size: 19px;
		position: relative;
		font-weight: 500;
		color: #111;
		line-height: 130%;
		font-family: 'Noto Sans KR', sans-serif;
		margin: 0px;
		}
		
	.input{
		position: relative;
    	padding: 20px 19px;
        line-height: 130%;
        font-weight: 400;
    	font-size: 15px;
   		font-family: 'Noto Sans KR', sans-serif;
    	color: #555;
	}
	
	.tit{
		margin-top: 20px;
	}
	
	.inti{
	   	cursor: pointer;
	    color: #111;
	    font-weight: 500;
	    margin-bottom: 7px;
    	display: block;
   
	}
	
	input {
		display: inline-block;
		height: 39px;
	    font-size: 15px;
	    border: 1px solid #d2d2d2;
	    text-indent: 5px;
	    background: #fff;
	    color: #555;
	    vertical-align: middle;
	    width: 100%;
	}
	
	.con{
		margin-top: 20px;
		line-height: 130%;
		
	}
	
	.conti{
		margin-bottom: 7px;
	    display: block;
	    color: #111;
	    font-weight: 500;
	}
	
	textarea {
		height: auto;
		padding: 10px;
	    resize: none;
	    border: 1px solid #d2d2d2;
	    color: #555;
	    line-height: 24px;
        width: 100%;
	}
	
	.but{
		float: right;
	    margin-bottom: 5px;
	    line-height: 130%;
	}
	
	.back{
		position: relative;
	    width: 110px;
	    height: 48px;
	    line-height: 48px;
	    border-radius: 24px;
	    color: #fff;
	    background: #888;
	    margin: 0 2px;
	    display: inline-block;
	    font-size: 15px;
	    text-align: center;
	    vertical-align: top;
	    border-width: 0;
		}
	
	.go{
		position: relative;
	    width: 110px;
	    height: 48px;
	    line-height: 48px;
	    border-radius: 24px;
	    color: #fff;
	    background: #1699dc;
	    margin: 0 2px;
	    display: inline-block;
	    font-size: 15px;
	    text-align: center;
	    vertical-align: top;
	    border-width: 0;
		}
		
		.det{
			margin-top: 10px;
		    color: #555;
		    font-size: 14px;
		    line-height: 150%;
		}
		
		.text{
			margin-top: 10px;
    padding-top: 10px;
    border-top: 1px dashed #ddd;
    color: #555555;
    font-size: 14px;
		}
	
	
</style>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<div class="body">
	<div class="top">
		<h3>민원신청</h3>
	</div>
	<div class="form">
		<h4>민원내용</h4>
	</div>
	<div class="input">
	<form action="boardList.jsp" name="boardwrite">
		<div class="tit">
			<div class="inti">민원 제목</div>
			<input type="text" name="title">
		<div class="con">
			<div class="conti">민원 내용</div>
			<textarea cols="50" rows="10" name="contents"></textarea>
		</div>
	<div class="det">
		<p>민원 내용에 본인 및 제3자의 개인정보 등 공개에 부적절한 내용이 포함되었거나 공개 목적에 부합하지 않을 경우 민원처리자가 삭제 할 수 있습니다.</p>
	</div>
	<div class="text">
		※아래와 같이 민원 관련 내용이 공개될 수 있습니다.
		<ul>
			<li>공개장소: 국민신문고 이용기관의 누리집(홈페이지), 「국민신문고」누리집(홈페이지), 「공공데이터포털」민원분석정보 유사사례 OpenAPI</li>
			<li>공개목적: 정책 질의응답 및 유사한 민원의 답변 참고</li>
			<li>공개항목: 민원내용, 민원답변</li>
			<li>공개기간: 민원 처리 완료일로부터 2년간</li>
		</ul>			
	</div>
		<div class="but">
			<button class="back" type="button" onclick="location.href='boardList.jsp'">취소</button>
			<button class="go" type="button" onclick="fnCheck()">신청 완료</button>
		</div>
	</form>
	</div>
	</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>
<script>
	function fnCheck(){
		var form = document.boardwrite;
		if(form.title.value == "" || form.title.value == undefined){
			alert("제목을 입력해주세요.");
			form.title.focus();
			return;
		}	
		if(form.contents.value == ""){
			alert("내용을 입력해주세요.");
			form.contents.focus();
			return;
		}
		
		alert("신청 완료되었습니다.");
		form.submit();
		
	}
</script>