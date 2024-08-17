<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
	#header {
		display: inline;
		position: relative;
		flex-direction: column;
		padding: 30px;
	}
	
	.header_top {
		display: flex;
		position:fixed;
		justify-content: flex-end;
		padding-right: 30px;
		background: #033075;
		width: 100%;
		
	}
	
	.header_top ul{
		margin: 7px;
		list-style: none;
		display: inline;
		padding: 16px 100px 16px 0px;
	}
	
	.header_top li{
		margin-left : 20px;
		display: inline;
	}
	
	.header_top a {
		text-decoration: none;
		display: inline;
		color: white;
		font-weight: bold;
   		font-size: 15px;   
    
    
	} 
	
	
	.header_bottom {
		display: flex;
		align-items: center;
		justify-content: center;
		padding: 20px 20px 0px 0px;
		margin-top: 40px;
		
	} 
	
	.logo {
		margin-right: 20px;
	}
	
	.header_bottom ul{
			list-style-type: none;
			display: flex;
			
	}
	
	.header_bottom li{
		display: inline;
		align-items: center;
			
		 
	}
	
	.header_bottom a {
		text-decoration: none;
		display: inline;
		color: #222;
		font-weight: bold;
		font-size: 20px;
		
	} 
	
	 #mainMenu {
       	list-style: none;
       	display: inline-block;
      	margin-right: 100px;
    }
    
    #menuWrap {
    	position: relative;
    	display: inline-block;
    }
      
    #menuWrap > ul > li > ul {
    	position: absolute;
    	display: none;
    }
    
    #menuWrap > ul> li:hover > ul{
    	display: block;
    }
    
    #menuWrap > ul > li > ul > li >a{
    	display: block;
    }
    

    
    #mainMenu li {
        margin: 0 50px; 
    }
    
    #mainMenu a {
        text-decoration: none; 
        
    }
    
    
	
	

</style>
</head>
<body style="margin: 0px; padding: 0px;">
	<header id="header">
		<div class="header_top">
			<ul>
				<li><a href="login.jsp">로그인</a></li>
				<li><a href="join.jsp">회원가입</a></li>
				<li><a href=".jsp">국민신문고 소개</a></li>
			</ul>
		</div>
		
		<div class="header_bottom">
				<h1 class="logo">
					<a href="main.jsp">
						<img id="logo" src="../img/로고사진.png"  alt="">
					</a>
				</h1>
				<nav id="menuWrap">
				<ul id="mainMenu">
					<li>
						<a class="menuA"  href="javascript:;">나의 이용내역</a>
							<ul class="menuA-a">
								<li>
									<a href="myList.jsp">나의 민원신청내역</a>
								</li>
								<li>
									<a href="myPage.jsp">나의 정보관리</a>
								</li>
							</ul>
					</li>
					<li>
						<a id="menuB"  href="javascript:;">민원서비스</a>
							<ul class="menuB-b">
								<li>
									<a href="boardWrite.jsp">민원신청</a>
								</li>
								<li>
									<a href="boardList.jsp">민원조회</a>
								</li>
							</ul>
					</li>
					<li>
						<a id="menuC"  href="javascript:;">생각참여</a>
							<ul class="menuC-c">
								<li>
									<a href="tboardWrite.jsp">생각쓰기</a>
								</li>
								<li>
									<a href="tboardList.jsp">생각함</a>
								</li>
							</ul>
					</li>
					<li>
						<a id="menuD"  href="javascript:;">이용안내</a>
							<ul class="menuD-d">
								<li>
									<a href="intro.jsp">사이트소개</a>
								</li>
								<li>
									<a href="tIntro.jsp">생각함소개</a>
								</li>
							</ul>	
					</li>
				</ul>
			</nav>
		</div>
	</header>
</body>
</html>