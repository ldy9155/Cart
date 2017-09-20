<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>������ ������</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="/Cart/CartCSS/admin_style.css">
<link rel="stylesheet" href="/Cart/CartCSS/jquery-ui.min.css">
<style type="text/css">
table {
	margin-top: 24px;
}
</style>
<script type="text/javascript" src="/Cart/CartJS/lib.js.php"></script>
<script type="text/javascript" src="/Cart/CartJS/calendar.js.php"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<link rel="stylesheet" href="/Cart/AdminCartJSP/include/login.css">
<link rel="stylesheet" href="/Cart/AdminCartJSP/include/style.css">
<link rel="stylesheet" href="/Cart/AdminCartJSP/include/w3.css">
<script type="text/javascript" src="/Cart/AdminCartJSP/include/clock.js" charset="utf-8"></script>
<link rel="stylesheet" href="/Cart/AdminCartJSP/include/footer-distributed-with-address-and-phones.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function() {
		/* ADMIN INSERT */
		$("a#adminAdd").click(
				function() {
					if ($("input#id").val().length == 0) {
						alert("���̵� �Է��ϼ���");
						$("input#id").focus();
						return;
					}
					if ($("input#idChk").val() == '') {
						alert("���̵� �ߺ�Ȯ���� �ʿ��մϴ�");
						$("input#id").focus();
						return;
					}
					if ($("input#up_com_name").val() == '') {
						alert("ȸ����� �Է��ϼ���");
						$("input#up_com_name").focus();
						return;
					}
					if ($("input#up_com_opner").val() == '') {
						alert("��ǥ�� ������ �Է��ϼ���");
						$("input#up_com_opner").focus();
						return;
					}
					if ($("input#up_com_addr").val() == '') {
						alert("ȸ���ּҸ� �Է��ϼ���");
						$("input#up_com_addr").focus();
						return;
					}
					if ($("input#up_com_item").val() == '') {
						alert("����� ������ �Է��ϼ���");
						$("input#up_com_item").focus();
						return;
					}
					if ($("input#up_com_tell").val() == ''
							|| $("input#up_com_tel2").val() == ''
							|| $("input#up_com_tel3").val() == '') {
						alert("ȸ�� ��ǥ ��ȭ�� �Է��ϼ���");
						$("input#up_com_tell").focus();
						return;
					}
					if ($("input#up_p_name").val() == '') {
						alert("������̸��� �Է��ϼ���");
						$("input#up_p_name").focus();
						return;
					}
					if ($("input#up_p_mobile1").val() == ''
							|| $("input#up_p_mobile2").val() == ''
							|| $("input#up_p_mobile3").val() == '') {
						alert("����� �޴���ȭ�� �Է��ϼ���");
						$("input#up_p_mobile1").focus();
						return;
					}

					$("input#up_com_tel_tot").val(
							$("input#up_com_tell").val() + "-"
									+ $("input#up_com_tel2").val() + "-"
									+ $("input#up_com_tel3").val());
					$("input#up_p_mobile_tot").val(
							$("input#up_p_mobile1").val() + "-"
									+ $("input#up_p_mobile2").val() + "-"
									+ $("input#up_p_mobile3").val());
					$("form#frm").submit();
				});

		/* PW CHECK */
		$("input#pw2")
				.blur(
						function() {
							if ($("input#pw").val() != '') {
								if (CheckFormData2($("input#pw").val())
										|| CheckFormData($("input#pw").val()) == false
										|| $("input#pw").val().length < 4
										|| $("input#pw").val().length > 12) {
									alert("PW�� ����,���ڸ� �����Ͽ� 4~12�� �̳��� ����� �����մϴ�");
									$("input#pw").val('');
									$("input#pw2").val('');
									$("input#pw").focus();
								} else {
									$('span#passcheck *').remove();
									if ($("input#pw").val() == $("input#pw2")
											.val()) {
										$("span#passcheck")
												.append(
														"<font color='green'>&nbsp;&nbsp; PW SUCCESS</font><input id='pwcheck' type='hidden' value='true'>");
									} else {
										$("span#passcheck")
												.append(
														"<font color='red'>&nbsp;&nbsp; PW FAIL</font><input id='pwcheck' type='hidden' value='false'>");
									}
								}
							}
						});

		/* ID CHECK */
		$("a[class=board_list]")
				.click(
						function() {
							if (CheckFormData2($("input#id").val())
									|| CheckFormData($("input#id").val()) == false
									|| $("input#id").val().length < 4
									|| $("input#id").val().length > 12) {
								alert("ID�� ����,���ڸ� �����Ͽ� 4~12�� �̳��� ����� �����մϴ�.");
								$("input#id").focus();
								return;
							}
							var id = $("input#id").val();
							$("input#idChk").val(false);
							window
									.open("/Cart/ClientCartJSP/idCheck.jsp?id="
											+ id + "&flag=company", "",
											'width=265, height=200, menubar=no, status=no, toolbar=no');
						});
	});
	function CheckFormData2(data) {
		if (/[a-zA-Z]/.test(data)) {
			if (/[0-9]/.test(data)) {
				return false;
			} else {
				return true;
			}
		} else {
			return true;
		}
	}
	function CheckFormData(data) {
		var numstr = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		var thischar;
		var count = 0;
		data = data.toUpperCase(data)
		for (var i = 0; i < data.length; i++) {
			thischar = data.substring(i, i + 1);
			if (numstr.indexOf(thischar) != -1) {
				count++;
			}
		}
		if (count == data.length) {
			return (true);
		} else {
			return (false);
		}
	}
</script>
</head>
<body background="/Cart/imges/con_bg.gif" text="black" link="blue" vlink="purple" alink="red" class="bg" oncontextmenu="return false" marginwidth="0" marginheight="0" onload="dateProcess()">
	<!-- Header -->
	<jsp:include page="/AdminCartJSP/include/header.jsp"></jsp:include>

	<!-- Content -->
	<form id="frm" name="frm" action="adminAdd.do?cmd=adminAdd" method="post">
		<table cellpadding="0" cellspacing="0" width="100%" style="table-layout: fixed">
			<tbody>
				<tr>
					<td valign="top">
						<table cellpadding="0" cellspacing="0" width="100%" style="table-layout: fixed">
							<tbody>
								<tr>
									<td>
										<table cellpadding="0" cellspacing="0" width="100%" style="table-layout: fixed" background="/Cart/imges/con_bg.gif">
											<colgroup>
												<col width="198">
												<col width="10">
												<col width="">
											</colgroup>
											<tbody>
												<tr>
													<td></td>
													<td valign="top">
														<table cellpadding="0" cellspacing="0" width="1500px">
															<tbody>
																<tr>
																	<td height="29" colspan="3"></td>
																</tr>
																<tr>
																	<td width="16" style="font-size: 0px; line-height: 0%;"></td>
																	<td background="/Cart/imges/con_t_01_bg.gif"></td>
																	<td width="16" style="font-size: 0px; line-height: 0%;"></td>
																</tr>
																<tr>
																	<td width="16" background="/Cart/imges/con_t_04_bg1.gif"></td>
																	<td bgcolor="#ffffff" style="padding: 10px">
																		<table cellpadding="0" cellspacing="0" width="100%">
																			<tbody>
																				<tr>
																					<td height="8"></td>
																				</tr>
																				<tr>
																					<td>
																						<table width="100%" border="0" cellpadding="0" cellspacing="0">
																							<tbody>
																								<tr>
																									<td>
																										<img src="/Cart/imges/vender_new_title.gif" alt="">
																									</td>
																								</tr>
																								<tr>
																									<td width="100%" background="/Cart/imges/title_bg.gif" height="21"></td>
																								</tr>
																							</tbody>
																						</table>
																					</td>
																				</tr>

																				<tr>
																					<td height="10"></td>
																				</tr>
																				<tr>
																					<td class="notice_blue">���θ��� ������ ��ü�� �űԷ� ����Ͻ� �� �ֽ��ϴ�.</td>
																				</tr>
																				<tr>
																					<td height="20"></td>
																				</tr>

																				<tr>
																					<td>
																						<table width="100%" border="0" cellpadding="0" cellspacing="0">
																							<tbody>
																								<tr>
																									<td>
																										<img src="/Cart/imges/vender_reg_stitle1.gif" alt="">
																									</td>
																									<td></td>
																								</tr>
																							</tbody>
																						</table>
																					</td>
																				</tr>
																				<tr>
																					<td height="3"></td>
																				</tr>
																				<tr>
																					<td>
																						<table cellspacing="0" cellpadding="0" width="100%" border="0" class="table_top">
																							<colgroup>
																								<col width="140">
																								<col width="">
																							</colgroup>
																							<tbody>
																								<tr>
																								</tr>
																								<!-- �Է� �ܰ� 1 -->
																								<tr>
																									<td class="table_cell">
																										<img src="/Cart/imges/icon_point2.gif" width="8" height="11" border="0">
																										��ü ID
																									</td>
																									<td class="td_con1">
																										<input type="text" name="id" id="id" value="" size="20" maxlength="12" class="input">
																										<input type="hidden" name="idChk" id="idChk" value="false" size="20" maxlength="12" class="input">
																										<a class="board_list" style="selector-dummy: true" onfocus="this.blur();" href="#">
																											<img src="/Cart/imges/duple_check_img.gif" border="0" align="absmiddle">
																										</a>
																										&nbsp;&nbsp;
																										<font class="font_orange">* ����, ���ڸ� ȥ���Ͽ� ���(4�� ~ 12��)</font>
																									</td>
																								</tr>
																								<tr>
																									<td class="table_cell">
																										<img src="/Cart/imges/icon_point2.gif" width="8" height="11" border="0">
																										�н�����
																									</td>
																									<td class="td_con1">
																										<input type="password" id="pw" name="pw" value="" size="20" maxlength="12" class="input">
																										&nbsp;&nbsp;
																										<font class="font_orange">* ����, ���ڸ� ȥ���Ͽ� ���(4�� ~ 12��)</font>
																									</td>
																								</tr>
																								<tr>
																									<td class="table_cell">
																										<img src="/Cart/imges/icon_point2.gif" width="8" height="11" border="0">
																										�н����� Ȯ��
																									</td>
																									<td class="td_con1">
																										<input type="password" id="pw2" name="pw2" value="" size="20" maxlength="12" class="input">
																										<span id="passcheck"></span>
																									</td>
																								</tr>
																							</tbody>
																						</table>
																					</td>
																				</tr>
																				<tr>
																					<td height="20"></td>
																				</tr>
																				<tr>
																					<td>
																						<table width="100%" border="0" cellpadding="0" cellspacing="0">
																							<tbody>
																								<tr>
																									<td>
																										<img src="/Cart/imges/vender_reg_stitle2.gif" alt="">
																									</td>
																									<td></td>
																								</tr>
																							</tbody>
																						</table>
																					</td>
																				</tr>
																				<tr>
																					<td height="3"></td>
																				</tr>
																				<tr>
																					<td>
																						<table cellspacing="0" cellpadding="0" width="100%" border="0" class="table_top">
																							<colgroup>
																								<col width="140">
																								<col width="">
																							</colgroup>
																							<tbody>
																								<tr>
																									<td class="table_cell">
																										<img src="/Cart/imges/icon_point2.gif" width="8" height="11" border="0">
																										��ȣ (ȸ���)
																									</td>
																									<td class="td_con1">
																										<input type="text" id="up_com_name" name="up_com_name" value="" size="20" maxlength="30" class="input">
																									</td>
																								</tr>
																								<tr>
																									<td class="table_cell">
																										<img src="/Cart/imges/icon_point5.gif" width="8" height="11" border="0">
																										��ǥ�� ����
																									</td>
																									<td class="td_con1">
																										<input id="up_com_owner" name="up_com_owner" value="" size="20" maxlength="12" class="input">
																									</td>
																								</tr>
																								<tr>
																									<td class="table_cell">
																										<img src="/Cart/imges/icon_point5.gif" width="8" height="11" border="0">
																										ȸ�� �ּ�
																									</td>
																									<td class="td_con1">
																										<input type="text" name="up_com_post1" id="up_com_post1" value="" size="5" maxlength="5" readonly="" class="input">
																										<a class="board_list hideFocus" style="selector-dummy: true" onfocus="this.blur();" href="javascript:addr_search_for_daumapi('up_com_post1','up_com_addr','');">
																											<img src="/Cart/imges/order_no_uimg.gif" border="0" align="absmiddle">
																										</a>
																										<br>
																										<input type="text" name="up_com_addr" id="up_com_addr" value="" size="80" maxlength="150" class="input">
																									</td>
																								</tr>

																								<tr>
																									<td class="table_cell">
																										<img src="/Cart/imges/icon_point5.gif" width="8" height="11" border="0">
																										����� ����
																									</td>
																									<td class="td_con1">
																										<input type="text" id="up_com_item" name="up_com_item" value="" size="30" maxlength="30" class="input">
																									</td>
																								</tr>
																								<tr>
																									<td class="table_cell">
																										<img src="/Cart/imges/icon_point2.gif" width="8" height="11" border="0">
																										ȸ�� ��ǥ��ȭ
																									</td>
																									<td class="td_con1">
																										<input type="text" id="up_com_tell" name="up_com_tell" value="" size="4" maxlength="4" style="width: 40" class="input">
																										-
																										<input type="text" id="up_com_tel2" name="up_com_tel2" value="" size="4" maxlength="4" style="width: 40" class="input">
																										-
																										<input type="text" id="up_com_tel3" name="up_com_tel3" value="" size="4" maxlength="4" style="width: 40" class="input">
																										<input type="hidden" id="up_com_tel_tot" name="up_com_tel_tot">
																									</td>
																								</tr>
																							</tbody>
																						</table>
																					</td>
																				</tr>
																				<tr>
																					<td height="20"></td>
																				</tr>
																				<tr>
																					<td>
																						<table width="100%" border="0" cellpadding="0" cellspacing="0">
																							<tbody>
																								<tr>
																									<td>
																										<img src="/Cart/imges/vender_reg_stitle3.gif" alt="">
																									</td>
																									<td></td>
																								</tr>
																							</tbody>
																						</table>
																					</td>
																				</tr>
																				<tr>
																					<td height="3"></td>
																				</tr>
																				<tr>
																					<td>
																						<table cellspacing="0" cellpadding="0" width="100%" border="0" class="table_top">
																							<colgroup>
																								<col width="140">
																								<col width="">
																							</colgroup>
																							<tbody>
																								<tr>
																									<td class="table_cell">
																										<img src="/Cart/imges/icon_point2.gif" width="8" height="11" border="0">
																										����� �̸�
																									</td>
																									<td class="td_con1">
																										<input type="text" id="up_p_name" name="up_p_name" value="" size="20" maxlength="20" class="input">
																										&nbsp;
																										<font class="font_orange">* ���� ����� �̸��� ��Ȯ�� �Է��ϼ���.</font>
																									</td>
																								</tr>
																								<tr>
																									<td class="table_cell">
																										<img src="/Cart/imges/icon_point2.gif" width="8" height="11" border="0">
																										����� �޴���ȭ
																									</td>
																									<td class="td_con1">
																										<input type="text" id="up_p_mobile1" name="up_p_mobile1" value="" size="4" maxlength="3" style="width: 40" class="input">
																										-
																										<input type="text" id="up_p_mobile2" name="up_p_mobile2" value="" size="4" maxlength="4" style="width: 40" class="input">
																										-
																										<input type="text" id="up_p_mobile3" name="up_p_mobile3" value="" size="4" maxlength="4" style="width: 40" class="input">
																										<input type="hidden" id="up_p_mobile_tot" name="up_p_mobile_tot">
																									</td>
																								</tr>
																							</tbody>
																						</table>
																					</td>
																				</tr>
																				<tr>
																					<td height="20"></td>
																				</tr>
																				<tr>
																					<td height="20"></td>
																				</tr>
																				<tr>
																					<td align="center">
																						<a href="#" id="adminAdd" name="adminAdd">
																							<img src="/Cart/imges/botteon_save.gif" width="113" height="38" border="0">
																						</a>
																					</td>
																				</tr>
																				<tr>
																					<td height="20"></td>
																				</tr>
																				<tr>
																					<td></td>
																					<td width="16" background="/Cart/imges/con_t_02_bg.gif"></td>
																				</tr>
																				<tr>
																					<td width="16" style="font-size: 0px; line-height: 0%;"></td>
																					<td background="/Cart/imges/con_t_04_bg.gif"></td>
																					<td width="16" style="font-size: 0px; line-height: 0%;"></td>
																				</tr>
																				<tr>
																					<td height="20"></td>
																				</tr>
																			</tbody>
																		</table>
																	</td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
	</form>

	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script charset="UTF-8" type="text/javascript" src="http://s1.daumcdn.net/svc/attach/U03/cssjs/postcode/1495012223804/170517.js"></script>
	<script charset="UTF-8" type="text/javascript" src="http://s1.daumcdn.net/svc/attach/U03/cssjs/postcode/1495012223804/170517.js"></script>
	<script charset="UTF-8" type="text/javascript" src="http://s1.daumcdn.net/svc/attach/U03/cssjs/postcode/1495012223804/170517.js"></script>
	<script type="text/javascript">
		function addr_search_for_daumapi(post, addr1, addr2) {
			new daum.Postcode({
				oncomplete : function(data) {
					// �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.
					// �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
					// �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
					var fullAddr = ''; // ���� �ּ� ����
					var extraAddr = ''; // ������ �ּ� ����
					// ����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
					if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���
						fullAddr = data.roadAddress;
					} else { // ����ڰ� ���� �ּҸ� �������� ���(J)
						fullAddr = data.jibunAddress;
					}
					// ����ڰ� ������ �ּҰ� ���θ� Ÿ���϶� �����Ѵ�.
					if (data.userSelectedType === 'R') {
						//���������� ���� ��� �߰��Ѵ�.
						if (data.bname !== '') {
							extraAddr += data.bname;
						}
						// �ǹ����� ���� ��� �߰��Ѵ�.
						if (data.buildingName !== '') {
							extraAddr += (extraAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// �������ּ��� ������ ���� ���ʿ� ��ȣ�� �߰��Ͽ� ���� �ּҸ� �����.
						fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')'
								: '');
					}
					// �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
					document.getElementById(post).value = data.zonecode; //5�ڸ� �������ȣ ���
					document.getElementById(addr1).value = fullAddr;
					// Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
					if (addr2 != "") {
						document.getElementById(addr2).focus();
					}
				}
			}).open();
		}
	</script>

	<!-- Footer -->
	<jsp:include page="/AdminCartJSP/include/footer.jsp"></jsp:include>
</body>
</html>