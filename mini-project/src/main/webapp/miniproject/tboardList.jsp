<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
		#tbo{
			width: 100%;
			position: relative;
			display: block;
			margin-left: 50px;
			margin-right: 100px;
		}
		.tit{
		    position: relative;
			max-width: 1200px;
    		margin: 0 auto;
		    border-bottom: 1px solid #818181;
		    padding: 40px 10px;
		    text-align: center;
		    }
		 
		 h3{
			font-size: 36px;
		    font-weight: 500;
		    color: #222222;
		    margin:0px;
		    position: relative;
		    font-family: 'MalgunGothic', '맑은 고딕', Sans-Serif;
		}
        
        #container{
        	max-width: 1200px;
        	padding-bottom: 30;	
        	margin-top:20px;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            grid-template-rows: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px 20px;
 
        }
        .txt{
            padding: 20px;
            border: 1px solid #63b99c;
            font-weight: bold;
		   	font-size: 20px;
		    color: #555;
        }
        
        .txt2{
            font-weight: normal;
            display: block;
            color: #505050;
    		font-weight: 500;
    		font-size: 15px;
    		margin-top: 15px;
    		li
            
        }
        
    </style>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>

	<%@include file="db2.jsp"%>	
	<%
	ResultSet rs = null;
	Statement stmt = null;
	System.out.println(session.getAttribute("userId"));
	
	try{
		stmt = conn.createStatement();
		String querytext = 
				  "SELECT T.tboardNo, title, contents, cdatetime, T.userId " + "FROM tbl_tboard T " + "INNER JOIN tbl_user U ON T.userId = U.userId";
		System.out.println(querytext);
		rs = stmt.executeQuery(querytext);
		
		
	%>
	<div id="tbo">
	<div class="tit">
		<h3>생각모음</h3>
	</div>	
	<div id="container">
        <% 
        while (rs.next()) { 
            %>
                <div class="txt">
                    <strong><%= rs.getString("title") %></strong><br>
                    <div class="txt2">
                        <%= rs.getString("contents") %><br>
                        <%= rs.getString("cdatetime") %><br>
                        <%= rs.getString("userId") %><br>
                    </div>
                </div>
            <% 
            } 
            %>
        </div>
        </div>

    <%

	
	} catch(SQLException ex) {
		out.println("SQLException : " + ex.getMessage());
	}
	%>

	
<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>