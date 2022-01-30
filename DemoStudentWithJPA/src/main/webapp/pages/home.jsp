<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="violet">
	<!-- put address in url  to run ---http://localhost:8080/ -->
	<h1>
		<marquee>Welcome User system</marquee>
	</h1>
	<form action="user/add">

		UserName:<input type="text" name="user_name"><br>
		UserPass:<input type="text" name="user_pass"><br> <input
			type="submit" value="SignUp">
	</form>
	<hr>
	Enter id to get that User
	<br>
	<!--  form action="find">
id:<input type="text" name="user_id"><br>

<input type="submit" value="Find">
</form>-->

</body>
</html>