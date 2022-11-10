<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import ="java.util.*" %>
<%@ page import ="java.text.*, java.net.InetAddress" %>
<%@ page import ="com.example.*" %>
<%@ include file = "common.jsp" %>
<%
	String name = "강병수";
	int age = 30;
	int num = 70;
	int num1 = 90, num2=80, num3;
	
	Human h1 = new Human();
	h1.setCountry("KOREA");
	h1.setName("강병수");
	h1.setAge(30);
	h1.setHobby("잠");
	
	List<Human> hList = new ArrayList<Human>();
	
	Human h2 = new Human();
	h2.setCountry("AMERICAN");
	h2.setName("일공공");
	h2.setAge(100);
	h2.setHobby("일");
	
	hList.add(h1);
	hList.add(h2);
	
	request.setAttribute("hList", hList);
	//위 내용을 포워드함
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04.Expression OR EL</title>
</head>
<body>
<table border="1" cellpadding="10" cellspacing="0">
<%
	if(hList != null){
		for(Human human : hList){
			pageContext.setAttribute("human", human);
%>
	<tr>
		<td>${human.country }</td>
		<td>${human.name }</td>
		<td>${human.age }</td>
		<td>${human.hobby }</td>
	</tr>
<%	}

	}
%>
</table>
<hr>
<h3>ArrayList+Expression</h3>
<table border="1" cellpadding="10" cellspacing="0">
<%
	for(int i=0; i<hList.size(); i++){
		Human human = hList.get(i);
%>
	<tr>
		<td><%=human.getCountry() %></td>
		<td><%=human.getName() %></td>
		<td><%=human.getAge() %></td>
		<td><%=human.getHobby() %></td>
	</tr>	
<%
	}
%>
</table>
<h2>Expression(표현식)</h2>
<p>1.</p>
<p>2.</p>
</body>
</html>