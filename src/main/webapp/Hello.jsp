<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="commom.XMLTEST"%>
<%@ page import="java.io.BufferedReader"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.io.InputStreamReader"%>
<%@ page import="java.io.UnsupportedEncodingException"%>
<%@ page import="java.net.HttpURLConnection"%>
<%@ page import="java.net.URL"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.util.Scanner"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>미션 과제</title>
</head>
<body>
	<h1>와이파이 정보 구하기</h1>
</body>
<br>
<div>
	<p>
		<a href="http://localhost:8081/Mille/Hello.jsp"> 홈 </a> | <a
			href="history.jsp"> 위치 히스토리 목록 </a> | <a href="OpenWIFI.jsp">
			Open API 와이파이 정보가져오기 </a>
</div>
<br>
<style>
from{display: inline;}
</style>
<form action="LocationWIFI.jsp" method="get" style="float:left;margin:0">
	LAT : <input type="text" name="user_id" /> 
	LAN : <input type="text" name="user_id" /> 
	<input type="submit" value="근처 WIPI가져오기" />
</form>

<form action="Mylocation.jsp" method="get" >
	<input type="submit" value="내 위치 가져오기" />
</form>
<table border="1" width="1200">
	<tr align="center" bgcolor="mediumseagreen">
		<style>
th {
	color: white;
}
</style>
		<th>거리(Km)</th>
		<th>관리번호</th>
		<th>자치구</th>
		<th>와이파이명</th>
		<th>도로명주소</th>
		<th>상세주소</th>
		<th>설치위치(층)</th>
		<th>설치유형</th>
		<th>서비스구분</th>
		<th>망종류</th>
		<th>설치년도</th>
		<th>실내외구분</th>
		<th>WIFI접속환경</th>
		<th>X좌표</th>
		<th>Y좌표</th>
		<th>작업일자</th>
	</tr>

	<tr>
		<td colspan="16" align="center">위치 정보를 입력한 후에 조회해주세요.</td>
	</tr>
</table>




</p>
</html>