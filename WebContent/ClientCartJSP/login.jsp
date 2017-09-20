<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script type="text/javascript" src="/Cart/CartJS/lib.js.php"></script>
<script type="text/javascript" src="/Cart/CartJS/drag.js.php"></script>
<script type="text/javascript" src="/Cart/CartJS/DropDown.js.php"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/style.css">
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/login.css">
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/style2.css">
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/user_style.css">
<script>
$(function(){
	$("a#login").click(function(){
		if($("input[id=lid]").val()==""||$("input[id=pass]").val()==""){
			alert("아이디와 비밀번호를 입력하세요");
			$("input[id=pass]").val("");
			$("input[id=lid]").val("");
			$("input[id=lid]").focus();
		}else{
			$("form[name=formlogin]").submit();
		}
	});
});
</script>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
	<center>
		<c:import url="/ClientCartJSP/include/header.jsp"></c:import>

		<div class="wrap" style="width: 1200px;">

			<c:import url="/ClientCartJSP/include/left.jsp"></c:import>

			<!-- 메인본문 디자인 : START -->
			<div class="wrapContent" style="width: 950px;">

				<form name="formlogin" action="MemberLogin.do?cmd=MemberLogin" method="post">
					<input type="hidden" name="type" value="">
					<div style="margin-top: 30px" class="subpageTitle">회원로그인</div>
					<!-- 회원로그인 디자인 : START -->
					<div class="wrapLogin">
						<p>
							회원가입을 하시면 사이트에서 운영하는 각종 이벤트에 참가하실 수 있습니다.
							<br>
							또한 저희 쇼핑몰에서 엄선한 추천상품 및 이벤트 정보 등 다양한 정보를 메일로 받으실 수 있습니다.
						</p>
						<div class="loginAndOrder">
							<div class="login" style="background: #f9f9f9;">
								<div class="loginForm">
									<h5>회원로그인</h5>
									<div style="float: left; width: 390px;">
										<p style="margin-bottom: 8px;">
											<span class="txt">아이디</span>
											<input type="text" id="lid" name="id" maxlength="20" class="inputBox" value="">
										</p>
										<p>
											<span class="txt">비밀번호</span>
											<input type="password" id="pass" name="pw" maxlength="20" class="inputBox" value="">
										</p>
									</div>
									<div style="float: right;">
										<a href="#" id="login" name="login" style="display: block; width: 90px; height: 76px; line-height: 76px; text-align: center; color: #ffffff; font-size: 14px; font-weight: 600; background: #222222;">로그인</a>
									</div>
								</div>
							</div>

							<!--회원가입/아이디비번 찾기-->
							<div class="findIdPass">
								<div style="width: 480px; margin: 0 auto; margin-bottom: 10px; overflow: hidden;">
									<img src="/Cart/imges/login_con_text3_skin2.gif" alt="">
									<div style="float: right; margin-top: 3px;">
										<a href="/Cart/ClientCartJSP/join.jsp">
											<img src="/Cart/imges/login_con_btn2a_skin2.gif" alt="회원가입">
										</a>
									</div>
								</div>

								<div style="width: 480px; margin: 0 auto; overflow: hidden;">
									<img src="/Cart/imges/login_con_text4_skin2.gif" alt="">
									<div style="float: right;">
										<a href="#">
											<img src="/Cart/imges/login_con_btn3_skin2.gif" alt="아이디/비밀번호 찾기">
										</a>
									</div>
								</div>
							</div>
							<!--회원가입/아이디비번 찾기-->
						</div>

						<div class="loginPageBanner"></div>
					</div>
					<!-- 회원로그인 디자인 : END -->
				</form>
			</div>
		</div>

		<c:import url="/ClientCartJSP/include/footer.jsp"></c:import>
	</center>
</body>
</html>