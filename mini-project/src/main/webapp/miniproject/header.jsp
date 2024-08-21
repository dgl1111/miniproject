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
		top: 0;
		padding: 0px;
	}
	
	.header_top {
		display: flex;
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
		margin-top: 20px;
		
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
	 position: relative;
       	list-style: none;
       	display: inline-block;
      	margin-right: 100px;
      	width: 100%;
    }
    
    #menuWrap {
    	 /* position: relative;  */
    	display: inline-block;
    	
    }
     /* 
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

     */
    #mainMenu li {
        margin: 0 50px; 
    }
    
    #mainMenu a {
        text-decoration: none; 
        
    }
    
    #menua{
    display:none
    }
    
    .menuA:hover #menua{
 	 	position: absolute; 
	    display: flex;      
	    flex-direction: column; 
	    justify-content: center; 
	    left: 0;           
	    line-height: 50px;
	    z-index: 1;
    }
    
    #menub{
    	display:none;
    }
    
    .menuB:hover #menub{
	    position: absolute;
	    display:block;
	    display: flex;      
	    flex-direction: column; 
	    justify-content: center; 
	    left: 235px;
	    line-height: 45px;
	    background-color: white;
	    z-index: 1;
    }
    
    #menuc{
    	display:none
    }
    
    .menuC:hover #menuc{
	    position: absolute;
	    display:block;
	    display: flex;      
	    flex-direction: column; 
	    justify-content: center; 
	    left: 442px;          
	    line-height: 50px;
	    z-index: 1;
    }
    
   	#menud{
    display:none
    }
    
    .menuD:hover #menud{
	    position: absolute;
	    display:block;
	    display: flex;      
	    flex-direction: column; 
	    justify-content: center; 
	    left: 630px;          
	    line-height: 50px;
	    z-index: 1;
    }
    
    
    
	
	

</style>
</head>
<body style="margin: 0px; padding: 0px;">
	<%
	String userId = (String) session.getAttribute("userId");
	%>
	<header id="header">
		<div class="header_top">
			<ul>
				<% 
				if (userId != null) {
				%>
					<li><a href="javascript:;" onclick="location.href='logout.jsp'">로그아웃</a></li>
				<%
				} else {
				%>
					<li><a href="login.jsp">로그인</a></li>
				<%
				}
				%>
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
					<li class="menuA">
						<a href="javascript:;">나의 이용내역</a>
						<ul id="menua">
							<li>
								<a href="myList.jsp">나의 민원신청내역</a>
							</li>
							<li>
								<a href="myPage.jsp?userId=<%=userId%>">나의 정보관리</a>
							</li>
						</ul>
					</li>
					<li class="menuB">
							<a href="javascript:;">민원서비스</a>
							<ul id="menub">
								<li>
									<a href="boardWrite.jsp">민원신청</a>
								</li>
								<li>
									<a href="boardList.jsp">민원조회</a>
								</li>
							</ul>
					</li>
					<li class="menuC">
						<a href="javascript:;">생각참여</a>
							<ul id="menuc">
								<li>
									<a href="tboardWrite.jsp">생각쓰기</a>
								</li>
								<li>
									<a href="tboardList.jsp">생각함</a>
								</li>
							</ul>
					</li>
					<li class="menuD">
						<a href="javascript:;">이용안내</a>
							<ul id="menud">
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