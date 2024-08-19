<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.login{
		display: block;
        max-width: 1100px;
        margin-left: 350px;
        margin-right: 300px;
	}
	
	h3{
		font-size: 33px;
	    color: #292929;
	    line-height: normal;
	    padding-bottom: 15px;
	    border-bottom: 1px solid #707070;
	    margin-top: 20px;
	    margin-bottom: 23px;
	    font-weight: 500;
	    font-family: 'Noto Sans KR', sans-serif;
	}
	
	h4{
		padding: 18px 0;
		display: block;
	    color: #333;
	    font-size: 22px;
	    font-weight: normal;
	    border-bottom: 3px solid #333;
	    text-align: center;
	    margin-bottom: 50px;
	    line-height: 18px;
	    font-family: 'Noto Sans KR', sans-serif;
	}
	
	form{
        
		font-weight: 400;
	    font-size: 15px;
	    line-height: 18px;
	    font-family: 'Noto Sans KR', sans-serif;
	    position: relative;
	    height: 100%;
	    color: #555;
	    display: block;
	    text-align: center;
	}

	
	input{
		height: 60px;
		width:100%;
    	padding: 0 15px;
    	font-size: 15px;
	    border: 1px solid #d2d2d2;
	    text-indent: 5px;
	    background: #fff;
	    color: #555;
	    vertical-align: middle;
	    font-family: 'Noto Sans KR', sans-serif;
	    font-weight: 400;
        margin-bottom: 30px;
        line-height: 130%;
		}
	
	
	button {
		font-size: 17px;
		display: block;
		width: 100%;
	    height: 60px;
	    border-width: 0;
	    display: block;
	    background-color: #318de7;
    	color: #fff;
	    height: 60px;
	    padding: 0;
	    line-height: 100%;
	    border-width: 0;
	    font-family: 'Noto Sans KR', sans-serif;
	    font-weight: 400;
	    margin-bottom: 30px;
	    margin-top: 25px;
		}
	
	img{
		margin-right: 10px;
	    vertical-align: -3px;
	    transition: all .6s;
	    max-width: 100%;
	    height: auto;
	    border: 0;
	}
		

</style>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<%@include file="db2.jsp"%>	
	

	
	<div class="login">
	<h3>로그인</h3>
	
	
	<h4>회원 로그인</h4>
	
	<form action="login-result.jsp" name="login">
	<div class="inputform" style="margin-right: 30px;">
		<input type="text" name="id" maxlength="50"placeholder="아이디">
		<input type="password" name="pwd" maxlength="20" placeholder="비밀번호">
	</div>
	<button onclick="fnSubmit()" type="button"><img src="../img/login_btn_icon.png" alt="">로그인</button>
	</form>
	</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>
<script>
function fnSubmit(){
	var f = document.login;
	f.action = "login-result.jsp";
	f.submit();
}
</script>