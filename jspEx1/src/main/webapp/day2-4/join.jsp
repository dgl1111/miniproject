<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 아이디, 패스워드, 이름 저장 -->
	<form action="join-insert.jsp" name="user">
	<!-- form 태그의 역할 : form 태그안에 있는 버튼을 눌렀을떄 form 태그에 있는 action 속성이 실행(action 속성 안에 있는 페이지로 이동) -->
		<div>
			<!-- 데이터를 넘기고 싶으면 input에 name을 정의 -->
			<!-- value와 name 차이 : name은 value를 담기 위한 key.  -->
			아이디 : <input type="text" name="userId">
			<button type="button" onclick="fnId()">중복체크</button>
			
		</div>
		<div>
			패스워드 : <input type="password" name="pwd">
		</div>
		<div>
			이름 : <input type="text" name="userName">
		</div>
		<div>
			전화번호 : <input type="text" name="tel">
		</div>
		<div>
			<label><input type="radio" name="gender" value="M">남</label>
			<lable><input type="radio" name="gender" value="F">여</lable>  
		</div>
		<button>form action 저장</button>
		<button onclick="fnSave()" type="button">함수를 이용한 저장</button>
		<!-- 실제로 실행이후에는 action 부분이 실행. 함수만 호출하고 싶으면 type을 button을 바꿔라 -->
		<button onclick="fnSubmit()" type="button">action 수정 후</button>
		<button onclick="fnInsert()" type="button">복습</button>
	</form>
	
	
	
	
	
	
</body>
</html>
<script>
	function fnSave() {
		var f = document.user;
		var param = "userId="+f.userId.value +"&pwd="+f.pwd.value+"&userName="+f.userName.value; 
		/* form태그를 가져와서 form태그.value 하면 값 가져올수있다. */
		location.href = "join-insert.jsp?" + param; 
		
	}
	function fnSubmit(){
		var f = document.user;
		f.action = "join-insert2.jsp";
		f.submit();
	}
	
	function fnInsert(){
		var f = document.user; 
		f.action = "user-insert.jsp?"; 
		f.submit();
	}
	
	function fnId() {
		var f = document.user;
		var param = "userId="+f.userId.value; 
		location.href = "id-check.jsp?" + param; 
	}
	
</script>