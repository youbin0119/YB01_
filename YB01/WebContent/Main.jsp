<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="db.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="main_style.css">
<title>메인</title>
</head>
<body>
	<header>
		<%
			// 메인 페이지로 이동했을 때 세션에 값이 담겨있는지 체크
			String sessionID = null;
			if(session.getAttribute("__ID") != null){
				sessionID = (String)session.getAttribute("__ID");
			}
			
		%>
		<%
			// 로그인 안 했을 때 화면
			if(sessionID == null){
		%>
			<div align="right" style="padding-right: 10%; padding-top:5px;"><a href="Login_UI.jsp">로그인</a> &emsp; <a href="Join_UI.jsp">회원가입</a></div>
		<%
			// 로그인 했을 때 화면
			}else {
		%>
			<div align="right" style="padding-right: 10%; padding-top:5px;"><a href="Logout.jsp">로그아웃</a> &emsp;</div>
		<%
			}
		%>
	</header>
	<hr>
	<nav class="nav-container">
		<a href="#">nav1</a> &emsp;
		<a href="#">nav2</a>
	</nav>
	<hr>
	<div class="container">
		<aside class="aside-left">
			좌측 배너
		</aside>
	<main>
		<section>
			section 1
			<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			<hr>
		</section>
		<section>
			section 2
			<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			<hr>
		</section>
	</main>
		<aside class="aside-right">
			우측 배너
		</aside>
	</div>
	<footer>
		<hr>
		<p>
			footer
		</p>
	</footer>
</body>
</html>