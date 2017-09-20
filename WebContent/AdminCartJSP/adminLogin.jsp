<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='/Cart/CartCSS/adminLogin.css' rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>IT SHOP</title>
</head>
<body>
	<div class="login-block" style="margin-top: 300px">
		<h1>IT SHOP</h1>
		<form action="adminLogin.do?cmd=adminLogin" name="aLogin" id="aLogin" method="post">
			<input type="text" placeholder="id" id="username" name="username"/> <input type="password" placeholder="Password" id="password" name="password" onkeypress="if(event.keyCode==13) {adminLogin();}">
		</form>
		<button onclick="adminLogin()">로그인</button>
	</div>
</body>
<script type="text/javascript">
	function adminLogin() {
		var obj = document.aLogin;
		if (!obj.username.value || !obj.password.value) {
			alert('아이디와 비밀번호를 입력하세요');
			obj.username.value = '';
			obj.password.value = '';
			obj.username.focus();
		} else {
			obj.submit();
		}
	}
</script>
</html>