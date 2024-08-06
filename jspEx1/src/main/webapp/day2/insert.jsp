<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div{
		margin-top: 5px; 
	}
</style>
</head>
<body>
	<form action="insert-result.jsp" name="insert">
		<div>
		<label>제목 : <input type="text" name="title"></label>  
		</div>
		<div>
		<label>내용 : <textarea cols ="50"rows="10" name="contents"></textarea></label>  
		</div>
		<div>
		<button type="button" onclick="fnCheck()">저장</button>
		<!-- <input type="text" onclick="fnCheck" value="저장"> -->
		<!-- type이 submit이면 바로 action으로 간다. -->
		</div>
	</form>
</body>
</html>
<script>
	function fnCheck() {
		var form = document.insert;
		/* <form> 전체에 대한 객체가 들어간다. */
		if(form.title.value == ""){
			alert("제목을 입력해주세요");
			form.title.focus();
			return;
			/* return을 안하면 밑에가 바로 실행 */
		}
		if(form.contents.value == ""){
			alert("내용을 입력해주세요");
			form.contents.focus();
			return;
		}
		
		alert("저장되었습니다.")
		form.submit();
	}

</script>