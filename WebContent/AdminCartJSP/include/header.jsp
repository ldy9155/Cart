
<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="/Cart/AdminCartJSP/include/login.css">
<link rel="stylesheet" href="/Cart/AdminCartJSP/include/style.css">
<link rel="stylesheet" href="/Cart/AdminCartJSP/include/w3.css">
<script type="text/javascript" src="/Cart/AdminCartJSP/include/	clock.js" charset="utf-8"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
</script>
</head>
<body onload="dateProcess()">
	<div class="w3-top">
		<div class="w3-bar w3-white w3-wide w3-padding w3-card-2">
			<c:if test="${aid eq 'MASTER' }">
				<a href="adminList.do?cmd=adminList" class="w3-bar-item w3-button"><b>IT</b> SHOP</a>
			</c:if>
			<c:if test="${aid ne 'MASTER' }">
				<a href="productList.do?cmd=productList" class="w3-bar-item w3-button"><b>IT</b> SHOP</a>
			</c:if>
			<div class="w3-right w3-hide-small" style="font-family: Dotum, 돋움; font-size: 13px; line-height: 18px; letter-spacing: 0">
				<c:if test="${aid eq 'MASTER' }">
					<a href="adminList.do?cmd=adminList" class="w3-bar-item w3-button"><b>업체 관리</b></a> 
					<a href="/Cart/AdminCartJSP/addCompany.jsp" class="w3-bar-item w3-button"><b>업체 추가</b></a>
				</c:if>
				<c:if test="${aid ne 'MASTER' }">
					<a href="productList.do?cmd=productList" class="w3-bar-item w3-button"><b>상품 관리</b></a>
					<a href="/Cart/AdminCartJSP/productAdd.jsp" class="w3-bar-item w3-button"><b>상품 추가</b></a>
				</c:if>
					<a href="adminLogout.do?cmd=adminLogout" class="w3-bar-item w3-button"><b>로그 아웃</b></a>
			</div>
		</div>
		<div id="header">
			<div class="topInfoWrap">
				<div class="topInfoArea">
					<div class="loginWrap">
						<span class="l"><em>업체 : </em><em>${company }</em></span>
						<span class="l"><em>담당자 : </em><em>${aid }</em></span>
						<span class="r"><em>Time : </em><em id="clock"></em></span>
						<span class="r"><em>Today : </em><em id="date"></em></span>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>