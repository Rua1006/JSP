<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
	.input_data {display:block;}
</style>
</head>
<body>
	<div class="wrap">
		<form action="loginPro.html" method="post" id="loginForm">
			<fieldset>
				<legend>로그인</legend>
				<table>
					<tbody>
						<input type="text" name="id" id="id" class="input_data" placeholder="아이디입력" >
						<input type="password" name="pw" id="pw" class="input_data" placeholder="비밀번호입력">
						<input type="submit" value="로그인"> &nbsp;
						<input type="reset" value="취소">
					</tbody>
				</table>
			</fieldset>
		</form>
	</div>
</body>
</html>