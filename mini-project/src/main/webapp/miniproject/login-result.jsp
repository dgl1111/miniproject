<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="db2.jsp"%>	
	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		ResultSet rs = null;
		Statement stmt = null;
		
		try{
			
			stmt = conn.createStatement();
			String querytext = "SELECT * FROM TBL_USER " + "WHERE userId= '" + id + "' " + "AND pwd = '" + pwd + "'";
			rs = stmt.executeQuery(querytext);
			
			/* 자바의 string은 class. 객체 == 비교는 주소값의 비교. 자바에서 문자열 비교할떄는 equals  */
			if(rs.next()){
				
				if(rs.getInt("cnt") >= 5){
					//5번 이상 실패
					out.println("5번이상 실패. 관리자 문의");
				}else{
					//로그인 성공
						session.setAttribute("userId", rs.getString("userId"));
						session.setAttribute("status", rs.getString("status"));
						/* session안에는 key, value 값 들어있다. session은 어느페이지에서든  */
						if(rs.getString("status").equals("A")){
							//권한이 A
							response.sendRedirect("userList.jsp");
							
						}else{
						response.sendRedirect("main.jsp");
						/* 성공했을떄 응답하는 페이지 */
					}		
					
				}
				
			}else{
				
				querytext = "SELECT * FROM TBL_USER " + "WHERE userId= '" + id + "' ";
				rs = stmt.executeQuery(querytext);
				if(rs.next()){
					//아이디는 O, 비밀번호는 X일 경우
					//session.setItem("userId", data[0].USERID);
				}else{
					//없는 아이디로 로그인 시도
					out.println("아이디 확인");
						
				}
				
		
			}
		 
			
	 			
		} catch(SQLException ex) {
			out.println("SQLException : " + ex.getMessage());
		}

			
	%>
	<div>
	<button onclick="location.href='login.jsp'">로그인 페이지로 이동</button>
	</div>
</body>
</html>