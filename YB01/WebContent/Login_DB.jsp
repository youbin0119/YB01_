
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*, java.*"
    import="db.UserDAO"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>

<jsp:useBean class="db.UserDAO" id="user"></jsp:useBean>
<%
    String id = request.getParameter("_id");
    String pw = request.getParameter("_pw");
    
    if (id != null && pw != null) {
    	if (user.login(id, pw) == true) {
    		session.setAttribute("__ID", id);
            response.sendRedirect("Main.jsp");
    	}else {
    		out.println("<script>");
			out.println("alert('아이디 또는 비밀번호가 일치하지 않습니다.')");
			out.println("history.back()");
			out.println("</script>");
    	}
    } 
	

%>

</body>
</html>