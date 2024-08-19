<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.wrap{
		max-width: 1400px;
		margin-left: 350px;
		margin-right: 250px;
	}
	
	h3{
		font-size: 33px;
	    color: #292929;
	    line-height: normal;
	    padding-left: 15px;
	    padding-bottom: 15px;
	    border-bottom: 1px solid #707070;
	    margin-top: 0px;
	    margin-bottom: 23px;
	    font-weight: 500;
	    font-family: 'Noto Sans KR', sans-serif;
	}
	
	h4{
		margin-top: 30px;
	    padding: 16px 15px 15px;
	    background: #f4f5f9;
	    border-top: 1px solid #c4c9ce;
	    line-height: 130%;
	    font-weight: 500;
	    font-size: 19px;
	    position: relative;
	    font-family: 'Noto Sans KR', sans-serif;
	    color: #111;
    
	}
	
	form{
			max-height: 800px;
		    padding: 20px 0px 20px 20px; 
	}
	
	.title{
		position: relative;
	    color: #111;
	    font-weight: 500;
	    line-height: 24px;
	    border: 0;
	    background: #fff;
	    text-align: left;
	    padding: 8px 0;
	    float: left;
	    display: table-cell;
	    vertical-align: top;
	    width: 170px;
	    font-family: 'Noto Sans KR', sans-serif;
	    font-size: 15px;
	       margin: 0;
	}
	
	input{
		height: 31px;
		font-size: 15px;
	    border: 1px solid #d2d2d2;
	    text-indent: 5px;
	    background: #fff;
	    color: #555;
	    vertical-align: middle;
	    width: 260px;
	    margin-right: 25px;
	    font-family: 'Noto Sans KR', sans-serif;
	    font-weight: 400;
	    line-height: 18px;
	    text-align: left;
	    padding: 8px 0;
	    font-weight: normal;
	
	} 
	
	select{
	
    height: 39px;
    font-size: 15px;
    border: 1px solid #d2d2d2;
    text-indent: 5px;
    background: #fff;
    color: #555;
    vertical-align: middle;
    width: 260px;
    margin-right: 25px;
    text-align: left;
    padding: 8px 0;
	}
	
	input[type="radio"] {
		margin: 2px 10px 2px 0;
		height: 20px;
		width: 100px;
	}
	
	.btn{
		margin-top: 20px;
    text-align: right;
    line-height: 130%;
    font-weight: 400;
    font-size: 15px;
    padding: 0px;
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
    padding: 0;
    font-weight: 400;
    font-family: 'Noto Sans KR', sans-serif;
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
	    padding: 0;
	    font-family: 'Noto Sans KR', sans-serif;
	}
	
	

</style>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>

	<div class="wrap">
	<h3>회원가입</h3>
	
	
	<h4>회원정보 필수입력</h4>
	
	<form action="join-insert.jsp" name="user">
	<!-- form 태그의 역할 : form 태그안에 있는 버튼을 눌렀을떄 form 태그에 있는 action 속성이 실행(action 속성 안에 있는 페이지로 이동) -->
		<div class="info">

		<div>
			<label class="title">이름</label>
			 <input type="text" name="name"> 
		</div>
		<br>	
		<div>
			<label class="title">아이디</label> 
			<input type="text" name="id" id="userId" maxlength="12">
			<button type="button" onclick="fn_idCheck()">중복체크</button>
		<br>	
		</div>
		<br>
		<div>
			<label class="title">비밀번호</label> 
			<input type="password" name="pwd" maxlength="20">
		</div>
		<br>
		<div>
			<label class="title">전자우편</label> 
				<input type="text" id="email_in01" name="email1" value=""> @ <input type="text" id="email_in02" name="email2" readonly="readonly" value=""> 
					<select id="selectEmail" onchange="fn_selectemail(this);">
						<option value="select" selected="selected">선택</option>
						<option value="">직접입력</option>
						<option value="naver.com">네이버</option>
						<option value="gmail.com">구글(g메일)</option>
						<option value="daum.net">다음</option>
						<option value="nate.com">네이트</option>
						<option value="hanmail.net">한메일</option>
						<option value="kakao.com">카카오</option>
						<option value="hotmail.com">핫메일</option>
					</select>
		</div>
		<br>
		<div>
			<label class="title">휴대전화</label>
			<select id="tel2_1" name="phone1">
				<option value selected="selected">선택</option>
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="018">018</option>
				<option value="019">019</option>
			</select> - <input type="text" name="phone2" id="tel2_2" maxlength="4"> - <input type="text" name="phone3" id="tel2_3" maxlength="4">
		</div>
		<br>
		<div>
			<label class="title">성별</label>
			<label class="gender">남<input type="radio" name="gender" value="M"></label>
			<lable class="gender">여<input type="radio" name="gender" value="F"></lable>  
		</div>
		<br>
		
		<div class="btn">
		<input onclick="fnMain()" type="button" value="취소" class="back">
		<input onclick="fnSubmit()" type="button" value="회원가입" class="go">
		</div>
	</form>
	</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>
<script>


//아이디 검사
function fn_idCheck() {
		var f = document.user;
	 	var param = "userId="+f.userId.value; 
	 	
		location.href = "idCheck.jsp?" + param; 
}
 

	
function fn_selectemail(obj) {
    var emailAddr = obj.value;
    var emailIn02 = document.getElementById('email_in02');

    if (emailAddr === "") {
        emailIn02.value = "";
        emailIn02.focus();
        emailIn02.readOnly = false;
    } else {
        if (emailAddr !== "select") {
            emailIn02.value = emailAddr;
            emailIn02.readOnly = true;
        } else {
            emailIn02.value = "";
            emailIn02.readOnly = false;
        }
    }
}


	function fnMain() {
		location.href = "main.jsp"; 
		
	}
	function fnSubmit(){
		var f = document.user;
		f.action = "join-insert.jsp";
		f.submit(); 
	}
	

	
</script>