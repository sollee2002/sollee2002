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
	String id = request.getParameter("userid");
	String pw = request.getParameter("userpw");
	
	//아이디가 abc, 비밀번호가 123
	//id != null && id.equals("abc") - null 설정을 하지 않으면 오류 발생
	if("abc".equals(id) && "123".equals(pw)) {
	//로그인 성공
	//out.print("로그인 성공");
	
	//id를 세션에 저장
	session.setAttribute("userid",id);
	response.sendRedirect("gogreen.jsp");
	
	
	//요청할 페이지 정보
	//response.setCharacterEncoding("UTF-8");
	//response.sendRedirect("../내장객체/ResponseWelcom.jsp");
	} else {
	//로그인 실패
	//out.print("로그인 실패");
	response.sendRedirect("gogreen.jsp?loginErr=1");
	
	}
%>

</body>
</html>