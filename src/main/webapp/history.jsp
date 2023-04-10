<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert tSitle here</title>
</head>
<body>
	<h2>위치 히스토리 목록</h2>
	<div>
		<p>
			<a href="http://localhost:8081/Mille/Hello.jsp"> <!--GET 방식으로 요청-->
				홈
			</a> | <a href="history.jsp"> 위치 히스토리 목록 </a> | <a href="OpenWIFI.jsp">
				Open API 와이파이 정보가져오기 </a>
	</div>
	<table border="1" width="1200">
		<tr align="center" bgcolor="mediumseagreen">
			<style>
th {
	color: white;
}
</style>
			<th>ID</th>
			<th>X좌표</th>
			<th>Y좌표</th>
			<th>조회일자</th>
			<th>비고</th>
		</tr>
</body>
</html>