<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 받기</title>
</head>
<body>
<!-- 스코프 : 데이터가 목적지까지만 이동 그다음까지는 이동불가 -->
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
%>
	<ul>
		<li>id : <%=id %></li>
		<li>pw : <%=pw %></li>
		<li>name : <%=name %></li>
	</ul>
</body>
</html>