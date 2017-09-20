<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="/Cart/CartCSS/admin_style.css">
<link rel="stylesheet" href="/Cart/CartCSS/user_style.css">
<script type="text/javascript" src="/lib/lib.js.php"></script>
<script type="text/javascript" src="calendar.js.php"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="/Cart/AdminCartJSP/include/footer-distributed-with-address-and-phones.css">
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
<script>
	$(function() {
		$("a#psearch").click(function() {
			$("form[name=search_form]").submit();
		});
	});
</script>
</head>
<body background="images/con_bg.gif" text="black" link="blue" vlink="purple" alink="red" class="bg" oncontextmenu="return false" marginwidth="0" marginheight="0">
	<jsp:include page="/AdminCartJSP/include/header.jsp"></jsp:include>
	<div style="text-align: center;">
		<table border="0" cellpadding="0" cellspacing="0" width="90%" style="min-width: 630px; margin-top: 150px; margin-bottom: 150px; margin-left: 100px">
			<tbody>
				<tr>
					<td style="overflow: hidden">
						<div style="float: left; position: relative; overflow: hidden">
							<form name="search_form" action="productList.do?cmd=productList" method="post">
								<input type="hidden" name="code" value="010000000000">
								<select id="query" name="query" style="float: left;" class="selectbox">
									<option value="pname">상품명</option>
									<option value="cgory">카테고리</option>
								</select>
								<input id="data" name="data" type="text" maxlength="20" placeholder="검색어를 입력해 주세요." value="" style="float: left; width: 200px; margin: 0px 4px" class="text">
								<a id="psearch" name="psearch" href="#" style="float: left;">
									<span class="largeButton">검색</span>
								</a>
							</form>
						</div>

						<div style="float: right; margin-top: 15px">
							<strong class="font_orange">* 정렬방법 :</strong>
							<a href="#">등록순</a>
							<span>|</span>
							<a href="#">상품명순</a>
							<span>|</span>
							<a href="#">가격순</a>
						</div>
						<a id="refresh" href="productList.do?cmd=productList" style="float: left; margin-left: 5px">
							<span class="largeButton">새로고침</span>
						</a>
					</td>
				</tr>
				<tr>
					<td height="10"></td>
				</tr>
				<tr>
					<td valign="top">
						<table cellpadding="0" cellspacing="0" width="100%">
							<tbody>
								<tr>
									<td>
										<form name="form1" action="#" method="post">
											<input type="hidden" name="mode">
											<input type="hidden" name="code" value="010000000000">
											<input type="hidden" name="sort" value="">
											<input type="hidden" name="block" value="">
											<input type="hidden" name="gotopage" value="1">
											<input type="hidden" name="keyword" value="">

											<table border="0" cellspacing="0" cellpadding="0" width="100%" class="baseTable">
												<colgroup>
													<col width="60">
													<col width="100">
													<col width="80">
													<col width="">
													<col width="120">
													<col width="120">
													<col width="100">
													<col width="100">
													<col width="80">
												</colgroup>
												<tbody>
													<tr>
														<th>NO</th>
														<th>카테고리</th>
														<th>이미지</th>
														<th>상품명</th>
														<th>시중가격</th>
														<th>판매가격</th>
														<th>적립금</th>
														<th>수량</th>
														<th>상태</th>
													</tr>
													<!-- 제품 -->
													<c:forEach var="i" items="${list }">
														<tr>
															<td align="center">${i.pnum }</td>
															<td align="center">
																<strong>${i.cgory }</strong>
															</td>
															<td align="center" style="font-size: 0px; line-height: 0%">
																<a href="productInfo.do?cmd=productInfo&job=info&pnum=${i.pnum}">
																	<img src="/Cart/upload/${i.pimage }" height="100" width="100" border="1">
																</a>
																<div id="primage1" style="position: absolute; z-index: 100; display: none;">
																	<table border="0" cellspacing="0" cellpadding="0" width="170">
																		<tbody>
																			<tr>
																				<td align="center" width="100%" height="150" style="border: #000000 solid 1px;">
																					<img src="#" border="0" alt="">
																				</td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</td>
															<td style="word-break: break-all;">
																<a href="productInfo.do?cmd=productInfo&job=info&pnum=${i.pnum}">${i.pname }</a>
															</td>
															<td align="right"><fmt:formatNumber value="${i.pmprice }" pattern="#,###.##"/> 원</td>
															<td align="right"><fmt:formatNumber value="${i.pprice }" pattern="#,###.##"/> 원</td>
															<td align="center"><fmt:formatNumber value="${i.savemoney }" pattern="#,###.##"/> 원</td>
															<td align="center">
																<font color="#0000FF"><fmt:formatNumber value="${i.pamount }" pattern="#,###.##"/> 개</font>
															</td>
															<td align="center">
																<a href="productInfo.do?cmd=productInfo&job=mod&pnum=${i.pnum }">
																	<span class="button">수정</span>
																</a>
																<a href="productDelete.do?cmd=productDelete&no=${i.pnum }">
																	<span class="button" style="background-color: red">삭제</span>
																</a>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</form>
									</td>
								</tr>

								<tr>
									<td height="52" align="center">
										<br>
										<div class="pageingarea" style="text-align: center; width: 100%; margin-bottom: 20px;">

											<c:choose>
												<c:when test="${query!=null }">
													<a href="productList.do?cmd=productList&page=1&query=${query}&data=${data}" rel="external">
														<span class="pagelast">처음</span>
													</a>
												</c:when>
												<c:otherwise>
													<a href="productList.do?cmd=productList&page=1" rel="external">
														<span class="pagelast">처음</span>
													</a>
												</c:otherwise>
											</c:choose>

											<c:choose>
												<c:when test="${pageBean.currentBlock gt 1}">
													<c:choose>
														<c:when test="${query!=null }">
															<a href="productList.do?cmd=productList&page=${pageBean.startPage-1 }&query=${query}&data=${data}">
																<img src="/Cart/imges/btn_page_start.gif" border="0" alt="이전 5 페이지" class="blockPageBtn">
															</a>
														</c:when>
														<c:otherwise>
															<a href="productList.do?cmd=productList&page=${pageBean.startPage-1 }">
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
															<a href="productList.do?cmd=productList&page=${pageBean.currentPage-1}&query=${query}&data=${data}">
																<img src="/Cart/imges/btn_page_prev.gif" border="0" alt="이전" class="blockPageBtn">
															</a>
														</c:when>
														<c:otherwise>
															<a href="productList.do?cmd=productList&page=${pageBean.currentPage-1}">
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
														<a href="productList.do?cmd=productList&page=${i}&query=${query}&data=${data}" rel="external">
															<span class="pageitem">${i }</span>
														</a>
													</c:when>
													<c:otherwise>
														<a href="productList.do?cmd=productList&page=${i}" rel="external">
															<span class="pageitem">${i }</span>
														</a>
													</c:otherwise>
												</c:choose>
											</c:forEach>

											<c:if test="${pageBean.currentPage ne pageBean.endPage}">
												<c:choose>
													<c:when test="${query!=null }">
														<a href="productList.do?cmd=productList&page=${pageBean.currentPage+1}&query=${query}&data=${data}">
															<img src="/Cart/imges/btn_page_next.gif" border="0" alt="다음 10 페이지" class="blockPageBtn">
														</a>
													</c:when>
													<c:otherwise>
														<a href="productList.do?cmd=productList&page=${pageBean.currentPage+1}">
															<img src="/Cart/imges/btn_page_next.gif" border="0" alt="다음 10 페이지" class="blockPageBtn">
														</a>
													</c:otherwise>
												</c:choose>
											</c:if>

											<c:choose>
												<c:when test="${pageBean.totalPage gt pageBean.endPage}">
													<c:choose>
														<c:when test="${query!=null }">
															<a href="productList.do?cmd=productList&page=${pageBean.endPage+1}&query=${query}&data=${data}">
																<img src="/Cart/imges/btn_page_end.gif" border="0" alt="마지막" class="blockPageBtn">
															</a>
														</c:when>
														<c:otherwise>
															<a href="productList.do?cmd=productList&page=${pageBean.endPage+1}">
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
													<a href="productList.do?cmd=productList&page=${pageBean.totalPage }&query=${query}&data=${data}" rel="external">
														<span class="pagelast">마지막</span>
													</a>
												</c:when>
												<c:otherwise>
													<a href="productList.do?cmd=productList&page=${pageBean.totalPage }" rel="external">
														<span class="pagelast">마지막</span>
													</a>
												</c:otherwise>
											</c:choose>
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
	<form name="vForm" action="vender_infopop.php" method="post">
		<input type="hidden" name="vender">
	</form>


	<jsp:include page="/AdminCartJSP/include/footer.jsp"></jsp:include>

</body>
</html>