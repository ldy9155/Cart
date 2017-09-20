
<!DOCTYPE HTML>
<HTML>
<HEAD>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<META http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="stylesheet" href="/admin/style.css">
<link rel="stylesheet" href="/css/jquery-ui/jquery-ui.min.css">

<script type="text/javascript">
<!--

var bottomtxt = "쇼핑몰 관리자 페이지에 오신것을 환영합니다.";
function _shopstatus() {
	window.status = bottomtxt;
	timerID= setTimeout("_shopstatus()", 30);
}
_shopstatus();


if (!Array.prototype.indexOf) {
  Array.prototype.indexOf = function (searchElement /*, fromIndex */ ) {
    'use strict';
    if (this == null) {
      throw new TypeError();
    }
    var n, k, t = Object(this),
        len = t.length >>> 0;

    if (len === 0) {
      return -1;
    }
    n = 0;
    if (arguments.length > 1) {
      n = Number(arguments[1]);
      if (n != n) { // shortcut for verifying if it's NaN
        n = 0;
      } else if (n != 0 && n != Infinity && n != -Infinity) {
        n = (n > 0 || -1) * Math.floor(Math.abs(n));
      }
    }
    if (n >= len) {
      return -1;
    }
    for (k = n >= 0 ? n : Math.max(len - Math.abs(n), 0); k < len; k++) {
      if (k in t && t[k] === searchElement) {
        return k;
      }
    }
    return -1;
  };
}


// F5 새로 고침 방지
document.onkeydown = function() {
	if (event.keyCode == 116) {
		event.returnValue = false;
		event.keyCode = 0;
	}
	};


// iframe 리사이즈
function autoResize(id){

	var ifrm = document.getElementById(id),
		oBody = ifrm.contentWindow.document.body,
		newheight;

	if(oBody){
		newheight = oBody.scrollHeight;
	}

	ifrm.style.height= newheight;
}

// iframe 높이 자동 조절 함수(onload함수)
function autosize(frameId){
    var oFrame = document.getElementById(frameId);
    contentHeight = oFrame.contentWindow.document.body.scrollHeight;
    oFrame.style.height = String(contentHeight) + "px";
}

function admin_windowclose(pID, pSetCookie) {
	document.getElementById(pID).style.display = "none";

	if (pSetCookie != "") {
		var expire = new Date();
		if(pSetCookie == 2) {	// 다시
			expire.setDate(expire.getDate() + 30);
			document.cookie = pID + "=" + escape("never") + ";expires=" + expire.toGMTString() + ";path=/;domain=demo.getmall.kr;";
		} else if(pSetCookie == 1) {	// 하루
			expire.setDate(expire.getDate() + 1);
			document.cookie = pID + "=" + escape("oneday") + ";expires=" + expire.toGMTString() + ";path=/;domain=demo.getmall.kr;";
		}
	}
}
//-->
</script>

<script type="text/javascript" src="/lib/lib.js.php"></script>
<script type="text/javascript" src="calendar.js.php"></script>
<script type="text/javascript" src="/js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="/js/jquery-ui.min.js"></script>
</head>
<body background="images/con_bg.gif" text="black" link="blue" vlink="purple" alink="red" class="bg" oncontextmenu="return false" oncontextmenu="alert('붙여넣기를 하시려면 Control키 + V를 같이 누르시면 됩니다.');return false;" >


<script type="text/javascript" src="lib.js.php"></script>
<script language="JavaScript">
function SearchVender() {
	document.sForm.submit();
}

function GoPage(block,gotopage) {
	document.pageForm.block.value=block;
	document.pageForm.gotopage.value=gotopage;
	document.pageForm.submit();
}

function VenderModify(vender) {
	document.form3.vender.value=vender;
	document.form3.action="vender_infomodify.php";
	document.form3.submit();
}

function VenderDetail(vender) {
	window.open("about:blank","venderdetail_pop","height=100,width=100,toolbar=no,menubar=no,scrollbars=yes,status=no");

	document.form2.vender.value=vender;
	document.form2.action="vender_detailpop.php";
	document.form2.target="venderdetail_pop";
	document.form2.submit();
}

function setVenderDisabled(vender,disabled) {
	if(disabled!="0" && disabled!="1") {
		alert("승인상태 설정이 잘못되었습니다.");
		return;
	}
	document.etcform.vender.value=vender;
	if(confirm("해당 입점업체의 승인상태를 ["+(disabled=="0"?"ON":"OFF")+"] 하시겠습니까?")) {
		document.etcform.mode.value="disabled";
		document.etcform.disabled.value=disabled;
		document.etcform.action="/admin/vender_management.php";
		document.etcform.target="processFrame";
		document.etcform.submit();
	}
}

function viewHistory(vender) {
	window.open("vender_ch_pop.php?vender="+vender,"history","height=400,width=780,toolbar=no,menubar=no,scrollbars=yes,status=no");

}

function loginVender(vender, pd) {

	window.open("","loginVender","");

	document.vForm.id.value=vender;
	document.vForm.passwd.value=pd;
	document.vForm.action="/vender/loginproc.php";
	document.vForm.target="loginVender";
	document.vForm.submit();
}

</script>
<table cellpadding="0" cellspacing="0" width="100%" style="table-layout:fixed">
<tr>
	<td valign="top">
	<table cellpadding="0" cellspacing="0" width=100% style="table-layout:fixed">
	<tr>
		<td>
		<table cellpadding="0" cellspacing="0" width="100%" style="table-layout:fixed"  background="images/con_bg.gif">
		<col width=198></col>
		<col width=10></col>
		<col width=></col>
		<tr>
			<td valign="top"  background="images/leftmenu_bg.gif">
			
<SCRIPT LANGUAGE="JavaScript">
	<!--
	layerlist = new Array ('shop1','shop2','shop3');
	var thisshop="shop1";
	ino=3;

	function Change(){
		if(document.all){
			for(i=0;i<ino;i++) {
				document.all(layerlist[i]).style.display="none";
			}
			stobj="document.all(shop).style";
		} else if(document.getElementById){
			for(i=0;i<ino;i++) {
				document.getElementById(layerlist[i]).style.display="none";
			}
			stobj="document.getElementById(shop).style";
		} else if(document.layers){
			for(i=0;i<ino;i++) {
				document.layers[layerlist[i]].display=none;
			}
			stobj="document.layers[shop]";
		}
	}

	function ChangeMenu(shop){
		if ( thisshop !== shop){
			Change();
			eval(stobj).display="table";
			thisshop=shop;
		} else{
			Change();
			//eval(stobj).display="table";
			thisshop=stobj;
		}
	}

	function InitMenu(shop) {
		try {
			tblashop = "tbla".concat(shop);
			tblbshop = "tblb".concat(shop);
			document.all(shop).style.display="table";
			document.all(tblashop).style.display="none";
			document.all(tblbshop).style.display="table";
			num=shop.substring(4,5)-1;
		} catch (e) {
			shop = "shop1";
			tblashop = "tblashop1";
			tblbshop = "tblbshop1";
			document.all(shop).style.display="table";
			document.all(tblashop).style.display="none";
			document.all(tblbshop).style.display="table";
			num=shop.substring(4,5)-1;
		}
	}
	//-->
</SCRIPT>

<TABLE WIDTH=100% BORDER=0 CELLPADDING=0 CELLSPACING=0>
	<TR>
		<TD height="68" align="right" valign="top" background="images/vender_leftmenu_title.gif"><a href="javascript:scrollMove(0);"><img src="images/leftmenu_stop.gif" border="0" id="menu_pix"></a><a href="javascript:scrollMove(1);"><img src="images/leftmenu_trans.gif" border="0"" id="menu_scroll"></a></TD>
	</TR>
	<TR>
		<TD background="images/leftmenu_bg.gif">
			<TABLE WIDTH=100% BORDER=0 CELLPADDING=0 CELLSPACING=0>
				<col width="16"></col>
				<col></col>
				<col width="16"></col>
				<TR>
					<TD valign="top">
						<table cellpadding="0" cellspacing="0" id="tblashop1" width="100%">
							<tr>
								<td height="34" onClick="ChangeMenu('shop1');" style="padding-left:20px;cursor:hand;"class="depth1_noselect"><img src="images/icon_leftmenu.gif" border="0" align="absmiddle"  style="margin-right:4px;margin-bottom:2px">입점업체 관리</td>
							</tr>
						</table>
						<table cellpadding="0" cellspacing="0" id="tblbshop1" style="display:none" width="100%">
							<tr>
								<td  height="34"  class="depth1_select" style="padding-left:20px;cursor:hand;" onClick="ChangeMenu('shop1');"><img src="images/icon_leftmenu_select.gif"  align="absmiddle" style="margin-right:4px;margin-bottom:2px">입점업체 관리</td>
							</tr>
						</table>
						<table cellpadding="0" cellspacing="0" width="100%">
							<tr>
								<td >
									<div id="shop1" style="display:none;">
										<table width="100%" cellpadding="0" cellspacing="0">
											<tr><td  height="8"></td></tr><tr>
	<td  style="padding-left:33pt;"  class="depth2_default" height="19"><img src="images/icon_leftmenu1.gif" width="8" height="10" border="0"><a href="shop_moreinfo.php">입점운영기본관리</a></td>
</tr>
<tr>
	<td  style="padding-left:33pt;"  class="depth2_default" height="19"><img src="images/icon_leftmenu1.gif" width="8" height="10" border="0"><a href="vender_new.php">입점업체 신규등록</a></td>
</tr>
<tr>
	<td  style="padding-left:33pt;"  class="depth2_select" height="19"><img src="images/icon_leftmenu1.gif" width="8" height="10" border="0"><a href="vender_management.php">입점업체 정보관리</a></td>
</tr>
<tr>
	<td  style="padding-left:33pt;"  class="depth2_default" height="19"><img src="images/icon_leftmenu1.gif" width="8" height="10" border="0"><a href="vender_notice.php">입점업체 공지사항</a></td>
</tr>
<tr>
	<td  style="padding-left:33pt;"  class="depth2_default" height="19"><img src="images/icon_leftmenu1.gif" width="8" height="10" border="0"><a href="vender_counsel.php">입점업체 상담게시판</a></td>
</tr>
<tr>
	<td  style="padding-left:33pt;"  class="depth2_default" height="19"><img src="images/icon_leftmenu1.gif" width="8" height="10" border="0"><a href="vender_main_banner.php">입점업체 대표배너</a></td>
</tr>
<tr>
	<td  style="padding-left:33pt;"  class="depth2_default" height="19"><img src="images/icon_leftmenu1.gif" width="8" height="10" border="0"><a href="vender_mailsend.php">E-mail 발송</a></td>
</tr>
<tr>
	<td  style="padding-left:33pt;"  class="depth2_default" height="19"><img src="images/icon_leftmenu1.gif" width="8" height="10" border="0"><a href="vender_smssend.php">SMS 문자전송</a></td>
</tr>
<tr>
	<td  style="padding-left:33pt;"  class="depth2_default" height="19"><img src="images/icon_leftmenu1.gif" width="8" height="10" border="0"><a href="vender_cs.php">CS 관리</a></td>
</tr>
<tr>
	<td  style="padding-left:33pt;"  class="depth2_default" height="19"><img src="images/icon_leftmenu1.gif" width="8" height="10" border="0"><a href="vender_proposal.list.php">제휴 및 입점문의</a></td>
</tr>
<tr><td height="25" ></td></tr>										</table>
									</div>
								</td>
							</tr>
						</table>

						<table width="100%" cellpadding="0" cellspacing="0" id="tblashop2">
							<tr><td height="3" background="images/leftmenu_line.gif"></td></tr>
							<tr>
								<td height="34" onClick="ChangeMenu('shop2');" style="padding-left:20px;cursor:hand;" class="depth1_noselect"><img src="images/icon_leftmenu.gif" border="0" align="absmiddle"  style="margin-right:4px;margin-bottom:2px">입점상품 관리</td>
							</tr>
						</table>
						<table width="100%" cellpadding="0" cellspacing="0" id="tblbshop2" style="display:none">
							<tr><td height="3" background="images/leftmenu_line.gif"></td></tr>
							<tr>
								<td  height="34" class="depth1_select" style="padding-left:20px;cursor:hand;" onClick="ChangeMenu('shop2');"><img src="images/icon_leftmenu_select.gif"  align="absmiddle" style="margin-right:4px;margin-bottom:2px">입점상품 관리</td>
							</tr>
						</table>
						<table width="100%" cellpadding="0" cellspacing="0">
							<tr>
								<td >
									<div id=shop2 style="display:none;">
										<table width="100%" cellpadding="0" cellspacing="0">
											<tr><td height="1"></td></tr><tr><td  height="8"></td></tr><tr>
	<td  style="padding-left:33pt;"  class="depth2_default" height="19"><img src="images/icon_leftmenu1.gif" width="8" height="10" border="0"><a href="vender_prdtlist.php">입점업체 상품목록</a></td>
</tr>
<tr>
	<td  style="padding-left:33pt;"  class="depth2_default" height="19"><img src="images/icon_leftmenu1.gif" width="8" height="10" border="0"><a href="vender_prdtallupdate.php">상품 일괄 간편수정</a></td>
</tr>
<tr>
	<td  style="padding-left:33pt;"  class="depth2_default" height="19"><img src="images/icon_leftmenu1.gif" width="8" height="10" border="0"><a href="vender_prdtallsoldout.php">품절상품 일괄 삭제/관리</a></td>
</tr>
<tr><td height="25" ></td></tr>										</table>
									</div>
								</td>
							</tr>
						</table>

						<table cellpadding="0" cellspacing="0" id="tblashop3" width="100%">
							<tr><td height="3" background="images/leftmenu_line.gif"></td></tr>
							<tr>
								<td height="34" onClick="ChangeMenu('shop3');" style="padding-left:20px;cursor:hand;" class="depth1_noselect"><img src="images/icon_leftmenu.gif" border="0" align="absmiddle"  style="margin-right:4px;margin-bottom:2px">주문/정산 관리</td>
							</tr>
						</table>
						<table cellpadding="0" cellspacing="0" id="tblbshop3" style="display:none" width="100%">
							<tr><td height="3" background="images/leftmenu_line.gif"></td></tr>
							<tr>
								<td height="34" class="depth1_select" style="padding-left:20px;cursor:hand;" onClick="ChangeMenu('shop3');"><img src="images/icon_leftmenu_select.gif"  align="absmiddle" style="margin-right:4px;margin-bottom:2px">주문/정산 관리</td>
							</tr>
						</table>
						<table width="100%" cellpadding="0" cellspacing="0">
							<tr>
								<td >
									<div id=shop3 style="margin-left:0;display:none;border-style:solid; border-width:0; border-color:black;padding:0;">
										<table width="100%" cellpadding="0" cellspacing="0">
											<tr><td height="1"></td></tr><tr><td  height="8"></td></tr><tr>
	<td  style="padding-left:33pt;"  class="depth2_default" height="19"><img src="images/icon_leftmenu1.gif" width="8" height="10" border="0"><a href="vender_orderlist.php">입점업체 주문조회</a></td>
</tr>
<tr>
	<td  style="padding-left:33pt;"  class="depth2_default" height="19"><img src="images/icon_leftmenu1.gif" width="8" height="10" border="0"><a href="vender_revenuelist.php">입점업체 매출조회</a></td>
</tr>
<tr>
	<td  style="padding-left:33pt;"  class="depth2_default" height="19"><img src="images/icon_leftmenu1.gif" width="8" height="10" border="0"><a href="vender_calendar.php">입점업체 정산 캘린더</a></td>
</tr>
<tr>
	<td  style="padding-left:33pt;"  class="depth2_default" height="19"><img src="images/icon_leftmenu1.gif" width="8" height="10" border="0"><a href="vender_orderadjust.php">정산 세부내역 관리</a></td>
</tr>
<tr>
	<td  style="padding-left:33pt;"  class="depth2_default" height="19"><img src="images/icon_leftmenu1.gif" width="8" height="10" border="0"><a href="vender_order_adjust_result.php">정산완료 이력보기</a></td>
</tr>
<tr><td height="25" ></td></tr>										</table>
									</div>
								</td>
							</tr>
						</table>
					</TD>
				</TR>
			</TABLE>
		</TD>
	</TR>
</TABLE>

<script>
	InitMenu('shop1');
</script>

<script type="text/javascript" src="move_menu.js.php"></script>			</td>

			<td></td>
			<td valign="top">




<table cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td height="29" colspan="3">
			<table cellpadding="0" cellspacing="0" width="100%">
			<tr>
				<td height="28" class="link" align="left" background="images/con_link_bg.gif"><img src="images/top_link_house.gif" border="0" valign="absmiddle">현재위치 : 입점관리 &gt; 입점업체 관리 &gt; <span class="2depth_select">입점업체 정보관리</span></td>
			</tr>
			</table>
		</td>
	</tr>
	<tr>
        <td width="16" style="font-size:0px;line-height:0%;"><img src="images/con_t_01.gif" width="16" height="16" border="0"></td>
        <td background="images/con_t_01_bg.gif"></td>
        <td width="16" style="font-size:0px;line-height:0%;"><img src="images/con_t_02.gif" width="16" height="16" border="0"></td>
    </tr>
    <tr>
        <td width="16" background="images/con_t_04_bg1.gif"></td>
        <td bgcolor="#ffffff" style="padding:10px">





			<table cellpadding="0" cellspacing="0" width="100%">
			<tr><td height="8"></td></tr>
			<tr>
				<td>
				<TABLE WIDTH="100%" BORDER=0 CELLPADDING=0 CELLSPACING=0>
				<TR>
					<TD><IMG SRC="images/vender_management_title.gif" ALT=""></TD>
					</tr><tr>
					<TD width="100%" background="images/title_bg.gif" height="21"></TD>
				</TR>
				</TABLE>
				</td>
			</tr>


			<tr>
				<td height="10"></td>
			</tr>
			<tr>
				<td class="notice_blue">입점 업체의 정보를 수정/삭제 하실 수 있습니다.</td>
			</tr>
			<tr>
				<td height="20"></td>
			</tr>


			<form name="sForm" method="post">
			<tr>
				<td>
				<table cellpadding="0" cellspacing="0" width="100%">
				<tr>
					<td  bgcolor="#ededed" style="padding:4pt;">
					<table cellpadding="0" cellspacing="0" width="100%" bgcolor="white">
					<tr>
						<td width="100%">
						<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
						<TR>
							<TD height="35" background="images/blueline_bg.gif"><p align="center"><b><font color="#333333">입점 업체 검색 선택</font></b></TD>
						</TR>
						<TR>
							<TD >
							<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 class="table_top">
							<TR>
								<TD class="td_con1" style="padding-top:10pt;" align="center"><select name=disabled class="select">
									<option value="">승인/대기업체 전체</option>
									<option value="Y" >승인 업체만 검색</option>
									<option value="N" >대기 업체만 검색</option>
									</select>
									<select name="s_check" class="select">
									<option value="id" >업체 아이디로 검색</option>
									<option value="com_name" >업체명으로 검색</option>
									</select>
									<input type=text name=search value="" class="input">
									<img src=images/btn_inquery03.gif border=0 style="cursor:hand" onClick="SearchVender()" align="absmiddle">
								</TD>
							</TR>
							</TABLE>
							</TD>
						</TR>
						</TABLE>
						</td>
					</tr>
					</table>
					</td>
				</tr>
				</table>
				</td>
			</tr>
			<tr><td height="20"></td></tr>
			</form>
			<tr>
				<td>
				<TABLE WIDTH="100%" BORDER=0 CELLPADDING=0 CELLSPACING=0>
				<TR>
					<TD><IMG SRC="images/vender_management_stitle1.gif" ALT=""></TD>
					<TD width="100%" background="images/shop_basicinfo_stitle_bg.gif">&nbsp;</TD>
					<TD><IMG SRC="images/shop_basicinfo_stitle_end.gif" WIDTH=10 HEIGHT=31 ALT=""></TD>
				</TR>
				</TABLE>
				</td>
			</tr>
			<tr><td height="5"></td></tr>
			<tr>
				<td class="notice_blue">
						- 입점업체 <b>아이디</b> 클릭시 해당 입점업체의 <b>미니샵</b>으로 바로 이동됩니다.<br />
						- <b>관리자 버튼</b> 클릭시 로그인 없이 해당 입점업체의 <b>관리자</b> 페이지로 바로 이동됩니다.
				</td>
			</tr>
			<tr><td height="10"></td></tr>
			<tr>
				<td>
				<TABLE width="100%" cellSpacing="0" cellPadding="0" border="0" style="table-layout:fixed" class="table_top">
				<col width="50"></col>
				<col width="90"></col>
				<col width="200"></col>
				<col width=""></col>
				<col width="90"></col>
				<col width="120"></col>
				<col width="185"></col>
				<col width="200"></col>
				<col width="80"></col>
				<col width="80"></col>
				<col width="45"></col>
				<TR>
					<TD class="table_cell" align="center">번호</TD>
					<TD class="table_cell1" align="center">업체ID</TD>
					<TD class="table_cell1" align="center">회사명</TD>
					<TD class="table_cell1" align="center">회사전화</TD>
					<TD class="table_cell1" align="center">담당자명</TD>
					<TD class="table_cell1" align="center">휴대전화</TD>
					<TD style="BORDER-left:#E3E3E3 1pt solid;" align="center">
						<table border="0" cellpadding="0" cellspacing="0" width="100%">
							<col width="25%"></col>
							<col width="25%"></col>
							<col width="25%"></col>
							<col width="25%"></col>
							<tr height="18">
								<td colspan="4" class="table_cell" align="center">상품권한</td>
							</tr>
							<tr>
								<td class="table_cell" align="center">등록</td>
								<td class="table_cell1" align="center">수정</td>
								<td class="table_cell1" align="center">삭제</td>
								<td class="table_cell1" align="center">인증</td>
							</tr>
						</table>
					</TD>
					<TD class="table_cell1" align="center">수수료운영형태<br/>/수수료</TD>
					<TD class="table_cell1" align="center">관리</TD>
					<TD class="table_cell1" align="center">상세</TD>
					<TD class="table_cell1" align="center">승인</TD>
				</TR>
<tr bgcolor=#FFFFFF onmouseover="this.style.background='#FEFBD1'" onmouseout="this.style.background='#FFFFFF'">
	<td class="td_con0" align=center>2</td>
	<td class="td_con1" align=center><A HREF="../minishop.php?storeid=design5" target=_blank><b>design5</b></A> <br/><a href="javascript:loginVender('design5','b59c67bf196a4758191e42f76670ceba');"><span style='padding:3px 0px;'><img src="images/icon_venderlogin.gif" alt="관리자" /></span></a>	</td>
	<td class="td_con1" align=center>&nbsp;디자인5&nbsp;</td>
	<td class="td_con1" align=center>&nbsp;053-1111-1111&nbsp;</td>
	<td class="td_con1" align=center>&nbsp;오서방&nbsp;</td>
	<td class="td_con1" align=center>&nbsp;010-1111-1111&nbsp;</td>
	<td class="td_con0" style="BORDER-left:#E3E3E3 1pt solid;" align=center>
	<table border=0 cellpadding=0 cellspacing=0 width=100%>
	<col width=25%></col>
	<col width=25%></col>
	<col width=25%></col>
	<col width=25%></col>
	<tr>
		<td align=center><B><span class=font_blue>Y</span></B></td>
		<td align=center><B><span class=font_blue>Y</span></B></td>
		<td align=center><B><span class=font_blue>Y</span></B></td>
		<td align=center><B><span class=font_orange>N</span></B></td>
	</tr>
	</table>
	</td>
 <td class="td_con1" align=center>상품개별 공급가</td>
	<td class="td_con1" align=center><A HREF="javascript:VenderModify(9)">[관리]</A></td>
	<td class="td_con1" align=center><A HREF="javascript:VenderDetail(9)">[상세]</A></td>
	<td class="td_con1" align=center><img src=images/icon_off.gif border=0 align=absmiddle style="cursor:hand" onclick="setVenderDisabled('9','0')">	</td>
</tr>
<tr>
	<TD colspan="11" background="images/table_con_line.gif"></TD>
</tr>
<tr bgcolor=#FFFFFF onmouseover="this.style.background='#FEFBD1'" onmouseout="this.style.background='#FFFFFF'">
	<td class="td_con0" align=center>1</td>
	<td class="td_con1" align=center><A HREF="../minishop.php?storeid=getmall" target=_blank><b>getmall</b></A> <br/><a href="javascript:loginVender('getmall','b59c67bf196a4758191e42f76670ceba');"><span style='padding:3px 0px;'><img src="images/icon_venderlogin.gif" alt="관리자" /></span></a>	</td>
	<td class="td_con1" align=center>&nbsp;겟몰&nbsp;</td>
	<td class="td_con1" align=center>&nbsp;053-1544-8992&nbsp;</td>
	<td class="td_con1" align=center>&nbsp;김겟몰&nbsp;</td>
	<td class="td_con1" align=center>&nbsp;111-1111-1111&nbsp;</td>
	<td class="td_con0" style="BORDER-left:#E3E3E3 1pt solid;" align=center>
	<table border=0 cellpadding=0 cellspacing=0 width=100%>
	<col width=25%></col>
	<col width=25%></col>
	<col width=25%></col>
	<col width=25%></col>
	<tr>
		<td align=center><B><span class=font_orange>N</span></B></td>
		<td align=center><B><span class=font_orange>N</span></B></td>
		<td align=center><B><span class=font_orange>N</span></B></td>
		<td align=center><B><span class=font_orange>N</span></B></td>
	</tr>
	</table>
	</td>
 <td class="td_con1" align=center>상품개별 공급가</td>
	<td class="td_con1" align=center><A HREF="javascript:VenderModify(12)">[관리]</A></td>
	<td class="td_con1" align=center><A HREF="javascript:VenderDetail(12)">[상세]</A></td>
	<td class="td_con1" align=center><img src=images/icon_on.gif border=0 align=absmiddle style="cursor:hand" onclick="setVenderDisabled('12','1')">	</td>
</tr>
<tr>
	<TD colspan="11" background="images/table_con_line.gif"></TD>
</tr>
				</TABLE>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td align="center">
				<table cellpadding="0" cellspacing="0" width="100%">
<tr>
	<td width="100%" class="font_size"><p align="center">
		<span class=font_orange2><B>[1]</B></span> 	</td>
</tr>
				</table>
				</td>
			</tr>
			<form name=form2 method=post>
			<input type=hidden name=vender>
			</form>

			<form name="form3" method="post">
			<input type=hidden name='vender'>
			<input type=hidden name='disabled' value=''>
			<input type=hidden name='s_check' value=''>
			<input type=hidden name='search' value=''>
			<input type=hidden name='block' value=''>
			<input type=hidden name='gotopage' value='1'>
			</form>

			<form name="pageForm" method="post">
			<input type=hidden name='disabled' value=''>
			<input type=hidden name='s_check' value=''>
			<input type=hidden name='search' value=''>
			<input type=hidden name='block' value=''>
			<input type=hidden name='gotopage' value='1'>
			</form>

			<form name=etcform method=post action="/admin/vender_management.php">
			<input type=hidden name=mode>
			<input type=hidden name=vender>
			<input type=hidden name=disabled>
			</form>
						<form name=vForm method=post>
			<input type=hidden name="id">
			<input type=hidden name="passwd">
			<input type=hidden name="admin_chk" value="1">
			</form>
						<tr>
				<td height=20></td>
			</tr>
			<tr>
				<td>
				<TABLE WIDTH="100%" BORDER=0 CELLPADDING=0 CELLSPACING=0>
				<tr>
					<td style="font-size:0px;line-height:0%;"><img src="images/manual_top1.gif" border="0"></td>
					<td style="font-size:0px;line-height:0%;" width="100%" background="images/manual_bg.gif"><img src="images/manual_title.gif" border="0"></td>
					<td style="font-size:0px;line-height:0%;" colspan=3><img src="images/manual_top2.gif" border="0"></td>
				</tr>
				<TR>
					<TD background="images/manual_left1.gif"></TD>
					<TD COLSPAN=3 width="100%" valign="top" class="menual_bg" style="padding-top:8pt; padding-bottom:8pt; padding-left:4pt;">
					<table cellpadding="0" cellspacing="0" width="100%">
					<tr>
						<td width="20" align="right" valign="top" style="font-size:0px;line-height:0%;"><img src="images/icon_8.gif" width="13" height="18" border="0"></td>
						<td ><span class="font_dotline">입점업체 정보관리</span></td>
					</tr>
					<tr>
						<td width="20" align="right">&nbsp;</td>
						<td  class="space_top">- 등록된 입점업체 리스트와 기본적인 정보사항을 확인할 수 있습니다.</td>
					</tr>
					<tr>
						<td width="20" align="right">&nbsp;</td>
						<td  class="space_top">- 입점사 정보변경은 [관리] 이용하여 변경할 수 있습니다.</td>
					</tr>
					<tr>
						<td width="20" align="right">&nbsp;</td>
						<td  class="space_top">- 입점사 미니샵 관리 URL은 <B><font class=font_orange><A HREF="http://demo.getmall.kr/vender/" target="_blank">http://demo.getmall.kr/vender/</A></font></B> 입니다.</td>
					</tr>
					<tr>
						<td width="20" align="right">&nbsp;</td>
						<td  class="space_top">- 해당업체 미니샵 URL은 <B><font class=font_orange>http://demo.getmall.kr/minishop.php?storeid=업체ID</font></B> 입니다.</td>
					</tr>
					</table>
					</TD>
					<TD background="images/manual_right1.gif"></TD>
				</TR>
				<TR>
					<TD style="font-size:0px;line-height:0%;"><IMG SRC="images/manual_left2.gif" WIDTH=15 HEIGHT=8 ALT=""></TD>
					<TD style="font-size:0px;line-height:0%;" COLSPAN=3 background="images/manual_down.gif"></TD>
					<TD style="font-size:0px;line-height:0%;"><IMG SRC="images/manual_right2.gif" WIDTH=18 HEIGHT=8 ALT=""></TD>
				</TR>
				</TABLE>
				</td>
			</tr>
			<tr>
				<td height="50"></td>
			</tr>
			</table>

</td>
        <td width="16" background="images/con_t_02_bg.gif"></td>
    </tr>
    <tr>
        <td width="16" style="font-size:0px;line-height:0%;"><img src="images/con_t_04.gif" width="16" height="16" border="0"></td>
        <td background="images/con_t_04_bg.gif"></td>
        <td width="16" style="font-size:0px;line-height:0%;"><img src="images/con_t_03.gif" width="16" height="16" border="0"></td>
    </tr>
    <tr><td height="20"></td></tr>
</table>

			</td>
		</tr>
		</table>
		</td>
	</tr>
	</table>
	</td>
</tr>
</table>

<iframe name="processFrame" src="about:blank" width="0" height="0" scrolling=no frameborder=no style="display:none;"></iframe>


<SCRIPT LANGUAGE="JavaScript">
<!--
function SendSMS() {
	window.open("sendsms.php","sendsmspop","width=220,height=350,scrollbars=no");
}
function MemberMemo() {
	window.open("member_memoconfirm.php","memopop","width=250,height=120,scrollbars=no");
}
//-->
</SCRIPT>
<table cellpadding="0" cellspacing="0" width="100%" >
<tr>
	<td width="100%"   background="images/bottom_bg.gif" height="58">
	<table cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td style="padding-right:20px">
		<TABLE WIDTH="100%" BORDER=0 CELLPADDING=0 CELLSPACING=0>
		<TR>
			<TD><img src="images/copyright_logo.gif" border="0"></TD>
			<TD align="right"><span style="color:#6C6C6C;font-family:돋움;font-size:11px;letter-spacing:-0.5pt;"><a href="main.php">관리자메인 바로가기</a> | <a HREF="http://demo.getmall.kr/" name="shopurl" target=_blank>내 쇼핑몰 바로가기</a> | <a href="#top">위로이동</a> | <a href="javascript:history.go(-1);">이전페이지</a></span></TD>
		</TR>
		</TABLE>
		</td>
	</tr>
	</table>
	</td>
</tr>
</table>
<iframe name="processFrm" id="processFrm" value="" frameborder='0' width="0" height="0" style="display:none;">
</body>
</html>