<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    table, th, tr, td {
        border: 1px solid black;
        border-collapse: collapse;
        padding: 10px;
    }
    a:visited, a:link {
        color: black;
        text-decoration: none;
        font-weight: bold;
    }
</style>

</head>
<body>
    <%@ include file="db2.jsp" %>
    <sql:query var="result" dataSource="${dataSource}">
        SELECT B.boardNo, title, NAME, cdatetime, B.cnt
        FROM tbl_board B
        INNER JOIN tbl_user U ON B.userId = U.userId  
    </sql:query>
    <!-- qeury의 결과가 result에 담긴다. -->	<!-- db에서의 setDataSource -->

    <table>
        <tr>
            <th>번호</th>
            <th>제목</th>
            <th>작성자</th>
            <th>신청일</th>
            <th>조회수</th>
        </tr>
        <c:forEach var="row" items="${result.rows}">
        <!-- 반복문 돌리는 태그 -->
            <tr>
                <td>${row.boardNo}</td>
                <td>
                    <a href="#" onclick="fnView('${row.boardNo}')">
                        ${row.title}
                    </a>
                </td>
                <td>${row.NAME}</td>
                <td>${row.cdatetime}</td>
                <td>${row.cnt}</td>   
            </tr>
        </c:forEach>
    </table>
</body>
</html>

<script>
    function fnView(boardNo){
        location.href="board-view.jsp?boardNo="+boardNo;
    }
</script>