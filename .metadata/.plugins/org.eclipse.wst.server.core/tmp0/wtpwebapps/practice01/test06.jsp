<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-java 객체 제어</title>
</head>
<body>
<%
	List<String> lst = new ArrayList<>();
	lst.add("가");
	lst.add("나");
	lst.add("다");
	lst.add("라");
	lst.add("마");
	request.setAttribute("lst", lst);
	//request.setAttribute("lst0", lst.get(0)); 특정 것만 하고 싶을 경우
	
	Set<String> set = new HashSet<>();
	set.add("바");
	set.add("사");
	set.add("아");
	set.add("자");
	request.setAttribute("set", set);
	
	
	//Map은 키를 통하여 value를 얻기 떄문에<> 안해도 상관없음
	Map map = new HashMap();
	map.put("test1","차");
	map.put("test2","카");
	map.put("test3","타");
	map.put("test4","파");
	request.setAttribute("map", map);
	;
	
	//전송 받을 목적 페이지 지정
	RequestDispatcher rd = request.getRequestDispatcher("test07.jsp");
	//해당 목적 페이지에  request.setAttribute()한 데이터를 포워딩(전달)
	rd.forward(request, response);	//데이터만 이동
	//response.sendRedirect("test07.jsp"); 사이트자체로 이동
%>
</body>
</html>