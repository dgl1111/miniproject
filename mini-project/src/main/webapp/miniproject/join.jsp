<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h3{
		border-bottom: 1px solid #707070;
	}
</style>
</head>
<body>
	<h3>회원가입</h3>
	
	
	<form action="Main.jsp" name="user">
	<!-- form 태그의 역할 : form 태그안에 있는 버튼을 눌렀을떄 form 태그에 있는 action 속성이 실행(action 속성 안에 있는 페이지로 이동) -->
		<div>

		<div>
			<div>이름</div>
			 <input type="text" name="userName"> 
		</div>
			
		<div>
			<div>아이디</div> 
			<input type="text" name="userId" id="userId" maxlength="12">
			<p id="IdCheck();"></p>
			<span> 4~12자의 영문 대 소문자, 숫자를 입력할 수 있습니다. </span>
			
		</div>
		<div>
			<div>비밀번호</div> 
			<input type="password" name="mbrPswd" maxlength="20" onchange="mbrpswdCheck();">
			<p id="mbrpswdCheck();"></p>
			<div>영문(대소문자 구분), 특수문자, 숫자를 반드시 1자 이상 포함하여 10~20자로 설정하셔야 합니다.</div>
		</div>
		<div>
			<div>비밀번호 확인</div> 
			<input type="password" name="pwd" id="mbrpswdConfirm" maxlength="20">
			<p id="mbrPswdSameCheck"></p>
		</div>
		
		<div>
			<div>전자우편</div> 
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
		
		<div>
			<div>휴대전화</div>
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
		<div>
			<div>성별</div>
			<label><input type="radio" name="gender" value="M">남</label>
			<lable><input type="radio" name="gender" value="F">여</lable>  
		</div>
		
		<input onclick="fnMain()" type="button" value="취소">
		<input onclick="fnSubmit()" type="button" value="회원가입">
		
	</form>
	
	
	
	
	
	
</body>
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
var check = /^(?=.*[a-zA-Z])(?=.*[!@#$%^&*()_+])[A-Za-z!@#$%^&*()_+]{10,20}$/;


if (mbrPswdLength < 10 || mbrPswdLength > 20) {
    mbrPswdCheck.innerHTML = "비밀번호는 10자에서 20자까지 가능합니다.";
    document.getElementById('mbrPswd').focus();
    document.getElementById('mbrPswd').value = "";
    return;
} else if (!check.test(mbrPswd)) {
    mbrPswdCheck.innerHTML = "비밀번호는 영문(대소문자 구분), 특수문자, 숫자 조합으로 만들어야 합니다.";
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
		location.href = "id-check.jsp?" + param; 
	}
	
</script>