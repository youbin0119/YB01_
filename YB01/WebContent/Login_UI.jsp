<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="login_style.css">
<title>로그인</title>

</head>
<body>
<h1><center><a href=Main.jsp>메인으로</a></center></h1>

<form action="Login_DB.jsp" method="post" align="center">
<table align="center">
	<tr>
		<td><label for="exampleInputEmail1">ID</label></td>
		<td><input type="text" name="_id" placeholder="아이디"></td>
	</tr>
	<tr>
		<td><label for="exampleInputPassword1">PW</label></td>
		<td><input type="password" name="_pw" placeholder="비밀번호"></td>
	</tr>
</table> <p>
<center><input type="submit" value="로그인"></center> <p>

</form>

  <%
    String clientId = "sFBNNQyafG5a_1_8KOXh";//애플리케이션 클라이언트 아이디값";
    String redirectURI = URLEncoder.encode("http://localhost:8080/YB01/Main.jsp", "UTF-8");
    SecureRandom random = new SecureRandom();
    String state = new BigInteger(130, random).toString();

    session.setAttribute("state", state);
 %>
 
<p><center><input type="button" value="회원가입" onclick="location.href='Join_UI.jsp'"></center> </P>
</body>
</html>
<!--  border="1" bordercolor="grey"  -->