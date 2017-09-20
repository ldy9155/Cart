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
<title>마이 페이지</title>
</head>
<body>
	<center>
		<c:import url="/ClientCartJSP/include/header.jsp"></c:import>
		<div class="wrap" style="width: 1200px">
			<div class="fullsizeMargin">
				<c:import url="/ClientCartJSP/include/left.jsp"></c:import>
				<div class="wrapContent" style="width: 970px">
					<br>
					<div class="subpageTitle">마이페이지</div>

					<!-- 마이페이지 상단 메뉴 START -->
					<div class="mypagemembergroup">
						<div class="groupinfotext">
							안녕하세요?
							<strong class="st1">${member.mname }</strong>
							님. 회원님의 등급은
							<strong class="st2">${member.mgrade }</strong>
							입니다.
						</div>
					</div>
					<table border="0" cellpadding="0" cellspacing="1" class="mypagetmenu">
						<tbody>
							<tr>
								<td class="nowMyPage">
									<a href="#">마이페이지</a>
								</td>
								<td>
									<a href="#">회원정보</a>
								</td>
								<td>
									<a href="#">회원탈퇴</a>
								</td>
							</tr>
						</tbody>
					</table>
					<!-- 마이페이지 상단 메뉴 END -->

					<table cellpadding="0" cellspacing="0" width="100%" border="0">
						<tbody>
							<tr>
								<td>
									<!-- 회원정보 BOX START -->
									<table border="0" cellpadding="0" cellspacing="0" width="100%">
										<tbody>
											<tr>
												<td style="background: #eeeeee; padding: 8px;">
													<table border="0" cellpadding="0" cellspacing="0" width="100%" style="background: #ffffff;">
														<tbody>
															<tr>
																<td valign="top" style="padding: 20px 25px; border-bottom: 1px solid #eeeeee;">
																	<!-- 내 쇼핑 기본정보 START -->
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
																									<b>나의 정보</b>
																									<img src="/Cart/imges/mypage_mem_icon03.gif" border="0">
																								</td>
																							</tr>
																							<tr>
																								<td></td>
																							</tr>
																							<tr>
																								<td style="font-weight: bold;">· 전화번호</td>
																								<td width="20" align="center" style="font-size: 11px;">:</td>
																								<td>${member.mphone }</td>
																							</tr>
																							<tr>
																								<td style="font-weight: bold;">· 이메일</td>
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
																	<!-- 내 쇼핑 기본정보 END -->
																</td>
															</tr>
															<tr>
																<td valign="top" style="padding: 20px 25px;">
																	<!-- 적립금/쿠폰/상품권 번호인증 START -->
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
																									<b>· 적립금</b>
																									<a href="../front/mypage_reserve.php">
																										<img src="/Cart/imges/mypage_mem_icon03.gif" border="0" align="absmiddle">
																									</a>
																								</td>
																							</tr>
																							<tr>
																								<td class="mypage_mem_info">${member.mpoint }원</td>
																							</tr>
																							<tr>
																								<td height="25" valign="bottom">
																									<a href="../front/mypage_reserve.php">
																										<img src="/Cart/imges/mypage_mem_icon05.gif" border="0" alt="자세히보기">
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
																									<b>· 쿠폰</b>
																									<a href="../front/mypage_coupon.php">
																										<img src="/Cart/imges/mypage_mem_icon03.gif" border="0">
																									</a>
																								</td>
																							</tr>
																							<tr>
																								<td class="mypage_mem_info">0장</td>
																							</tr>
																							<tr>
																								<td height="25" valign="bottom">
																									<a href="../front/mypage_coupon.php">
																										<img src="/Cart/imges/mypage_mem_icon05.gif" border="0" alt="자세히보기">
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
																									<b>· 상품권</b>
																									<img src="/Cart/imges/mypage_mem_icon03.gif" border="0">
																								</td>
																							</tr>
																							<tr>
																								<td>
																									<a href="#">
																										<img src="/Cart/imges/mypage_mem_icon04.gif" border="0" alt="인증하기">
																									</a>
																								</td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																	<!-- 적립금/쿠폰/상품권 번호인증 END -->
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
																	<!-- 회원등급 및 추가할인/적립안내 START -->
																	<table border="0" cellpadding="0" cellspacing="0">
																		<tbody>
																			<tr>
																				<td>
																					<img src="/Cart/imges/mypage_mem_icon01.gif">
																				</td>
																				<td width="16"></td>
																				<td style="letter-spacing: -0.5px; padding-right: 20px;">
																					<div class="mypage_list_title">
																						<b>회원등급 정보</b>
																						<img src="/Cart/imges/mypage_mem_icon03.gif" border="0">
																					</div>
																					<b>${member.mname }</b>
																					님의 회원등급은 [
																					<b>
																						<font color="#ff6600">${member.mgrade }</font>
																					</b>
																					] 입니다.
																					<br>
																					<span style="line-height: 15px; letter-spacing: -0.5px;">
																						${member.mname }님이
																						<b>
																							<font color="#ff6600">0원</font>
																						</b>
																						이상 구매시
																						<b>
																							<font color="#3f77ca">0</font>
																						</b>
																						원을
																						<b>추가적립</b>
																						해 드립니다.
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
																	<!-- 회원등급 및 추가할인/적립안내 END -->
																</td>

																<td valign="top" style="padding: 20px 30px;">
																	<!-- SNS 채널관리 START -->
																	<table cellpadding="0" cellspacing="0" border="0" width="100%">
																		<tbody>
																			<tr>
																				<td colspan="3">
																					<div class="mypage_list_title">
																						<b>SNS 채널관리</b>
																						<img src="/Cart/imges/mypage_mem_icon03.gif" border="0">
																					</div>
																				</td>
																			</tr>

																			<tr>
																				<td style="letter-spacing: -1px;">
																					<b>·</b>
																					내 URL 주소 :
																					<font style="letter-spacing: 0px;">http://demo2.getmall.kr/?token=80613</font>
																					<br>
																					<b>·</b>
																					내 URL 신규 회원가입 :
																					<strong style="letter-spacing: 0px;">0</strong>
																					명 [적립금 보너스 :
																					<strong style="letter-spacing: 0px;">4000</strong>
																					원]
																				</td>
																			</tr>
																			<tr>
																				<td style="color: #999999; padding-left: 8px;"></td>
																			</tr>
																		</tbody>
																	</table>
																	<!-- SNS 채널관리 END -->
																</td>
															</tr>
															<tr>
																<td colspan="2" style="padding: 20px; border-top: 1px solid #eeeeee;">
																	<table width="100%" cellpadding="0" cellspacing="0" border="0">
																		<tbody>
																			<tr>
																				<td>
																					<div class="mypage_list_title">
																						<b>등급 추가정보</b>
																						<img src="/Cart/imges/mypage_mem_icon03.gif" border="0">
																					</div>
																					<div style="background: #f5f5f5; height: 30px; line-height: 30px; border: 1px solid #e8e8e8; padding-left: 10px; color: #666666;">
																						<span style="color: #339c09; font-weight: bold;">실버</span>
																						회원까지 남은 구매금액 :
																						<span style="color: #333333; font-weight: bold;">100,000원</span>
																						&nbsp;|&nbsp; 남은 구매건수 :
																						<span style="color: #ff4400; font-weight: bold;">0건</span>
																					</div>

																					<ul style="line-height: 16px; margin-top: 5px;">
																						<li style="width: 100%;">
																							<b>·</b>
																							구매기간(누적구매금액 산정기간) :
																							<span style="color: #333333;">2017.01.01 ~ 2020.02.01</span>
																						</li>
																						<li style="width: 100%;">
																							<b>·</b>
																							구매건수 :
																							<span style="color: #333333;">0건</span>
																						</li>
																						<li style="width: 100%;">
																							<b>·</b>
																							등급유지기간 :
																							<span style="color: #333333;">12개월</span>
																						</li>
																						<li style="width: 100%;">
																							<b>·</b>
																							구매금액 :
																							<span style="color: #333333;">0원</span>
																							(발송완료시 업데이트 됩니다.)
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