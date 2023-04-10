<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page import = "commom.XMLTEST" %>
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
<title>Insert title here</title>
</head>
<body>
	<h2 align="center">23249개의 WIFI 정보를 정상적으로 저장했습니다.</h2>
	<style> div {text-align: center;</style>
	<div>
		<a href="http://localhost:8081/Mille/Hello.jsp">홈 으로 돌아가기</a>
	</div> 
	<br/>
	<% 
StringBuilder urlBuilder = new StringBuilder
("http://openapi.seoul.go.kr:8088/737876455673656f38324561465371/xml/TbPublicWifiInfo/1/1/");

urlBuilder.append("/" + URLEncoder.encode("737876455673656f38324561465371", "UTF-8"));
urlBuilder.append("/" + URLEncoder.encode("json", "UTF-8"));
urlBuilder.append("/" + URLEncoder.encode("Public_WIFI", "UTF-8"));
urlBuilder.append("/" + URLEncoder.encode("1", "UTF-8"));
urlBuilder.append("/" + URLEncoder.encode("10", "UTF-8"));

urlBuilder.append("/" + URLEncoder.encode("20230301", "UTF-8"));

URL url = new URL(urlBuilder.toString());
HttpURLConnection connection = (HttpURLConnection) url.openConnection();
connection.setRequestMethod("GET");
connection.setRequestProperty("Cotent-type","application/json" );
out.println("Response code: " + connection.getResponseCode());
BufferedReader rd;

if(connection.getResponseCode() >= 200 && connection.getResponseCode() <= 300) {
    rd = new BufferedReader(new InputStreamReader(connection.getInputStream()));
} else {
    rd = new BufferedReader(new InputStreamReader(connection.getErrorStream()));
}
StringBuilder sb = new StringBuilder();
String line; 
while ((line = rd.readLine()) != null) {
    sb.append(line);
}
rd.close();
connection.disconnect();
out.println(sb.toString());
%>
</body>
</html>