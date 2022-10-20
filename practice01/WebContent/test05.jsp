<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리중</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	//response.setContentType("text/html; charset=UTF-8"); //보내질 데이터에 해당
	response.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	Cookie cookie = null;
	
	if(id.equals("kbs")&&pw.equals("1234")){
		session.setAttribute("id", id);//만약, 아이디와 비밀번호가 맞으면, 로그인 처리하고, login_ok.jsp 로 이동
		session.setAttribute("pw", pw);
		response.addCookie(cookie); //쿠키 추가
		//out.println("<a href ='login_ok.jsp?msg=로그인성공'>로그인성공</a>");
		response.sendRedirect("login_ok.jsp");
	} else {
		response.sendRedirect("loginForm.html");;//일치하지 않으면, 원래 페이지인 loginForm.html 로 이동
		response.setStatus(404); //현재 처리된 내용의 상태코드를 설정
		response.sendError(404, "해당 하는 페이지가 존재하지 않습니다."); //해당 상태코드의 메시지 보내기
	}
%>
	<p> 콘텐츠 유형 : <%=response.getContentType() %> 
	<p> 문자 인코딩 : <%=response.getCharacterEncoding() %>
	
</body>
</html>