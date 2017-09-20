<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>질문과 답변</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/style.css">
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/style2.css">
<link rel="stylesheet" type="text/css"
	href="/Cart/CartCSS/user_style.css">
<script type="text/javascript" src="/Cart/CartJS/lib.js.php"></script>
<script type="text/javascript" src="/Cart/CartJS/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
	var $j = jQuery.noConflict();
</script>
<script type="text/javascript" src="/Cart/CartJS/sns.js"></script>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
	<center>
		<c:import url="/ClientCartJSP/include/header.jsp"></c:import>

		<div class="wrap" style="width: 1200px">
			<div class="fullsizeMargin">

				<c:import url="/ClientCartJSP/include/left.jsp"></c:import>

				<!-- 메인본문 디자인 : START -->
				<div class="wrapContent" style="width: 970px">

					<table border="0" cellpadding="0" cellspacing="0" width="100%">
						<tbody>
							<tr>
								<td align="center">
									<!-- 게시판 타이틀 및 바로가기 링크 -->
									<table cellpadding="0" cellspacing="0" width="100%"
										style="table-layout: fixed">
										<tbody>
											<tr>
												<td><div class="subpageTitle">질문과 답변</div></td>
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
									<table border="0" cellpadding="0" cellspacing="0" width="100%">
										<tbody>
											<tr>
												<td bgcolor="#FFFFFF">
													<table border="0" cellpadding="0" cellspacing="0"
														width="100%">
														<tbody>
															<tr>
																<td>
																	<table cellspacing="0" cellpadding="0" width="100%"
																		border="0">
																		<tbody>
																			<tr>
																				<td height="2" bgcolor="000000"></td>
																			</tr>
																			<tr>
																				<td height="30" bgcolor="#F8F8F8"
																					style="padding-left: 5pt;"><b><font
																						color="black"
																						style="font-size: 11px; letter-spacing: 0pt;">[상품관련]&nbsp;상품관련</font></b></td>
																			</tr>
																			<tr>
																				<td height="1" bgcolor="#EDEDED"></td>
																			</tr>
																			<tr>
																				<td height="30" align="right"
																					style="padding-right: 5px;" class="list_text"><b><a
																						style="cursor: point; text-decoration: underline">seul</a></b>,
																					2017/01/19, HIT : 85, 추천 : 0</td>
																			</tr>
																			<tr>
																				<td height="1" bgcolor="#EDEDED"></td>
																			</tr>
																			<tr>
																				<td style="padding: 10px 0px;">
																					<div class="MsgrScroller" id="contentDiv"
																						style="OVERFLOW-x: auto; OVERFLOW-y: hidden">
																						<div id="bodyList">
																							<table border="0" cellspacing="0"
																								cellpadding="10" style="table-layout: fixed">
																								<tbody>
																									<tr>
																										<td style="word-break: break-all;"
																											bgcolor="#FFFFFF" valign="top"><span
																											style="width: 100%; line-height: 160%; text-align: center">
																												<a
																												href="javascript:zoomImage('1.JPG','qna');"><img
																													src="../data/shopimages/board/qna/1.JPG"
																													border="0" width="402"></a>
																										</span></td>
																									</tr>
																									<tr>
																										<td style="word-break: break-all;"
																											bgcolor="#FFFFFF" valign="top"><span
																											style="width: 100%; line-height: 160%;">
																												test </span></td>
																									</tr>
																								</tbody>
																							</table>
																						</div>
																					</div>
																					<table border="0" cellspacing="0" cellpadding="10"
																						width="100%">
																						<tbody>
																							<tr>
																								<td align="right" class="list_text" height="30"
																									style="padding-right: 20px;"><font
																									color="#FF6600">첨부파일 : <a
																										href="../board/download.php?board=qna&amp;file_name=1.JPG"
																										target="_top">1.JPG</a> (24 KB)
																								</font></td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																			</tr>
																			<tr>
																				<td height="1" bgcolor="#EDEDED"></td>
																			</tr>
																		</tbody>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr height="50">
																<td>
																	<table border="0" cellspacing="0" width="100%"
																		style="TABLE-LAYOUT: FIXED">
																		<tbody>
																			<tr>
																				<td><img src="/Cart/imges/butt-vote.gif"
																					alt="추천하기"
																					onclick="alert('회원 로그인을 하셔야 글을 추천하실 수 있습니다.');"
																					style="cursor: pointer;"> <!--<A HREF="board.php?pagetype=write&exec=reply&board=qna&num=67&s_check=&search=&block=0&gotopage=1&boardsep="><IMG SRC="/Cart/imges/butt-reply.gif" border=0></A>-->
																					<a
																					href="board.php?pagetype=passwd_confirm&amp;exec=modify&amp;board=qna&amp;num=67&amp;s_check=&amp;search=&amp;block=0&amp;gotopage=1&amp;boardsep="><img
																						src="/Cart/imges/butt-modify.gif" border="0"></a>

																					<a
																					href="board.php?pagetype=passwd_confirm&amp;exec=delete&amp;board=qna&amp;num=67&amp;s_check=&amp;search=&amp;block=0&amp;gotopage=1&amp;boardsep="><img
																						src="/Cart/imges/butt-delete.gif" border="0"></a>
																					<a
																					href="board.php?pagetype=write&amp;exec=write&amp;board=qna"><img
																						src="/Cart/imges/butt-write.gif" border="0"></a>
																				</td>
																				<td align="right"><a
																					href="board.php?pagetype=list&amp;board=qna&amp;s_check=&amp;search=&amp;block=0&amp;gotopage=1&amp;boardsep="><img
																						src="/Cart/imges/butt-list.gif" border="0"></a></td>
																			</tr>
																		</tbody>
																	</table>
																</td>
															</tr>

															<tr>
																<td>
																	<table border="0" cellpadding="0" cellspacing="0"
																		style="table-layout: fixed">
																		<tbody>
																			<tr>
																				<td height="10"></td>
																			</tr>
																			<tr>
																				<td height="1" bgcolor="#EDEDED"></td>
																			</tr>
																		</tbody>
																	</table>

																	<table border="0" cellspacing="0" cellpadding="0"
																		width="100%"
																		style="border-top: 1px solid #EDEDED; border-bottom: 1px solid #EDEDED; table-layout: fixed;">
																		<colgroup>
																			<col width="80">
																			<col width="">
																			<col width="100">
																		</colgroup>
																		<tbody>
																			<tr height="24" align="CENTER"
																				onmouseover="this.style.backgroundColor='#F6F6F6'"
																				onmouseout="this.style.backgroundColor=''"
																				style="cursor: pointer;"
																				onclick="location='board.php?pagetype=view&amp;view=1&amp;board=qna&amp;num=66&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=';">
																				<td><img src="/Cart/imges/board_bbs_next.gif"
																					border="0"></td>
																				<td align="left"><a
																					href="board.php?pagetype=view&amp;view=1&amp;num=66&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;subCategory=&amp;s_check=&amp;boardsep= "
																					onmouseout="window.status='';return true"
																					onmouseover="window.status='다음글 : <strong>[교환.반품]</strong>&nbsp;교환.반품';return true"><strong>[교환.반품]</strong>&nbsp;교환.반품</a></td>
																				<td>이슬비</td>
																			</tr>
																		</tbody>
																	</table>

																</td>
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
									<table border="0" cellspacing="0" cellpadding="0"
										bgcolor="#CCCCCC"
										style="margin-bottom: 25px; border: 1px solid #ededed; TABLE-LAYOUT: FIXED">
										<tbody>
											<tr>
												<td>
													<table border="0" cellspacing="0" cellpadding="0"
														width="100%"
														style="background: #fafafa; table-layout: fixed;">
														<tbody>
															<tr>
																<td
																	style="font-size: 11px; letter-spacing: -0.5pt; padding: 10px;">
																	<b>작성자</b> : <input type="text" name="up_name"
																	size="13" maxlength="10" value="" class="input"
																	onfocus="chkCommentForm();" readonly=""> <img
																	width="20" height="0"><b>비밀번호</b> : <input
																	type="password" name="up_passwd" value=""
																	maxlength="20" size="10" class="input"
																	onfocus="chkCommentForm();" readonly="">
																</td>
															</tr>
															<tr>
																<td
																	style="font-size: 11px; letter-spacing: -0.5pt; padding: 10px; padding-top: 0px;">
																	<table border="0" cellspacing="0" cellpadding="0"
																		width="100%">
																		<colgroup>
																			<col width="">
																			<col width="90">
																		</colgroup>
																		<tbody>
																			<tr>
																				<td><textarea name="up_comment"
																						style="width: 96%; height: 49px; padding: 10px; border: 1px solid #BDBDBD; font-size: 9pt; color: 333333;"
																						onfocus="chkCommentForm();" readonly="">댓글을 작성하시려면 로그인이 필요합니다.</textarea></td>
																				<td align="center"><a href="javascript:chkCommentForm();"><img
																						src="/Cart/imges/board_comment.gif" border="0"
																						hspace="5" align="absmiddle"></a></td>
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
				</div>
			</div>
		</div>

		<c:import url="/ClientCartJSP/include/footer.jsp"></c:import>
	</center>
</body>
</html>