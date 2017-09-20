<!DOCTYPE HTML>
<html><head>
<meta charset="EUC-KR">
<title>파일업로드</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="robots" content="noindex,nofollow">
<style>
td {font-family:Tahoma;color:666666;font-size:9pt;}

tr {font-family:Tahoma;color:666666;font-size:9pt;}
BODY,TD,SELECT,DIV,form,TEXTAREA,center,option,pre,blockquote {font-family:Tahoma;color:000000;font-size:9pt;}
A:link    {color:333333;text-decoration:none;}

A:visited {color:333333;text-decoration:none;}

A:active  {color:333333;text-decoration:none;}

A:hover  {color:#CC0000;text-decoration:none;}

</style>
<script language="JavaScript">
<!--
var g_fIsSP2 = false;
g_fIsSP2 = (window.navigator.userAgent.indexOf("SV1") != -1);

window.moveTo(10,10);
if (g_fIsSP2) window.resizeTo(392,280);
else window.resizeTo(392,290);

function CheckForm() {
	if(document.form1.upfile.value.length==0) {
		alert("");
		return;
	}
	document.form1.type.value="upload";
	document.form1.submit();
}
//-->
</script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" marginheight="0" marginwidth="0">
<table cellpadding="0" cellspacing="0" width="100%" style="table-layout:fixed">
<form name="form1" method="post" action="/board/ProcessBoardFileUpload.php" enctype="multipart/form-data"></form>
<tbody><tr>
	<td><img src="/Cart/imges/board_fileup_title.gif" border="0"></td>
</tr>
<tr>
	<td style="padding:5pt;">
	<table cellpadding="0" cellspacing="0" width="100%" align="center">
	<tbody><tr>
		<td align="center" height="30"><input type="file" name="upfile" style="width:90%;border:1 solid #CCCCCC;"></td>
	</tr>
	<tr>
		<td height="5"></td>
	</tr>
	<tr>
		<td style="font-size:11px;letter-spacing:-0.5pt;" bgcolor="#F7F7F7">- <b>첨부 가능한 파일 용량은</b> <b><font color="#FF6600">200KB</font></b>를 초과할 수 없습니다.<br>
		<img height="5" width="0" border="0">- 파일명에 한/영문,숫자를 제외한 특수문자,공백 등이 있을 경우<br>
		<font color="#ffffff">-</font> 파일첨부가 안될 수 있습니다.</td>
	</tr>
	</tbody></table>
	</td>
</tr>
<tr>
	<td><hr size="1" noshade="" color="#F3F3F3"></td>
</tr>
<tr>
	<td align="center"><a href="javascript:CheckForm();"><img src="/Cart/imges/board_iconbuttok.gif" border="0" vspace="3"></a></td>
</tr>
<input type="hidden" name="type" value="">
<input type="hidden" name="board" value="qna">
<input type="hidden" name="max_filesize" value="204800">
<input type="hidden" name="btype" value="L">

</tbody></table>



</body></html>