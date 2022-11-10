<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import ="java.util.*" %>
<%@ page import ="java.text.*, java.net.InetAddress" %>
<%@ page import ="com.example.*" %>
<%@ include file = "common.jsp" %>     
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String pageName = (String) pageContext.getAttribute("pname");
	String reqName = (String) request.getParameter("rname");
	String sesName = (String) session.getAttribute("sname");
	String appName = (String) application.getAttribute("aname");
	
	
	String [] hobby = {"빈칸","빈칸","빈칸","빈칸","빈칸"};
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05ELParam</title>
</head>
<body>
<h2>Scope 데이터의 표현식 대 표현언어</h2>
<p><%=pageName %> : ${pname }</p>
<p><%=reqName %> : ${rname }</p>
<p><%=sesName %> : ${sname }</p>
<p><%=appName %> : ${aname }</p>
<h4>좋아하는 스포츠</h4>
<ul>
	<li>첫 번째- <%=hobby[0] %> : ${paramValues.hobby[0] }</li>
	<li>두 번째- <%=hobby[1] %> : ${paramValues.hobby[1] }</li>
	<li>세 번째- <%=hobby[2] %> : ${paramValues.hobby[2] }</li>
	<li>네 번째- <%=hobby[3] %> : ${paramValues.hobby[3] }</li>
	<%-- <li>다섯 번째- <%=hobby[4] %> : ${paramValues.hobby[4] }</li> --%>	
</ul>
</body>
</html>