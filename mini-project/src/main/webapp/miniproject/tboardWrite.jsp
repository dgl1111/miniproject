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
		<h2>새로운 생각쓰기</h2>
	</div>
	<hr>
	<div>
	<img src="../img/생각쓰기사진.png"  alt="">
		<span>함께 이야기하고 싶은 공공문제에 대한 여러분의 생각을 적어주세요!</span>
	</div>
	<form action="tboardList.jsp" name="tboardwrite">
		<div>
			<input type="text" name="title">
			<div>※제목을 입력해주세요</div>
		<div>
			<textarea cols="50" rows="10" name="contents"></textarea>
			<div>※내용을 입력해주세요</div>
		</div>
		<div>
			<button type="button" onclick="fnCheck()">생각 시작하기</button>
			<button type="button" onclick="location.href='tboardList.jsp'">취소</button>
		</div>
		
			
		
	</form>

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
		
		alert("작성 되었습니다.");
		form.submit();
		
	}
	
	
</script>