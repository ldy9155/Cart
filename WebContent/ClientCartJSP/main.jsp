<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>IT SHOP</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script type="text/javascript" src="/Cart/CartJS/lib.js.php"></script>
<script type="text/javascript" src="/Cart/CartJS/drag.js.php"></script>
<script type="text/javascript" src="/Cart/CartJS/DropDown.js.php"></script>
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/style.css">
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/style2.css">
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/user_style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
.pageingarea .currpageitem {
	margin: 0px 2px;
	border: 1px solid #ec4024;
	box-sizing: border-box;
	background: #ffffff;
	color: #ec4024;
	width: 25px;
	height: 25px;
	line-height: 23px;
	text-align: center;
	display: inline-block;
	vertical-align: top;
}

.pageingarea .pageitem {
	border: 1px solid #e4e2e3;
	box-sizing: border-box;
	background: #ffffff;
	color: #9a9a9a;
	width: 25px;
	height: 25px;
	line-height: 27px;
	text-align: center;
	cursor: pointer;
	display: inline-block;
	vertical-align: top;
}

.pageingarea .pagelast {
	border: 1px solid #e4e2e3;
	box-sizing: border-box;
	background: #ffffff;
	color: #9a9a9a;
	width: 50px;
	height: 25px;
	line-height: 27px;
	text-align: center;
	cursor: pointer;
	display: inline-block;
	vertical-align: top;
}
</style>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
	<center>
		<c:import url="/ClientCartJSP/include/header.jsp"></c:import>
		<div class="wrap" style="width: 1200px">
			<div class="fullsizeMargin">
				<c:import url="/ClientCartJSP/include/left.jsp"></c:import>
				<!-- 메인본문 디자인 : START -->
				<div class="wrapContent" style="width: 970px">
					<!-- 메인본문 디자인 : START -->
					<div class="wrapMain">
						<c:choose>
						<c:when test="${none ne 'none'}">
						<div class="sectionProNew" style="margin-top: 20px;">
							<h4>신 상 품</h4>
							<table border="0" cellpadding="0" cellspacing="0" width="100%" align="center">
								<tbody>
									<tr>
										<c:forEach var="x" items="${newp }">
											<!-- 상품1 -->
											<td width="24%" valign="top">
												<table border="0" cellspacing="0" cellpadding="0" width="100%" class="productTable">
													<tbody>
														<tr>
															<td align="center">
																<a href="productInfo.do?cmd=productInfo&job=info&pnum=${x.pnum }">
																	<img src="/Cart/upload/${x.pimage==null?'no_img.jpg':x.pimage }" border="0" width="230px">
																</a>
															</td>
														</tr>
														<tr>
															<td style="padding: 10px 0px 4px 0px; text-align: center; word-break: break-all;">
																<a href="productInfo.do?cmd=productInfo&job=info&pnum=${x.pnum }">
																	<span class="mainprname">
																		<!--상품아이콘-->
																		<!-- <img src="/Cart/imges/icon02.gif" align="absmiddle" border="0"> -->
																		<img src="/Cart/imges/icon03.gif" align="absmiddle" border="0">
																		<br>
																		${x.pname }
																	</span>
																</a>
															</td>
														</tr>
														<tr>
															<td>
																<p class="mainconprice">
																	<strike>
																		<fmt:formatNumber value="${x.pmprice }" pattern="#,###.##" />
																		원
																	</strike>
																</p>
																<p class="mainprprice">
																	<fmt:formatNumber value="${x.pprice }" pattern="#,###.##" />
																	원
																</p>
																<p class="mainreserve">
																	<img src="/Cart/imges/reserve_icon.gif" border="0" align="absmiddle" alt="">
																	<fmt:formatNumber value="${x.savemoney }" pattern="#,###.##" />
																	원
																</p>
															</td>
														</tr>
													</tbody>
												</table>
											</td>
											<td width="10"></td>
										</c:forEach>

									</tr>
								</tbody>
							</table>
						</div>
						</c:when>
						<c:otherwise>
							<br>
						</c:otherwise>
						</c:choose>
						<div class="sectionProHot">
							<h4>제품 목록</h4>
							<table border="0" cellpadding="0" cellspacing="0" width="100%">
								<colgroup>
									<col width="20%">
									<col width="42%">
									<col width="12%">
									<col width="16%">
									<col width="10%">
								</colgroup>
								<tbody>
									<!-- 제품 1 -->
									<tr>
										<td height="20" colspan="6" style="background: url('/Cart/imges/main_product_linea.gif') repeat-x; background-position: center;"></td>
									</tr>
									<c:forEach var="i" items="${list }">
										<tr>
											<td align="center">
												<a href="productInfo.do?cmd=productInfo&job=info&pnum=${i.pnum}">
													<img src="/Cart/upload/${i.pimage==null?'no_img.jpg':i.pimage }" border="0" height="300">
												</a>
											</td>
											<td style="padding: 0px 15px; word-break: break-all;">
												<a href="productInfo.do?cmd=productInfo&job=info&pnum=${i.pnum}">
													<p class="mainprname" style="text-align: left;">${i.pname }</p>
													<p class="maintag" style="margin-top: 5px; text-align: left;">
													<p class="mainprmsg" style="text-align: left;"></p>
													</p>
												</a>
											</td>
											<td style="word-break: break-all;" class="mainconprice">
												<img src="/Cart/imges/won_icon2.gif" border="0" style="margin-right: 2px;">
												<strike>
													<fmt:formatNumber value="${i.pmprice }" pattern="#,###.##" />
													원
												</strike>
											</td>
											<td style="word-break: break-all;">
												<p class="prprice">
													<fmt:formatNumber value="${i.pprice }" pattern="#,###.##" />
													원
													<span class="maindiscount">
														(
														<fmt:formatNumber value="${(i.pmprice-i.pprice)/i.pmprice }" type="percent" />
														↓)
													</span>
												</p>
											</td>
											<td class="mainreserve">
												<img src="/Cart/imges/reserve_icon.gif" border="0" style="margin-right: 2px;">
												<fmt:formatNumber value="${i.savemoney }" pattern="#,###.##" />
												원
											</td>
										</tr>
										<tr>
											<td height="20" colspan="6" style="background: url('/Cart/imges/main_product_linea.gif') repeat-x; background-position: center;"></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="pageingarea" style="text-align: center; width: 100%; margin-bottom: 20px;">
								<c:choose>
									<c:when test="${query!=null }">
										<a href="productList.do?cmd=productList&job=main&page=1&query=${query}&data=${data}" rel="external">
											<span class="pagelast">처음</span>
										</a>
									</c:when>
									<c:otherwise>
										<a href="productList.do?cmd=productList&job=main&page=1" rel="external">
											<span class="pagelast">처음</span>
										</a>
									</c:otherwise>
								</c:choose>

								<c:choose>
									<c:when test="${pageBean.currentBlock gt 1}">
										<c:choose>
											<c:when test="${query!=null }">
												<a href="productList.do?cmd=productList&job=main&page=${pageBean.startPage-1 }&query=${query}&data=${data}">
													<img src="/Cart/imges/btn_page_start.gif" border="0" alt="이전 5 페이지" class="blockPageBtn">
												</a>
											</c:when>
											<c:otherwise>
												<a href="productList.do?cmd=productList&job=main&page=${pageBean.startPage-1 }">
													<img src="/Cart/imges/btn_page_start.gif" border="0" alt="이전 5 페이지" class="blockPageBtn">
												</a>
											</c:otherwise>
										</c:choose>
									</c:when>
									<c:otherwise>
										<img src="/Cart/imges/btn_page_start.gif" border="0" alt="이전 5 페이지" class="blockPageBtn">
									</c:otherwise>
								</c:choose>

								<c:choose>
									<c:when test="${pageBean.currentPage ne pageBean.startPage }">
										<c:choose>
											<c:when test="${query!=null }">
												<a href="productList.do?cmd=productList&job=main&page=${pageBean.currentPage-1}&query=${query}&data=${data}">
													<img src="/Cart/imges/btn_page_prev.gif" border="0" alt="이전" class="blockPageBtn">
												</a>
											</c:when>
											<c:otherwise>
												<a href="productList.do?cmd=productList&job=main&page=${pageBean.currentPage-1}">
													<img src="/Cart/imges/btn_page_prev.gif" border="0" alt="이전" class="blockPageBtn">
												</a>
											</c:otherwise>
										</c:choose>
									</c:when>
								</c:choose>

								<c:forEach var="i" begin="${pageBean.startPage }" end="${pageBean.endPage }" step="1">
									<c:choose>
										<c:when test="${i eq pageBean.currentPage}">
											<span class="currpageitem">${i }</span>
										</c:when>
										<c:when test="${query!=null }">
											<a href="productList.do?cmd=productList&job=main&page=${i}&query=${query}&data=${data}" rel="external">
												<span class="pageitem">${i }</span>
											</a>
										</c:when>
										<c:otherwise>
											<a href="productList.do?cmd=productList&job=main&page=${i}" rel="external">
												<span class="pageitem">${i }</span>
											</a>
										</c:otherwise>
									</c:choose>
								</c:forEach>

								<c:if test="${pageBean.currentPage ne pageBean.endPage}">
									<c:choose>
										<c:when test="${query!=null }">
											<a href="productList.do?cmd=productList&job=main&page=${pageBean.currentPage+1}&query=${query}&data=${data}">
												<img src="/Cart/imges/btn_page_next.gif" border="0" alt="다음 10 페이지" class="blockPageBtn">
											</a>
										</c:when>
										<c:otherwise>
											<a href="productList.do?cmd=productList&job=main&page=${pageBean.currentPage+1}">
												<img src="/Cart/imges/btn_page_next.gif" border="0" alt="다음 10 페이지" class="blockPageBtn">
											</a>
										</c:otherwise>
									</c:choose>
								</c:if>

								<c:choose>
									<c:when test="${pageBean.totalPage gt pageBean.endPage}">
										<c:choose>
											<c:when test="${query!=null }">
												<a href="productList.do?cmd=productList&job=main&page=${pageBean.endPage+1}&query=${query}&data=${data}">
													<img src="/Cart/imges/btn_page_end.gif" border="0" alt="마지막" class="blockPageBtn">
												</a>
											</c:when>
											<c:otherwise>
												<a href="productList.do?cmd=productList&job=main&page=${pageBean.endPage+1}">
													<img src="/Cart/imges/btn_page_end.gif" border="0" alt="마지막" class="blockPageBtn">
												</a>
											</c:otherwise>
										</c:choose>
									</c:when>
									<c:otherwise>
										<img src="/Cart/imges/btn_page_end.gif" border="0" alt="마지막" class="blockPageBtn">
									</c:otherwise>
								</c:choose>

								<c:choose>
									<c:when test="${query!=null }">
										<a href="productList.do?cmd=productList&job=main&page=${pageBean.totalPage }&query=${query}&data=${data}" rel="external">
											<span class="pagelast">마지막</span>
										</a>
									</c:when>
									<c:otherwise>
										<a href="productList.do?cmd=productList&job=main&page=${pageBean.totalPage }" rel="external">
											<span class="pagelast">마지막</span>
										</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<c:import url="/ClientCartJSP/include/footer.jsp"></c:import>
	</center>
</body>
</html>