<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>쇼핑몰 입장하기</title>
<script>
$(function(){

	$("button#admin").click(function(){
		document.location.href="/Cart/AdminCartJSP/adminLogin.jsp";
	});
	
	$("button#client").click(function(){
		document.location.href="productList.do?cmd=productList&job=main";
	});
	
});
</script>
</head>
<body>
	
	<!-- admin -->
	<button id="admin" name="admin">관리자 모드 입장</button>
	
	<!-- client -->
	<button id="client" name="client">사용자 모드 입장</button>
	
</body>
</html>