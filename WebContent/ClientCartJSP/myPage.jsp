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
<title>���� ������</title>
</head>
<body>
	<center>
		<c:import url="/ClientCartJSP/include/header.jsp"></c:import>
		<div class="wrap" style="width: 1200px">
			<div class="fullsizeMargin">
				<c:import url="/ClientCartJSP/include/left.jsp"></c:import>
				<div class="wrapContent" style="width: 970px">
					<br>
					<div class="subpageTitle">����������</div>

					<!-- ���������� ��� �޴� START -->
					<div class="mypagemembergroup">
						<div class="groupinfotext">
							�ȳ��ϼ���?
							<strong class="st1">${member.mname }</strong>
							��. ȸ������ �����
							<strong class="st2">${member.mgrade }</strong>
							�Դϴ�.
						</div>
					</div>
					<table border="0" cellpadding="0" cellspacing="1" class="mypagetmenu">
						<tbody>
							<tr>
								<td class="nowMyPage">
									<a href="#">����������</a>
								</td>
								<td>
									<a href="#">ȸ������</a>
								</td>
								<td>
									<a href="#">ȸ��Ż��</a>
								</td>
							</tr>
						</tbody>
					</table>
					<!-- ���������� ��� �޴� END -->

					<table cellpadding="0" cellspacing="0" width="100%" border="0">
						<tbody>
							<tr>
								<td>
									<!-- ȸ������ BOX START -->
									<table border="0" cellpadding="0" cellspacing="0" width="100%">
										<tbody>
											<tr>
												<td style="background: #eeeeee; padding: 8px;">
													<table border="0" cellpadding="0" cellspacing="0" width="100%" style="background: #ffffff;">
														<tbody>
															<tr>
																<td valign="top" style="padding: 20px 25px; border-bottom: 1px solid #eeeeee;">
																	<!-- �� ���� �⺻���� START -->
																	<table border="0" cellpadding="0" cellspacing="0" width="100%">
																		<tbody>
																			<tr>
																				<td width="80">
																					<img src="/Cart/imges/myinfo_tit.gif" alt="">
																				</td>
																				<td valign="top">
																					<table width="96%" cellpadding="0" cellspacing="0" border="0">
																						<tbody>
																							<tr>
																								<td height="20" valign="top" colspan="3" class="mypage_list_title">
																									<b>���� ����</b>
																									<img src="/Cart/imges/mypage_mem_icon03.gif" border="0">
																								</td>
																							</tr>
																							<tr>
																								<td></td>
																							</tr>
																							<tr>
																								<td style="font-weight: bold;">�� ��ȭ��ȣ</td>
																								<td width="20" align="center" style="font-size: 11px;">:</td>
																								<td>${member.mphone }</td>
																							</tr>
																							<tr>
																								<td style="font-weight: bold;">�� �̸���</td>
																								<td width="20" align="center" style="font-size: 11px;">:</td>
																								<td>
																									<a href="mailto:${member.memail }">${member.memail }</a>
																								</td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																	<!-- �� ���� �⺻���� END -->
																</td>
															</tr>
															<tr>
																<td valign="top" style="padding: 20px 25px;">
																	<!-- ������/����/��ǰ�� ��ȣ���� START -->
																	<table border="0" cellpadding="0" cellspacing="0" width="100%">
																		<tbody>
																			<tr>
																				<td width="80">
																					<img src="/Cart/imges/mypoint_tit.gif" alt="">
																				</td>
																				<td style="border-right: 1px solid #eeeeee;">
																					<table border="0" cellpadding="0" cellspacing="0">
																						<tbody>
																							<tr>
																								<td height="20" valign="top" class="mypage_list_title">
																									<b>�� ������</b>
																									<a href="../front/mypage_reserve.php">
																										<img src="/Cart/imges/mypage_mem_icon03.gif" border="0" align="absmiddle">
																									</a>
																								</td>
																							</tr>
																							<tr>
																								<td class="mypage_mem_info">${member.mpoint }��</td>
																							</tr>
																							<tr>
																								<td height="25" valign="bottom">
																									<a href="../front/mypage_reserve.php">
																										<img src="/Cart/imges/mypage_mem_icon05.gif" border="0" alt="�ڼ�������">
																									</a>
																								</td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																				<td width="80" style="padding-left: 20px;">
																					<img src="/Cart/imges/mycoupon_tit.gif" alt="">
																				</td>
																				<td valign="top" style="border-right: 1px solid #eeeeee;">
																					<table border="0" cellpadding="0" cellspacing="0">
																						<tbody>
																							<tr>
																								<td height="20" valign="top" class="mypage_list_title">
																									<b>�� ����</b>
																									<a href="../front/mypage_coupon.php">
																										<img src="/Cart/imges/mypage_mem_icon03.gif" border="0">
																									</a>
																								</td>
																							</tr>
																							<tr>
																								<td class="mypage_mem_info">0��</td>
																							</tr>
																							<tr>
																								<td height="25" valign="bottom">
																									<a href="../front/mypage_coupon.php">
																										<img src="/Cart/imges/mypage_mem_icon05.gif" border="0" alt="�ڼ�������">
																									</a>
																								</td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																				<td width="80" style="padding-left: 20px;">
																					<img src="/Cart/imges/mygiftcard_tit.gif" alt="">
																				</td>
																				<td valign="top">
																					<table border="0" cellpadding="0" cellspacing="0">
																						<tbody>
																							<tr>
																								<td height="20" valign="top" class="mypage_list_title">
																									<b>�� ��ǰ��</b>
																									<img src="/Cart/imges/mypage_mem_icon03.gif" border="0">
																								</td>
																							</tr>
																							<tr>
																								<td>
																									<a href="#">
																										<img src="/Cart/imges/mypage_mem_icon04.gif" border="0" alt="�����ϱ�">
																									</a>
																								</td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																	<!-- ������/����/��ǰ�� ��ȣ���� END -->
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<tr>
												<td>
													<table border="0" cellpadding="0" cellspacing="0" width="100%" style="margin: 20px 0px; border: 1px solid #eeeeee;">
														<tbody>
															<tr>
																<td width="50%" valign="top" style="padding: 20px 30px; border-right: 1px solid #eeeeee;">
																	<!-- ȸ����� �� �߰�����/�����ȳ� START -->
																	<table border="0" cellpadding="0" cellspacing="0">
																		<tbody>
																			<tr>
																				<td>
																					<img src="/Cart/imges/mypage_mem_icon01.gif">
																				</td>
																				<td width="16"></td>
																				<td style="letter-spacing: -0.5px; padding-right: 20px;">
																					<div class="mypage_list_title">
																						<b>ȸ����� ����</b>
																						<img src="/Cart/imges/mypage_mem_icon03.gif" border="0">
																					</div>
																					<b>${member.mname }</b>
																					���� ȸ������� [
																					<b>
																						<font color="#ff6600">${member.mgrade }</font>
																					</b>
																					] �Դϴ�.
																					<br>
																					<span style="line-height: 15px; letter-spacing: -0.5px;">
																						${member.mname }����
																						<b>
																							<font color="#ff6600">0��</font>
																						</b>
																						�̻� ���Ž�
																						<b>
																							<font color="#3f77ca">0</font>
																						</b>
																						����
																						<b>�߰�����</b>
																						�� �帳�ϴ�.
																					</span>
																					<div style="margin-top: 5px; font-size: 0px;">
																						<a href="/front/mypage_usermodify.php">
																							<img src="/Cart/imges/btn_memedit.gif" border="0" alt="">
																						</a>
																						<span style="padding: 0px 1px;"></span>
																						<a href="/front/mypage_personal.php">
																							<img src="/Cart/imges/btn_myqna.gif" border="0" alt="">
																						</a>
																					</div>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																	<!-- ȸ����� �� �߰�����/�����ȳ� END -->
																</td>

																<td valign="top" style="padding: 20px 30px;">
																	<!-- SNS ä�ΰ��� START -->
																	<table cellpadding="0" cellspacing="0" border="0" width="100%">
																		<tbody>
																			<tr>
																				<td colspan="3">
																					<div class="mypage_list_title">
																						<b>SNS ä�ΰ���</b>
																						<img src="/Cart/imges/mypage_mem_icon03.gif" border="0">
																					</div>
																				</td>
																			</tr>

																			<tr>
																				<td style="letter-spacing: -1px;">
																					<b>��</b>
																					�� URL �ּ� :
																					<font style="letter-spacing: 0px;">http://demo2.getmall.kr/?token=80613</font>
																					<br>
																					<b>��</b>
																					�� URL �ű� ȸ������ :
																					<strong style="letter-spacing: 0px;">0</strong>
																					�� [������ ���ʽ� :
																					<strong style="letter-spacing: 0px;">4000</strong>
																					��]
																				</td>
																			</tr>
																			<tr>
																				<td style="color: #999999; padding-left: 8px;"></td>
																			</tr>
																		</tbody>
																	</table>
																	<!-- SNS ä�ΰ��� END -->
																</td>
															</tr>
															<tr>
																<td colspan="2" style="padding: 20px; border-top: 1px solid #eeeeee;">
																	<table width="100%" cellpadding="0" cellspacing="0" border="0">
																		<tbody>
																			<tr>
																				<td>
																					<div class="mypage_list_title">
																						<b>��� �߰�����</b>
																						<img src="/Cart/imges/mypage_mem_icon03.gif" border="0">
																					</div>
																					<div style="background: #f5f5f5; height: 30px; line-height: 30px; border: 1px solid #e8e8e8; padding-left: 10px; color: #666666;">
																						<span style="color: #339c09; font-weight: bold;">�ǹ�</span>
																						ȸ������ ���� ���űݾ� :
																						<span style="color: #333333; font-weight: bold;">100,000��</span>
																						&nbsp;|&nbsp; ���� ���ŰǼ� :
																						<span style="color: #ff4400; font-weight: bold;">0��</span>
																					</div>

																					<ul style="line-height: 16px; margin-top: 5px;">
																						<li style="width: 100%;">
																							<b>��</b>
																							���űⰣ(�������űݾ� �����Ⱓ) :
																							<span style="color: #333333;">2017.01.01 ~ 2020.02.01</span>
																						</li>
																						<li style="width: 100%;">
																							<b>��</b>
																							���ŰǼ� :
																							<span style="color: #333333;">0��</span>
																						</li>
																						<li style="width: 100%;">
																							<b>��</b>
																							��������Ⱓ :
																							<span style="color: #333333;">12����</span>
																						</li>
																						<li style="width: 100%;">
																							<b>��</b>
																							���űݾ� :
																							<span style="color: #333333;">0��</span>
																							(�߼ۿϷ�� ������Ʈ �˴ϴ�.)
																						</li>
																					</ul>
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
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<c:import url="/ClientCartJSP/include/footer.jsp"></c:import>
	</center>
</body>
</html>