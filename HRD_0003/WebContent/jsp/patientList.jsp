<%@page import="dao.PatientDAO"%>
<%@page import="dto.PatientDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환자 조회</title>
<link rel="styleSheet" href="../css/layout.css">
<link rel="styleSheet" href="../css/patient.css">
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<section>
	<h1>환자조회</h1>
	<table>
		<tr>
		<th>환자번호</th>
		<th>환자성명</th>
		<th>생년월일</th>
		<th>성별</th>
		<th>전화번호</th>
		<th>지역</th>
		</tr>
		<% 
			PatientDAO dao = PatientDAO.getPatientDAO();
		
			List<PatientDTO> list = dao.getList();
			
			for(int i = 0; i < list.size(); i++){
				String genderNo = list.get(i).getP_gender();
				String gender = "";
				if(genderNo.equals("M")) gender = "남";
				else if(genderNo.equals("F")) gender = "여";
				
				String cityNo = list.get(i).getP_city();
				String city = "";
				if(cityNo.equals("10")) city = "서울";
				else if(cityNo.equals("20")) city = "경기";
				else if(cityNo.equals("30")) city = "강원";
				else if(cityNo.equals("40")) city = "대구";
				
		%>
		<tr>
		<td><%= list.get(i).getP_no() %></td>
		<td><%= list.get(i).getP_name() %></td>
		<td><%= list.get(i).getP_birth().substring(0,4)+"년"+list.get(i).getP_birth().substring(4,6)+"월"+list.get(i).getP_birth().substring(6,8)+"일"%></td>
		<td><%= gender %></td>
		<td><%= list.get(i).getP_tel1()+"-"+list.get(i).getP_tel2()+"-"+list.get(i).getP_tel3() %></td>
		<td><%= city %></td>
		</tr>
		<% 
			}
		%>
	</table>
</section>
<jsp:include page="../footer.jsp"></jsp:include>


</body>
</html>