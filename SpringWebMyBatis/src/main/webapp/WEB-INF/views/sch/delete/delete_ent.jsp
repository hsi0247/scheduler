<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상세 정보</title>
</head>
<body>
<button onclick="location.href='./'">홈</button>
<button onclick="location.href='./lecture'">강의 정보</button>
<button onclick="location.href='./enterprise'">지원 기업</button>

<form action="<c:url value='/enterprise/delete'/>" method="post">
<h1>기업 상세 정보</h1>
<table border="1" >
	<tr>
		<th>기업 ID</th>
		<td>${ent.ent_id}</td>
	</tr>
	<tr>
		<th>기업명</th>
		<td>${ent.ent_name}</td>
	</tr>
	<tr>
		<th>서류마감일</th>
		<td>${ent.paper_end}</td>
	</tr>
	<tr>
		<th>1차 면접일</th>
		<td>${ent.interview1}</td>
	</tr>
	<tr>
		<th>2차 면접일</th>
		<td>${ent.interview2}</td>
	</tr>
	<tr>
		<th>3차 면접일</th>
		<td>${ent.interview3}</td>
	</tr>
	<tr>
		<td>
		<!-- hidden으로 값넘겨주기 -->
			<input type="hidden" name="ent_id" value="${ent.ent_id}">
			<input type="submit" value="삭제"> 
		</td>
	</tr>
	
	</table>
</form>
</body>
</html>