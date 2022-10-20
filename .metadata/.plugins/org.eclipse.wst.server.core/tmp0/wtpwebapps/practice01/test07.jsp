<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-Scope</title>
</head>
<body>
<%
	List<String> lst = (List<String>) request.getAttribute("lst");
	Set<String> set = (Set<String>) request.getAttribute("set");
	HashMap map = (HashMap) request.getAttribute("map");

	//List의 접근
	out.println("<h2>lst</h2>");
	for(int i=0; i<lst.size(); i++){
		out.println("<li>"+lst.get(i)+"</li>");
	}
	
	out.println("<h2>Set</h2>");
	Iterator iter = set.iterator();
	while(iter.hasNext()){
		out.println("<li>"+iter.next()+"</li>");
	}
	
	out.println("<h2>Map</h2>");
	
	//Collection : List, Map, Set 
	Set<String> keys = map.keySet();
	for(String key : keys){ //test1, test2 ....
		out.println("<li>"+map.get(key)+"</li>");
	}
	
	
	out.println("name값 가져옴");
	//요 부분 중요함
	Collection<String> val = map.values();
	for(String name:val){ //차, 카....
		out.println("<li>"+name+"</li>");
	}
	out.println("");
	
	
%>
</body>
</html>