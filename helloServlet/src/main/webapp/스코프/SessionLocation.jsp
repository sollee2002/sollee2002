<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dto.Person"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Session 영역의 속성 읽기</h2>
<%
//브라우저를 닫았다가 새로 열면 쿠키에 저장된 세션 ID값이 변경되므로 세션이 유지되지 않음
if(session.getAttribute("person") != null ) {
	Person p = (Person)session.getAttribute("person");
	out.print(p.getName()+",");
	out.print(p.getAge()+"<br>");

} else {
	out.print("session에 저장된 person이 없습니다");
}

if(session.getAttribute("list") != null ) {
	ArrayList<String> list = (ArrayList<String>)session.getAttribute("list");
	for(String str : list) {
		out.print(str+"<br>");
	}
} else {
	out.print("session에 저장된 person이 없습니다");
}

%>


</body>
</html>