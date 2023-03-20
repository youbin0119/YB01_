<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="join_style.css">
<title>회원가입</title>

</head>
<body>
<h1><center><a href=Main.jsp>메인으로</a></center></h1>

<form action="Join_DB.jsp" method="post">
<table align="center">
	<tr>
		<td><label>ID</label></td>
		<td><input type="text" name="_id" placeholder="아이디"></td>
	</tr>
	<tr>
		<td><label>PW</label></td>
		<td><input type="password" name="_pw" placeholder="비밀번호"></td>
	</tr>
	<tr>
		<td><label>PW2</label></td>
		<td><input type="password" name="_pw2" placeholder="비밀번호 확인"></td>
	</tr>
	<tr>
		<td><label>NAME</label></td>
		<td><input type="text" name="_name" placeholder="이름"></td>
	</tr>
	<tr>
		<td><label>ADDRESS</label></td>
		<td><input type="text" name="_address" placeholder="주소"></td>
	</tr>
	<tr>
		<td><label>PHONE</label></td>
		<td><input type="text" name="_phone" placeholder="휴대전화"></td>
	</tr>	
</table> <p>
<center><input type="submit" value="가입"></center>
</form>

</body>
</html>
