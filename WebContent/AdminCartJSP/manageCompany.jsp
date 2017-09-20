<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="/Cart/CartCSS/admin_style.css">
<link rel="stylesheet" href="/Cart/CartCSS/user_style.css">
<style type="text/css">table{margin-top: 24px;}</style>
<script type="text/javascript" src="/Cart/CartJS/calendar.js.php"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="/Cart/AdminCartJSP/include/login.css">
<link rel="stylesheet" href="/Cart/AdminCartJSP/include/style.css">
<link rel="stylesheet" href="/Cart/AdminCartJSP/include/w3.css">
<script type="text/javascript" src="/Cart/AdminCartJSP/include/clock.js" charset="utf-8"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/Cart/AdminCartJSP/include/footer-distributed-with-address-and-phones2.css">
<script>
		
</script>
</head>
<body text="black" link="blue" vlink="purple" alink="red" class="bg" oncontextmenu="return false" marginwidth="0" marginheight="0" onload="dateProcess()">
	
		<div id="wrapper">

		<!-- #header -->
		<div id="header">
			<jsp:include page="/AdminCartJSP/include/header.jsp"></jsp:include>
		</div>

		<!-- #content -->
		<div id="content">
			<c:import url="/AdminCartJSP/AdminTable.jsp"></c:import>
		</div>

		<!-- #footer -->
		<div id="footer">
			<jsp:include page="/AdminCartJSP/include/footer.jsp"></jsp:include>
		</div>
	</div>
	
</body>
</html>