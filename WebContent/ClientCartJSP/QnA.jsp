<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>������ �亯</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/style.css">
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/style2.css">
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/user_style.css">
<script type="text/javascript" src="/Cart/CartJS/lib.js.php"></script>
<script type="text/javascript" src="/Cart/CartJS/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="/Cart/CartJS/sns.js"></script>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
	<center>
	
		<c:import url="/ClientCartJSP/include/header.jsp"></c:import>
		
		<div class="wrap" style="width: 1200px">
			<div class="fullsizeMargin">

				<c:import url="/ClientCartJSP/include/left.jsp"></c:import>
				<!-- ���κ��� ������ : START -->
				<div class="wrapContent" style="width: 970px">

					<table border="0" cellpadding="0" cellspacing="0" width="100%">
						<tbody>
							<tr>
								<td align="center">
									<!-- �Խ��� Ÿ��Ʋ �� �ٷΰ��� ��ũ -->
									<table cellpadding="0" cellspacing="0" width="100%" style="table-layout: fixed;margin-top: 30px;">
										<tbody>
											<tr>
												<td><div class="subpageTitle">������ �亯</div></td>
											</tr>
										</tbody>
									</table>
									<table cellpadding="0" cellspacing="0" width="100%"
										style="table-layout: fixed">
										<tbody>
											<tr>
												<td align="right" style="padding-bottom: 5px;"></td>
											</tr>
										</tbody>
									</table>
									<table cellpadding="0" cellspacing="0" width="100%">
										<tbody>
											<tr>
												<td>
													<table cellpadding="0" cellspacing="8" width="100%"
														bgcolor="#E8E8E8">
														<tbody>
															<tr>
																<td background="/Cart/imges/board_qna_tbg.gif"
																	bgcolor="#FFFFFF" style="padding: 8px;">
																	<table cellpadding="0" cellspacing="0" width="100%"
																		style="table-layout: fixed">
																		<colgroup>
																			<col width="70">
																			<col width="15">
																			<col width="">
																			<col width="135">
																		</colgroup>
																		<tbody>
																			<tr>
																				<td><a
																					href="../front/productdetail.php?productcode=009000000000000003"
																					onmouseover="window.status='��ǰ����ȸ';return true;"
																					onmouseout="window.status='';return true;"><img
																						src="/Cart/imges/0090000000000000033.jpg"
																						border="0" width="70"></a></td>
																				<td></td>
																				<td>
																					<table cellpadding="0" cellspacing="0" width="100%"
																						style="table-layout: fixed">
																						<colgroup>
																							<col width="60">
																							<col width="10">
																						</colgroup>
																						<tbody>
																							<tr>
																								<td>��ǰ��</td>
																								<td align="center">:</td>
																								<td><a
																									href="../front/productdetail.php?productcode=009000000000000003"
																									onmouseover="window.status='��ǰ����ȸ';return true;"
																									onmouseout="window.status='';return true;"><font
																										class="prname">��� �������־� ��������</font></a></td>
																							</tr>
																							<tr>
																								<td>��ǰ����</td>
																								<td align="center">:</td>
																								<td><font class="prprice"> <img
																										src="/Cart/imges/won_icon.gif" border="0"
																										align="absmiddle">48,000��
																								</font></td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																				<td align="right"><a
																					href="../front/productdetail.php?productcode=009000000000000003"
																					onmouseover="window.status='��ǰ����ȸ';return true;"
																					onmouseout="window.status='';return true;"><img
																						src="/Cart/imges/board_qna_btn03.gif" border="0"></a></td>
																			</tr>
																		</tbody>
																	</table>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<tr>
												<td height="10"></td>
											</tr>
										</tbody>
									</table>

									<table cellspacing="0" cellpadding="0" width="100%" border="0">
										<tbody>
											<tr>
												<td>
													<form name="fileform" method="post">
														<input type="hidden" name="board" value="qna"> <input
															type="hidden" name="max_filesize" value="204800">
														<input type="hidden" name="btype" value="L">
													</form>

													<form name="writeForm" method="post"
														action="/board/board.php" enctype="multipart/form-data">
														<input type="hidden" name="mode" value=""> <input
															type="hidden" name="up_html" value="1"> <input
															type="hidden" name="pagetype" value="write"> <input
															type="hidden" name="exec" value="write"> <input
															type="hidden" name="num" value=""> <input
															type="hidden" name="board" value="qna"> <input
															type="hidden" name="s_check" value=""> <input
															type="hidden" name="search" value=""> <input
															type="hidden" name="block" value=""> <input
															type="hidden" name="gotopage" value=""> <input
															type="hidden" name="pridx" value="122"> <input
															type="hidden" name="pos" value=""> <input
															type="hidden" name="up_is_secret" value="">

														<table cellspacing="0" cellpadding="0" bgcolor="#F6F6F6"
															class="tblWrite">
															<colgroup>
																<col width="15%">
																<col width="35%">
																<col width="15%">
																<col width="35%">
															</colgroup>
															<tbody>
																<tr>
																	<th>��ݱ��</th>
																	<td colspan="3"><select name="tmp_is_secret">
																			<option value="0">������</option>
																			<option value="1">��ݻ��</option>
																	</select></td>
																</tr>

																<tr>
																	<th>�ۼ���</th>
																	<td><input type="text" name="up_name" value=""
																		size="13" maxlength="20"
																		style="BACKGROUND-COLOR: #F7F7F7; width: 160px"
																		class="input"></td>
																	<th>��й�ȣ</th>
																	<td><input type="password" name="up_passwd"
																		value="" size="13" maxlength="20"
																		style="BACKGROUND-COLOR: #F7F7F7; width: 160px"
																		class="input"></td>
																</tr>

																<tr>
																	<th>�̸���</th>
																	<td colspan="3"><input type="text" name="up_email"
																		value="" size="49" maxlength="60"
																		style="BACKGROUND-COLOR: #F7F7F7; width: 240px"
																		class="input"> <font color="#FF4C00"
																		style="font-size: 11px; letter-spacing: -0.5pt;">*
																			�亯�� ������ E-mail�� �Է��ϼ���.</font></td>
																</tr>
																
																<tr>
																	<th>���Ӹ�</th>
																	<td colspan="3"><select name="subCategory"
																		onchange="changeTitle()"><option value="">-
																				���� -</option>
																			<option value="��ǰ����">��ǰ����</option>
																			<option value="��۰���">��۰���</option>
																			<option value="�ֹ�����">�ֹ�����</option>
																			<option value="��ȯ.��ǰ">��ȯ.��ǰ</option>
																			<option value="ȸ��">ȸ��</option>
																			<option value="����">����</option>
																			<option value="��Ÿ">��Ÿ</option></select>
																	</td>
																</tr>

																<tr>
																	<th>������</th>
																	<td colspan="3">
																		<input type="text" name="up_subject" value="" size="70" maxlength="200" class="input" style="BACKGROUND-COLOR: #F7F7F7; width: 40%">
																	</td>
																</tr>

																<tr>
																	<th>�۳���</th>
																	<td colspan="3">
																		<textarea name="up_memo" lang="ej-editor3" style="width: 80%; height: 200px; padding: 3px; line-height: 17px; font-size: 12px; color: rgb(153, 153, 153); font-family: gulim; border: 1px solid rgb(221, 221, 221); background: rgb(255, 255, 255); display: inline;"></textarea>
																	</td>
																</tr>


																<tr>
																	<th>÷������</th>
																	<td colspan="3" style="padding-top: 3px;">
																		<input type="file">
																	</td>
																</tr>
															</tbody>
														</table>
													</form>

													<div style="margin-top: 10px; text-align: center;">
														<img src="/Cart/imges/butt-ok.gif" border="0" style="cursor: pointer;" onclick="chk_writeForm(document.writeForm);"> 
														<img src="/Cart/imges/butt-cancel.gif" border="0" style="cursor: pointer;" onclick="history.go(-1);">
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</td>
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