<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/style.css">
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/style2.css">
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/user_style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>회원가입 완료</title>
</head>
<body>
	<center>
		<c:import url="/ClientCartJSP/include/header.jsp"></c:import>
		<div class="wrap" style="width: 1200px">
			<div class="fullsizeMargin">
				<c:import url="/ClientCartJSP/include/left.jsp"></c:import>
				<!-- 메인본문 디자인 : START -->
				<div class="wrapContent" style="width: 970px">
					<br>
					<div class="subpageTitle">회원가입</div>

					<table border="0" cellpadding="0" cellspacing="0" width="100%">
						<tbody>
							<tr>
								<td height="120" align="center">
									<img src="/Cart/imges/joinend2_img.gif" alt="">
								</td>
							</tr>
							<tr>
								<td style="padding: 20px 0px; border: 8px solid #f5f5f5; text-align: center; line-height: 140%;">
									<span class="orangeFonts">IT SHOP</span>
									쇼핑몰의 회원이 되신 것을 진심으로 축하드립니다.
									<br>
									회원 로그인을 하시면 각종 이벤트 및 적립/할인 혜택을 적용받으실 수 있습니다.
									<br>
									<br>
									회원 로그인 후
									<span class="orangeFonts">[마이페이지 &gt; 홍보관리]</span>
									나
									<span class="orangeFonts">[마이페이지] 의 SNS 채널관리 &gt; URL 소문내기</span>
									로
									<br>
									타 회원이 가입 시 소정의 적립금을 지급해 드립니다.
									<br>
									<br>
									감사합니다.
								</td>
							</tr>
							<tr>
								<td height="20"></td>
							</tr>
							<tr>
								<td align="center">
									<a href="/Cart/ClientCartJSP/login.jsp">
										<img src="/Cart/imges/btn_joinend1.gif" border="0" alt="">
									</a>
									<a href="productList.do?cmd=productList&job=main">
										<img src="/Cart/imges/btn_joinend2.gif" border="0" alt="">
									</a>
								</td>
							</tr>
							<tr>
								<td height="50"></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<c:import url="/ClientCartJSP/include/footer.jsp"></c:import>
	</center>
</body>
</html>