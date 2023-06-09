<%@page import="java.util.ArrayList"%>
<%@page import="dto.Person"%>
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
session.setAttribute("person", new Person("서현",12));

ArrayList<String> list = new ArrayList<String> ();
list.add("list");
list.add("set");
list.add("map");
session.setAttribute("list", list);

%>

<h2>페이지 이동된 후 session 영역의 속성 읽기</h2>
<a href="SessionLocation.jsp">SessionLocation 바로가기</a>
<a href="Sessioninvalidate.jsp">Sessioninvalidate 바로가기</a>

</body>
</html>