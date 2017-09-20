<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 자동 정렬 금지 -->
<!-- 좌측 메뉴 -->
<script>
	var color = {
        brown: "color:#560000;font-size:11px;",
        red: "color:#d83128;font-size:11px;",
        yellow: "color:#ea991b;font-size:11px;",
        green: "color:#93ba2f;font-size:11px;",
        blue: "color:#4da4e0;font-size:11px;"
    };
    
	$(function() {
		$("a#search").click(function(){
			$("form[name=search_tform]").submit();
		});
		
		$("a#cgory").click(function(){
			var temp=($(this, "span").text());
			$("input#cgoryData").val(temp);
			$("form#cgorySearch").submit();
		});
		
		$("a#leftlogin").click(function(){
			if($("input[id=lid2]").val()==""||$("input[id=pass2]").val()==""){
				alert("아이디와 비밀번호를 입력하세요");
				$("input[id=pass2]").val("");
				$("input[id=lid2]").val("");
				$("input[id=lid2]").focus();
			}else{
				$("form[name=leftloginform]").submit();
			}
		});
		
        console.log(
                "%c  ____                                    \
                \n%c | ___ \\   ___  _   %c_  %c___  _   %c_ _ __   __ _\
                \n%c | |  \\ \\ / _ \\| | %c| |/ _ \\| | %c| | `_ \\ %c/ _` | \
                \n%c | |__/ /| (_) | |_| %c| (_) %c| |_| %c| | | | %c(_| | \
                \n%c |_____/  \\___/ \\___ %c|\\___/ %c\\__,_%c|_| |_|%c\\__, | \
                \n%c                   %c|_|                  %c|___/ \
                \n      %cLife is too short, do%cy%co%cu%cng.\n", 
                color.red, 
                color.red, color.red, color.yellow, color.green, color.blue, 
                color.red, color.red, color.yellow, color.green, color.blue, 
                color.red, color.red, color.yellow, color.red, color.blue, 
                color.red, color.red, color.yellow, color.green, color.blue, 
                color.red, color.red, color.blue, 
                color.red, color.red, color.yellow,  
            );
	});
</script>
<div class="wrapLeft" style="width: 200px; margin-right: 30px">
	<div style="width: 200px;">
		<!-- 로그인 -->
		<c:if test="${member eq null }">
		<div class="memberLogin">
			<br>
			<br>
			<form name="leftloginform" method="post" action="MemberLogin.do?cmd=MemberLogin">
				<input type="hidden" name="type" value="login">
				<div style="float: left; width: 60%;">
					<input type="text" id="lid2" name="id" maxlength="20" placeholder="아이디" class="input">
					<input type="password" id="pass2" name="pw" maxlength="20" placeholder="비밀번호" class="input">
				</div>
				<a id="leftlogin" href="#">
					<span class="button">LOGIN</span>
				</a>
			</form>
		</div>
		</c:if>
		<c:if test="${member ne null }">
		<div class="memberLogin">
			<br>
			<br>		
			<h4>LOGIN</h4>
			<div style="padding: 10px; background: #f8f8f8;">
				<p>
					<font color="orange">
						<b>${member.mname }</b>
					</font>
					님 환영합니다.
					<br>
				</p>
			</div>
			<a href="MemberLogout.do?cmd=MemberLogout" style="width: 100%;">
				<span class="button" style="height: 25px; line-height: 25px;">로그아웃</span>
			</a>
		</div>
		</c:if>
		<!-- 카테고리 목록 -->
		<div class="categoryList">
			<h4>카테고리</h4>
			<form id="cgorySearch" action="productList.do?cmd=productList&job=main&search=yes&query=cgory" method="post">
				<input id="cgoryData" name="data" type="hidden" value="">
			</form>
			<ul>
				<li class="categoryListTd">
					<a id="cgory" href="#"><span class="leftprname">노트북</span></a>
				</li>
				<li class="categoryListTd">
					<a id="cgory" href="#"><span class="leftprname">모니터</span></a>
				</li>
				<li class="categoryListTd">
					<a id="cgory" href="#"><span class="leftprname">카메라</span></a>
				</li>
				<li class="categoryListTd">
					<a id="cgory" href="#"><span class="leftprname">게임기</span></a>
				</li>
				<li class="categoryListTd">
					<a id="cgory" href="#"><span class="leftprname">데스크탑</span></a>
				</li>
				<li class="categoryListTd">
					<a id="cgory" href="#"><span class="leftprname">생활가전</span></a>
				</li>
			</ul>
		</div>

		<!-- 고객센터 -->
		<div class="customerCenter">
			<h4>고객센터</h4>
			<ul>
				<li>
					<span class="leftcustomer">1544-8992</span>
				</li>
				<li>
					<a href="#">
						<span class="leftcustomer">E-mail 문의하기</span>
					</a>
				</li>
			</ul>
		</div>

	</div>
</div>
<!-- /좌측메뉴 -->