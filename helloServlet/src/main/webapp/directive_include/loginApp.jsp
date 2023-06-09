<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginApp</title>
</head>
<body>
<%
	String loginErr = request.getParameter("loginErr");

	if("1".equals(loginErr)) {
		out.print("<script> alert('아이디/비밀번호가 잘못되었습니다') </script>");
	}
%>

<%
//form : 태그 안의 요소들을 파라메터로 가지고가서 페이지를 요청함


	String name = request.getParameter("name");

	if(name != null && !name.equals("")) {
		out.print("<h1>"+name+"님 환영합니다</h1>");
	} else {
		
%>
	<form action="gogreenLogin2.jsp" method="post">
		<div class="login">
		id<input type="text" name="userid">
		pw<input type="password" name="userpw">
		<input type="submit" value="로그인">
		</div>	
	
	</form>
	<%}%>
	
    <div id='info'>
       <a href="">회원가입</a>
       <a href="">ID찾기</a>
       <a href="">PW찾기</a>
  	 </div>

</body>
</html>