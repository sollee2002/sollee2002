<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//세션 무효화
session.invalidate();

//세션 아이디 생성
request.getSession(true);

response.sendRedirect("gogreen.jsp");
%>


</body>
</html>