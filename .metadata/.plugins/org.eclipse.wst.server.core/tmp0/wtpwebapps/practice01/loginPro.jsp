<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인페이지</title>
</head>
<body>
<%	
	request.setCharacterEncoding("UTF-8");	//이거 해줘야 오류 안생김
	response.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");	//로그인 처리 (아이디 비밀번호 가져와서 응답하는것)
	String pw = request.getParameter("pw"); 
			
	if(id.equals("admin") && pw.equals("1234")){ //id가 "admin"이고, pw가 "1234"이면, 로그인으로 처리하여 원래 페이지로 이동
		session.setAttribute("m_id",id);		//session객체 m_id의 id정보의 속성을 맞춰보는것
		session.setAttribute("m_pw",pw);		//session객체 m_pw의 password정보의 속성을 맞춰보는것
		response.sendRedirect("index.jsp");		//index페이지를 응답하게 하는것
	}else{										
		out.print("<h1>회원이 아닙니다</h1>");
		out.print("<a href='login.jsp'>로그인페이지로 이동</a>");
	}
%>
</body>
</html>