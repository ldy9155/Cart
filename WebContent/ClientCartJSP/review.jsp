<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>����ı� ��ü����</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script type="text/javascript" src="/Cart/CartJS/lib.js.php"></script>
<script type="text/javascript" src="/Cart/CartJS/drag.js.php"></script>
<script type="text/javascript" src="/Cart/CartJS/DropDown.js.php"></script>
<script type="text/javascript" src="/Cart/CartJS/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="/Cart/CartJS/jquery.slides.min.js"></script>
<script type="text/javascript">
	var $j = jQuery.noConflict();
</script>
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/style.css">
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/style2.css">
<link rel="stylesheet" type="text/css"
	href="/Cart/CartCSS/user_style.css">
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
	<center>

		<c:import url="/ClientCartJSP/include/header.jsp"></c:import>

		<div class="wrap" style="width: 1200px">
			<div class="fullsizeMargin">

				<c:import url="/ClientCartJSP/include/left.jsp"></c:import>

				<!-- ���κ��� ������ : START -->
				<div class="wrapContent" style="width: 970px">
					<div class="subpageTitle">����ı�</div>
					<table border="0" cellpadding="0" cellspacing="0" width="100%">
						<form name="form1" action="/front/reviewall.php" method="post"></form>
						<input type="hidden" name="code" value="">
						<input type="hidden" name="sort" value="0">
						<input type="hidden" name="listnum" value="8">
						<tbody>
							<tr>
								<td align="center">
									<table cellpadding="0" cellspacing="0" width="100%"
										style="table-layout: fixed">
										<tbody>
											<tr>
												<td></td>
											</tr>
											<tr>
												<td>
													<table cellpadding="0" cellspacing="0" width="100%"
														style="table-layout: fixed">
														<tbody>
															<tr>
																<td><table border="0" cellpadding="0"
																		cellspacing="0" width="100%">
																		<tbody>
																			<tr>
																				<td>
																					<table border="0" cellpadding="0" cellspacing="0"
																						width="100%" class="reviewTypeTab">
																						<tbody>
																							<tr>
																								<td><a
																									href="javascript:reviewSelect('all');"
																									class="reviewbutton tabOn"><span>��ü��ǰ��</span></a>
																								</td>
																								<td align="right"><select name="sort"
																									onchange="change_sort(options.value)"
																									class="select">
																										<option value="0" selected="">�ֱٵ�ϼ�</option>
																										<option value="1">����������</option>
																								</select> &nbsp; <select name="listnum"
																									onchange="change_listnum(options.value)"
																									class="select">
																										<option value="10">10���� ����</option>
																										<option value="20">20���� ����</option>
																										<option value="30">30���� ����</option>
																										<option value="40">40���� ����</option>
																								</select></td>
																							</tr>
																						</tbody>
																					</table>
																					<table border="0" cellpadding="0" cellspacing="0"
																						width="100%" style="table-layout: fixed">
																						<colgroup>
																							<col width="40">
																							<col width="80">
																							<col width="1">
																							<col width="">
																							<col width="80">
																							<col width="80">
																							<col width="80">
																						</colgroup>
																						<tbody>
																							<tr>
																								<td height="2"
																									background="../images/common/review/reviewall_line1.gif"
																									colspan="7"></td>
																							</tr>
																							<tr height="40" align="center" bgcolor="#F8F8F8"
																								style="letter-spacing: -0.5pt;">
																								<td><font color="#333333"><b>��ȣ</b></font></td>
																								<td><font color="#333333"><b>�̹���</b></font></td>
																								<td></td>
																								<td><font color="#333333"><b>��ǰ��/����ı�</b></font></td>
																								<td><font color="#333333"><b>�ۼ���</b></font></td>
																								<td><font color="#333333"><b>�ۼ���</b></font></td>
																								<td><font color="#333333"><b>����</b></font></td>
																							</tr>
																							<tr>
																								<td height="1"
																									background="../images/common/review/reviewall_line2.gif"
																									colspan="7"></td>
																							</tr>
																							<tr id="A003000000000000002"
																								onmouseover="quickfun_show(this,'A003000000000000002','','row')"
																								onmouseout="quickfun_show(this,'A003000000000000002','none')">
																								<td
																									style="color: #333333; padding-bottom: 3pt; padding-top: 3pt; line-height: 18px;"
																									align="center">4</td>
																								<td
																									style="color: #333333; padding-bottom: 3pt; padding-top: 3pt; line-height: 18px;"
																									align="center"><img
																									src="../data/shopimages/product/0030000000000000023.jpg"
																									border="0" width="55"></td>
																								<td style="position: relative;">
																									<div id="idxqf_A003000000000000002"
																										style="position: absolute; top: -17px; z-index: 100; cursor: pointer; left: -25px; display: none;">
																									</div>
																								</td>
																								<td
																									style="color: #333333; padding-bottom: 3pt; padding-top: 3pt; line-height: 18px;">
																									<table border="0" cellpadding="0"
																										cellspacing="0" width="100%">
																										<tbody>
																											<tr>
																												<td style="padding-left: 5"><a
																													href="javascript:review_open('003000000000000002',2)"><font
																														color="#373737"><b>���� ���۶�
																																&amp; ���డ��</b></font></a> <a
																													href="../front/productdetail.php?productcode=003000000000000002"
																													onmouseover="window.status='��ǰ����ȸ';return true;"
																													onmouseout="window.status='';return true;"><img
																														src="../images/common/review/btn_reviewprview.gif"
																														border="0" align="absmiddle"></a></td>
																											</tr>
																											<tr style="height: 10px;"></tr>
																											<tr>
																												<td style="padding-left: 5; padding-top: 5"><a
																													href="javascript:review_open('003000000000000002',2)">��
																														�޾ҽ��ϴ�</a></td>
																											</tr>
																										</tbody>
																									</table>
																								</td>
																								<td
																									style="color: #333333; padding-bottom: 3pt; padding-top: 3pt; line-height: 18px;"
																									align="center">���ƿ�</td>
																								<td
																									style="color: #333333; padding-bottom: 3pt; padding-top: 3pt; line-height: 18px;"
																									align="center">2017/04/26</td>
																								<td
																									style="color: #333333; padding-bottom: 3pt; padding-top: 3pt; line-height: 18px;"
																									align="center"><font color="#000000">��</font><font
																									color="#000000">��</font><font color="#000000">��</font><font
																									color="#000000">��</font><font color="#000000">��</font>
																								</td>
																							</tr>
																							<tr>
																								<td height="1"
																									background="../images/common/review/reviewall_line2.gif"
																									colspan="7"></td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																			</tr>
																		</tbody>
																	</table></td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<tr>
												<td height="20"></td>
											</tr>
											<tr>
												<td><table border="0" cellpadding="0" cellspacing="0"
														width="100%">
														<tbody>
															<tr>
																<td align="center"><font color="red"><b>1</b></font>
																</td>
															</tr>
														</tbody>
													</table></td>
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
				</div>
			</div>
		</div>

		<c:import url="/ClientCartJSP/include/footer.jsp"></c:import>

	</center>
</body>
</html>