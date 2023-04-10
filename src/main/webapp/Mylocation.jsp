<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script>
navigator.geolocation.getCurrentPosition((position)=> {
	let latitude = position.coords.latitude;
	let longitude = position.coords.longitude ;
	
	document.write("LAT : ",latitude, "<br/>"); 
	document.write("LAN : ",longitude);
	}, (err)=>{});
</script>
</body>
</html>