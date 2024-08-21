<%@page import="java.awt.Checkbox"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	table, th,  tr,  td{
	 border : 1px solid black ;
	 border-collapse: collapse;
	 padding: 10px;
	}

	
	form{
	    padding: 0 0 50px 0;
	    line-height: 130%;
	    margin-right: 600px;
	    margin-left: 600px;
	    font-family: 'Noto Sans KR', sans-serif;
	}
	
	.top{
		border-bottom: 1px solid #707070;
	    padding: 40px 0;
	    margin-bottom: 30px;
	    text-align: center;
	    
	}
	
	h3{
		font-weight: 500;
	    color: #292929;
	    font-size: 33px;
		color: #292929;
	    font-size: 33px;
	}
	
	h4{
		font-size: 19px;
		color: #111;
		font-weight: 500;
		
	}
	
	.mid{
		padding: 17px 50px 17px 15px;
		margin-top: 30px;
	    background: #f4f5f9;
	    border-top: 1px solid #c4c9ce;
	}
	.info{
		display: block;
		padding: 20px 19px;
	}
	
	.left{
		float: left;
	    display: table-cell;
	    vertical-align: top;
	    width: 170px;
	    color: #111;
	    line-height: 24px;
	    padding-right: 15px;
	    font-weight: 500;
	}
	.right{
		overflow: hidden;
	    line-height: 24px;
	    font-weight: 400;
	    font-size: 15px;
	    margin: 0;
	    padding: 0;
	    color: #555;
	}
	#li{
		margin-bottom: 15px;
	}
	
	.btn{
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
	    text-decoration: none;
	    border: 0px;
	   
	}
	.btnL{
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
	    text-decoration: none;
	    border: 0px;
	   
	}
	
	
	
</style>

</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<form action="delete.jsp" name="board">

	<%@include file="db2.jsp"%>	
	<%
		ResultSet rs = null;
		Statement stmt = null;
		String boardNo = request.getParameter("boardNo");
		
		try{
			stmt = conn.createStatement();
			String querytext = "SELECT * FROM TBL_BOARD WHERE BOARDNO =" + boardNo;
			rs = stmt.executeQuery(querytext);
			
			
			if(rs.next()){
	%>			<div class="top">
				<h3>민원</h3>
				</div>
				<div>
					<input type="hidden" value="<%= rs.getString("boardNo")%>" name="boardNo">
						<div class="mid">
							<h4>신청정보</h4>
						</div>
						<div class="info">
							<div id="li">
								<span class="left"> 신청일시  </span>
								<span class="right"><%= rs.getString("cdatetime") %></span>
							</div>
							<div id="li">
								<span class="left"> 신청인 </span>
							 	<span class="right"><%= rs.getString("userId") %></span>
						 	</div>
						</div>
						<div class="mid">
							<h4>민원 신청 내용</h4>
						</div>
						<div class="info">
						<div id="li">
							<span class="left"> 제목 </span>
							<span class="right"><%= rs.getString("title") %></span>
						</div>
						<div id="li">
							<span class="left"> 내용 </span>  
							<span class="right"><%= rs.getString("contents") %></span>
						</div>
						</div>
				</div>
							
	<% 
		String sessionId = (String) session.getAttribute("userId");
		String sessionstatus = (String) session.getAttribute("status");
	
		if(rs.getString("userId").equals(sessionId) || sessionstatus.equals("A")){
			
		
	%>				
				
				<button type="button" onclick="fnUpdate()" class="btn">수정</button>
				<button type="submit" class="btnL">취하</button>
				<button type="button" onclick="location.href='boardList.jsp'" class="btn">목록</button>
	<% 			
				}
	%>
				
			
	<%
			
			}else{
	%>
				<button type="button" onclick="location.href='boardList.jsp'">목록</button>
	<% 		
			}
	
		
		} catch(SQLException ex) {
			out.println("SQLException : " + ex.getMessage());
		}
	%>
	</form>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>
<script>
	function fnUpdate() {
		var form = document.board;
		form.action = "update.jsp"
		/* action의 값 바꿔서 */
		form.submit();
		
	}
	
	
	function fnReload(){
		location.reload();
	}
</script>