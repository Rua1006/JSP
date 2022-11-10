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
	out.println("user id :"+application.getInitParameter("userId"));
	//InitParameter 전역 변수는 web.xml 또는 application 객체로 한곳에서만 지정 가능
	
	
	//Scope
	//설정
	//pageContext - 현재 페이지에서만 유효
	pageContext.setAttribute("pageData", "페이지컨텍스트");
	//request - 폼 전송의 목적지 또는 a 요소의 목적지, forward 의 목적지까지 유효
	request.setAttribute("requestData", "리퀘스트");
	//application - 웹 브라우저 또는 현재 애플리케이션이 실행되고 있는 동안 유효(전역객체)
	//전역객체는 web.xml에 등록도 가능함 단, 공통변수로서 초기값만 설정 가능함
	session.setAttribute("sessionData", "세션");
	application.setAttribute("applicationData", "어플리케이션");
	application.setAttribute("msg", "감사합니다.");
	//application.setInitParameter("memberId", "kbs");
	
	//출력
	out.println("<h3>페이지</h3>"+pageContext.getAttribute("pageData"));
	out.println("<h3>리퀘스트</h3>"+request.getAttribute("requsetData"));
	out.println("<h3>세션</h3>"+session.getAttribute("sessionData"));
	out.println("<h3>어플리케이션</h3>"+application.getAttribute("applicationData"));
	out.println("<h3>어플리케이션 메시지</h3>"+application.getAttribute("msg"));
	out.println("msg : "+application.getAttribute("msg"));
	out.println("<a href='test08.jsp?mgs=테스트08로 갑니다'>테스트08</a>");
	
%>
</body>
</html>