<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 확인</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<style>
td {
	font-family: '돋움', '굴림';
	color: #4B4B4B;
	font-size: 12px;
	line-height: 17px;
}

BODY, DIV, form, TEXTAREA, center, option, pre, blockquote {
	font-family: Tahoma;
	color: 000000;
	font-size: 9pt;
}

A:link {
	color: #635C5A;
	text-decoration: none;
}

A:visited {
	color: #545454;
	text-decoration: none;
}

A:active {
	color: #5A595A;
	text-decoration: none;
}

A:hover {
	color: #545454;
	text-decoration: underline;
}

.input {
	font-size: 12px;
	BORDER-RIGHT: #DCDCDC 1px solid;
	BORDER-TOP: #C7C1C1 1px solid;
	BORDER-LEFT: #C7C1C1 1px solid;
	BORDER-BOTTOM: #DCDCDC 1px solid;
	HEIGHT: 18px;
	BACKGROUND-COLOR: #ffffff;
	padding-top: 2pt;
	padding-bottom: 1pt;
	height: 19px
}

.select {
	color: #444444;
	font-size: 12px;
}

.textarea {
	border: solid 1;
	border-color: #e3e3e3;
	font-family: 돋움;
	font-size: 9pt;
	color: 333333;
	overflow: auto;
	background-color: transparent
}

.msgBox {
	padding: 15px 0px 25px 0px;
	border-bottom: 1px solid #eeeeee;
	background: #f8f8f8
}

.msgBox .useBtn {
	display: block;
	width: 60%;
	padding: 10px 0px 8px 0px;
	background: #444444;
	color: #ffffff;
	text-align: center;
	text-decoration: none
}

.closeBtn {
	display: block;
	width: 50px;
	padding: 4px 0px 2px 0px;
	border: 1px solid #dddddd;
	text-align: center;
	text-decoration: none
}
</style>
<script type="text/javascript">
	function idcheck(id,confirm,flag){
		if(confirm==""){
			document.location.href='idCheck.do?cmd=idCheck&id='+id+'&flag='+flag;
		}
	}
	function useId() {
		opener.frm.idChk.value = true;
		window.close();
	}
</script>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" onload="idcheck('${param.id}','${confirm}','${param.flag}')">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tbody>
			<tr>
				<td>
					<img src="/Cart/imges/design_adultintro_ids_t.gif" border="0">
				</td>
			</tr>
			<tr>
				<c:if test="${confirm ne null }">
				<td height="80" align="center" class="msgBox">
					<b>${param.id}</b>
					<c:choose>
						<c:when test="${check eq null}">
						<p style="color: #0000ff">
							<b>사용 가능한 아이디 입니다.</b>
						</p>
						</c:when>
						<c:otherwise>
						<p style="color: red"> 
							<b>이미 사용 중인 아이디 입니다.</b>
						</p>
						</c:otherwise>
					</c:choose>
					
					<c:if test="${check eq null }">
					<a href="javascript:useId();" class="useBtn">아이디 사용하기</a>
					</c:if>
				</td>
				</c:if>
			</tr>
			<tr>
				<td height="15"></td>
			</tr>
			<tr>
				<td align="center">
					<a href="javascript:window.close()" class="closeBtn">닫기</a>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>