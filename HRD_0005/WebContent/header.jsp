<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
</head>
<body>
<header>
	<h2>(과정평가형 정보처리산업기사)골프연습장 회원관리 프로그램 ver 202201</h2>
</header>
<nav>
	<ul>
		<li><a href="<%= request.getContextPath() %>/jsp/teacharList.jsp">강사조회</a></li>
		<li><a href="<%= request.getContextPath() %>/jsp/enrolment.jsp">수강신청</a></li>
		<li><a href="<%= request.getContextPath() %>/jsp/memberList.jsp">회원정보조회</a></li>
		<li><a href="<%= request.getContextPath() %>/jsp/teacharSale.jsp">강사매출현황</a></li>
		<li><a href="<%= request.getContextPath() %>/index.jsp">홈으로</a></li>
	</ul>
</nav>
</body>
</html>