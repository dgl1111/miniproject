<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
	h3{
		font-size: 33px;
	    color: #292929;
	    line-height: normal;
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
	
	.info{
		    padding: 20px;
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
	<h3>회원가입</h3>
	
	
	<h4>회원정보 필수입력</h4>
	
	<form action="main.jsp" name="user">
	<!-- form 태그의 역할 : form 태그안에 있는 버튼을 눌렀을떄 form 태그에 있는 action 속성이 실행(action 속성 안에 있는 페이지로 이동) -->
		<div class="info">

		<div>
			<label class="title">이름</label>
			 <input type="text" name="userName"> 
		</div>
		<br>	
		<div>
			<label class="title">아이디</label> 
			<input type="text" name="userId" id="userId" maxlength="12"><span> 4~12자의 영문 대 소문자, 숫자를 입력할 수 있습니다.</span>
			<p id="fn_checkMbrId();"></p>
		<br>	
		</div>
		<div>
			<label class="title">비밀번호</label> 
			<input type="password" name="mbrPswd" maxlength="20" onchange="mbrpswdCheck();"><span>영문(대소문자 구분), 숫자를 반드시 1자 이상 설정하셔야 합니다.</span>
			<p id="mbrpswdCheck();"></p>
		</div>
		<br>
		<div>
			<label class="title">비밀번호 확인</label> 
			<input type="password" name="pwd" id="mbrpswdConfirm" maxlength="20">
			<p id="mbrPswdSameCheck"></p>
		</div>
		<br>
		<div>
			<label class="title">전자우편</label> 
				<input type="text" id="email_in01" name="email_in01" value=""> @ <input type="text" id="email_in02" name="email_in02" readonly="readonly" value=""> 
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
			<select name="tel2_1" id="tel2_1">
				<option value selected="selected">선택</option>
				<option value="010">010</option>
				<option value="011">010</option>
				<option value="016">010</option>
				<option value="017">010</option>
				<option value="018">010</option>
				<option value="019">010</option>
			</select> - <input type="text" name="tel" id="tel2_2" maxlength="4"> - <input type="text" name="tel" id="tel2_3" maxlength="4">
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
	
	
	
	
	
	
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>
<script>

//아이디 검사
function fn_checkMbrId() {
	var mbrIdInput = document.getElementById('userId');
    var mbrId = mbrIdInput.value.trim();
	
	var patten1 = /[A-Za-z0-9]{4,12}$/;
	var patten2 = /(?=.*[a-zA-Z])/;	// 알파벳을 포함하는지 여부

	var mbrIdCheck = document.getElementById('mbrIdCheck');
    var idCheckYn = document.getElementById('idCheckYn');
    var idCheckDupYn = document.getElementById('idCheckDupYn');
    
    mbrIdCheck.classList.remove("blue");

    if (mbrId.length < 4 || mbrId.length > 12) {
        mbrIdCheck.innerHTML = "아이디는 최소 4자에서 12자 이하로 입력 가능합니다.";
        idCheckYn.value = "N";
    } else if (!patten1.test(mbrId)) {
        mbrIdCheck.innerHTML = "아이디는 영어, 숫자만 허용됩니다.";
        idCheckYn.value = "N";
    } else if (!patten2.test(mbrId)) {
        mbrIdCheck.innerHTML = "아이디는 영문자를 반드시 한 글자 이상 포함해야 합니다.";
        idCheckYn.value = "N";
    } else {
        idCheckYn.value = "Y";	
    
    
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "/nep/mfrnUser/mfrnUserMbrIdCheck.npaid", true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.setRequestHeader("X-CSRF-TOKEN", "6499842d-79af-4a1b-97c5-930aaa1a36a7");
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                var data = JSON.parse(xhr.responseText);
                var mfrnUserMbrIdCheckCnt = data.mfrnUserMbrIdCheckCnt;
                
                if (mfrnUserMbrIdCheckCnt === 0) {
                    mbrIdCheck.innerHTML = "사용가능한 아이디입니다.";
                    mbrIdCheck.classList.add("blue");
                    idCheckDupYn.value = "Y";
                } else {
                    mbrIdCheck.innerHTML = "이미 사용 중인 아이디입니다.";
                    idCheckDupYn.value = "N";
                }
            }
        };
        xhr.send("mbrId=" + encodeURIComponent(mbrId));
    }
}


function validateId() {
    var idCheckYn = document.getElementById('idCheckYn').value;

if (idCheckYn !== "Y") {
    alert('입력하신 아이디가 올바르지 않습니다.\n아이디를 확인 하십시오.');
    document.getElementById('mbrId').focus();
    return;
}

if (idCheckDupYn !== "Y") {
    alert('이미 사용 중인 아이디입니다.\n아이디를 확인 하십시오.');
    document.getElementById('mbrId').focus();
    return;
}

var mbrPswdLength = mbrPswd.length;
var check = /^(?=.*[a-zA-Z]){1,20}$/;


if (mbrPswdLength < 20 || mbrPswdLength > 1) {
    mbrPswdCheck.innerHTML = "비밀번호는 1자에서 20자까지 가능합니다.";
    document.getElementById('mbrPswd').focus();
    document.getElementById('mbrPswd').value = "";
    return;
} else if (!check.test(mbrPswd)) {
    mbrPswdCheck.innerHTML = "비밀번호는 영문(대소문자 구분), 숫자 조합으로 만들어야 합니다.";
    document.getElementById('mbrPswd').focus();
    document.getElementById('mbrPswd').value = "";
    return;
} else {
    mbrPswdCheck.innerHTML = "";
}

// Password Confirmation Check
mbrPswdSameCheck();
}



function mbrPswdSameCheck() {
    var mbrPswd = document.getElementById('mbrPswd').value;
    var mbrPswdConfirm = document.getElementById('mbrPswdConfirm').value;
    var mbrPswdSameCheck = document.getElementById('mbrPswdSameCheck');

    if (mbrPswd === "") {
        alert("비밀번호를 먼저 입력해야 비밀번호 확인을 할 수 있습니다.");
        document.getElementById('mbrPswd').focus();
        document.getElementById('mbrPswdConfirm').value = '';
        return;
    } else {
        if (mbrPswd === mbrPswdConfirm) {
            mbrPswdSameCheck.innerHTML = "비밀번호가 일치합니다.";
            mbrPswdSameCheck.classList.add("blue");
        } else {
            mbrPswdSameCheck.innerHTML = "비밀번호가 일치하지 않습니다.";
            mbrPswdSameCheck.classList.remove("blue");
            document.getElementById('mbrPswdConfirm').value = '';
        }
    }
}

function validatePhoneNumber() {
    var tell_in02 = document.getElementById('tell_in02').value;
    var tell_in03 = document.getElementById('tell_in03').value;

    var onlyNumberPattern = /^[0-9]+$/;

    if (!onlyNumberPattern.test(tell_in02) || !onlyNumberPattern.test(tell_in03)) {
        alert('휴대전화번호는 숫자만 입력하실 수 있습니다.');
        document.getElementById('tell_in02').focus();
        return;
    }
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
		f.action = "main.jsp";
		f.submit();
	}
	

	function fnId() {
		var f = document.user;
		var param = "userId="+f.userId.value; 
		location.href = "idCheck.jsp?" + param; 
	}
	
</script>