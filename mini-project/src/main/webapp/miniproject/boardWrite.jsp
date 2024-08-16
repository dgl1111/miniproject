<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div {
		margin-top : 5px;
	}
</style>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<div>
		<h3>민원신청</h3>
	</div>
	<hr>
	<div>
		<h4>민원내용</h4>
	</div>
	<form action="boardList.jsp" name="boardwrite">
		<div>
			<div>민원 제목</div>
			<input type="text" name="title">
		<div>
			<div>민원 내용</div>
			<textarea cols="50" rows="10" name="contents"></textarea>
		</div>
		<div>
			<button type="button" onclick="fnCheck()">신청 완료</button>
			<button type="button" onclick="location.href='boardList.jsp'">취소</button>
		</div>
	</form>
	
	<div>
		<p>민원 내용에 본인 및 제3자의 개인정보 등 공개에 부적절한 내용이 포함되었거나 공개 목적에 부합하지 않을 경우 민원처리자가 삭제 할 수 있습니다.</p>
	</div>
	<div>
		※아래와 같이 민원 관련 내용이 공개될 수 있습니다.
		<ul>
			<li>공개장소: 국민신문고 이용기관의 누리집(홈페이지), 「국민신문고」누리집(홈페이지), 「공공데이터포털」민원분석정보 유사사례 OpenAPI</li>
			<li>공개목적: 정책 질의응답 및 유사한 민원의 답변 참고</li>
			<li>공개항목: 민원내용, 민원답변</li>
			<li>공개기간: 민원 처리 완료일로부터 2년간</li>
		</ul>			
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