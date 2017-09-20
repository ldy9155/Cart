<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>제품 상세 페이지</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="/Cart/CartJS/jquery.slides.min.js"></script>
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/style.css">
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/style2.css">
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/user_style.css">
<script>
	/* TAP 기능 만들기 */
	$(function() {
		$("a[class=btnAddBasket]").click(function(){
			if($("input[name=login]").val()==""){
				alert("로그인이 필요한 서비스입니다")
				return;
			}
			$.ajax({
				url:'cartInsert.do?cmd=cartInsert',
		        dataType:'json',
		        type:'post',
		        data:{'pnum':$('input[name=pnum]').val(),'mid':$('input[name=login]').val(),'pcount':$('input[name=quantity]').val(),'callprice':$("#totprice").val(),'dcharge':0},
		        success:function(){
		        },
			});
			
			$("div#insertBasket").show();
		});
		
		$("a[class=closeBasketBtn]").click(function(){
			$("div#insertBasket").hide();
		});
		
		$("td[class=prDetailTabOff]").click(function() {
			$("div[id=product_info]").hide();
			$("div[class=" + $(this).attr("id") + "]").show();
		});

		$("a[class=btnWriteReview]").click(function() {
			$("div#reviewwrite").show();
		});
		
		$("a[class=quantityDN]").click(function(){
			if(eval($("input[name=quantity]").val())>1){
			$("input[name=quantity]").val(eval($("input[name=quantity]").val())-1);
			}
			calculation();
		});
		$("a[class=quantityUP]").click(function(){
			if(eval($("input[name=quantity]").val())<$("input[name=amount]").val()){
			$("input[name=quantity]").val(eval($("input[name=quantity]").val())+1);
			}
			calculation();
		});
		$("input[name=quantity]").change(function(){
			if($("input[name=amount]").val()<$("input[name=quantity]").val()){
				alert("현재 재고 수량을 초과합니다");
				$("input[name=quantity]").val(1);
			}
			calculation();
		});
		
		$("a[class=imgshow]").mouseenter(function(){
			$("img[name=mainImg]").attr("src","/Cart/upload/"+$(this).attr('name'));
		});
		
	});
	function calculation(){
		var sum=$("input[name=quantity]").val()*$("input[name=price]").val();
		$("#totprice").val(sum);
		$("#multitotprice").html((sum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")))
	}
</script>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
	<center>
		<c:import url="/ClientCartJSP/include/header.jsp"></c:import>

		<div class="wrap" style="width: 1200px">
			<div class="fullsizeMargin">

				<!-- 메인본문 디자인 : START -->
				<div class="wrapContent" style="width: 100%">
					<div class="wrapDetail">
						<div class="prDetail">
							<form name="form1" method="post" action="#">
								<input type="hidden" name="mode">
								<!-- 상품이미지-->
								<div class="prDetailImage">
									<table border="0" cellpadding="0" cellspacing="0" width="100%" class="prMinImage">
										<tbody>
											<tr>
												<td>
													<input type="text" name="login" value="${member.mid }" style="display: none;">
													<input type="text" name="pnum" value="${bean.pnum }" style="display: none;">
													<c:set var="i" value="${fn:split(bean.pimage,'#')}"></c:set>
													<a href="#">
														<img name="mainImg" src="/Cart/upload/${bean.pimage==null?'no_img.jpg':i[0] }" border="0" width="297" alt="">
													</a>
												</td>
											</tr>
										</tbody>
									</table>
									<div class="prDetailImageZoom">
											<c:forEach var="x" items="${i }">
											<a class="imgshow" name="${x }" onclick="return false" href="#">
												<img src="/Cart/upload/${bean.pimage==null?'no_img.jpg':x }" width="50px" border="0" alt="">
											</a>
											</c:forEach>
									</div>
									<div class="prDetailSns">
										<table cellpadding="0" cellspacing="0" width="100%">
											<tbody>
												<tr>
													<td></td>
													<td></td>
													<td align="right" style="font-size: 0px;"></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>

								<div class="prDetailInfo" style="margin-left: 0px;">
									<a href="#" style="position: absolute; top: 100px; left: -20px; width: 20px; height: 60px; line-height: 60px; background: #444444; color: #ffffff; text-align: center;">&lt;</a>

									<!-- 상품명 -->
									<div class="prdetailname">${bean.pname }</div>

									<!-- 상품 홍보메시지 -->
									<p class="prdetailmsg"></p>

									<!-- 상품정보 테이블-->
									<table cellpadding="0" cellspacing="0" width="100%" border="0" class="infoTable">
										<colgroup>
											<col width="70">
											<col width="">
										</colgroup>
										<tbody>
											<tr>
												<th>판매가격</th>
												<td>
													<b>
														<span id="idx_price">
															<fmt:formatNumber value="${bean.pprice }" pattern="#,###.##" />
														</span>
														원
													</b>
													<input type="hidden" name="price" value="${bean.pprice }">
												</td>
											</tr>
											<tr>
												<th>시중가격</th>
												<td>
													<strike>
														<fmt:formatNumber value="${bean.pmprice }" pattern="#,###.##" />
													</strike>
													원
												</td>
											</tr>
											<tr>
												<th>적립금</th>
												<td>
													<span id="idx_reserve">
														<fmt:formatNumber value="${bean.savemoney }" pattern="#,###.##" />
														원
													</span>
												</td>
											</tr>
											<tr>
												<th>쿠폰</th>
												<td>
													<a href="#">
														<u>
															적용가능 전체쿠폰
															<u></u>
														</u>
													</a>
												</td>
											</tr>
											<tr>
												<th>사은품</th>
												<td>
													<div style="position: relative;">
														<a href="#" onmouseover="showGift.style.display='block'" onmouseout="showGift.style.display='none'">정책보기</a>
													</div>
													<div id="showGift" style="position: absolute; width: 260px; margin: 0px; padding: 10px; background: rgb(255, 255, 255); font-size: 11px; border: 1px solid rgb(204, 204, 204); z-index: 100; display: none;">
														상품 판매가격이 아닌 할인혜택적용 이후 실 구매가격이
														<b>5,000원</b>
														이상 적용되며, 재고수량이 정해진 경우나 개별상품에 따라 사은품이 적용 불가능할 수 있습니다.
													</div>
												</td>
											</tr>
											<tr>
												<th>배송비</th>
												<td>배송비 무료 / 3일 이내 배송가능(토,일 공휴일 제외)</td>
											</tr>
											<tr>
												<th>재고수량</th>
												<td>
													<span id="idx_reserve">
														<fmt:formatNumber value="${bean.pamount }" pattern="#,###.##" />
														개
													</span>
												</td>
											</tr>
											<tr>
												<th>구매수량</th>
												<td>
													<input name="amount" type="text" value="${bean.pamount }" style="display: none">
													<a href="#" onclick="return false" class="quantityDN">-</a>
													<input type="text" name="quantity" value="1" size="4" class="input quantity" style="float: left;">
													<a href="#" onclick="return false" class="quantityUP">+</a>
												</td>
											</tr>
										</tbody>
									</table>

									<div id="div_opts" style="text-align: right; margin-right: 25px">
									<div class="optionTotalPrice" style="display: inline;">
										합계 :
										<span id="multitotprice"><fmt:formatNumber value="${bean.pprice }" pattern="#,###.##" /></span>
										<input type="text" id="totprice" name="totprice" value="${bean.pprice }" style="display: none">
										원
									</div>
									</div>
									<br>
									<div class="prDetailButton">
										<a href="#" class="btnBaro">바로 주문하기</a>
										<a href="#" class="btnAddBasket">장바구니 담기</a>
										<a href="#" class="btnWishlist">관심상품</a>
									</div>

									<!-- 장바구니 바로가기/쇼핑계속하기 레이어 팝업 START -->
									<div id="insertBasket" class="insertBasket" style="display: none;">
										<div class="basketBox">
											<h4>
												<span>장바구니</span>
												담기
												<a href="#" class="closeBtn">X</a>
											</h4>
											<div class="basketMessage">
												<h5>
													<span>장바구니</span>
													에 상품이 담겼습니다.
												</h5>
												지금 확인하시겠습니까?
											</div>
											<div class="basketBtnBox">
												<a href="cartList.do?cmd=cartList&id=${member.mid }" class="goBasketBtn">예</a>
												<a href="#" class="closeBasketBtn">아니오</a>
											</div>
										</div>
									</div>
									<!-- 장바구니 바로가기/쇼핑계속하기 레이어 팝업 END -->

									<input type="hidden" name="code" value="">
									<input type="hidden" name="productcode" value="">
									<input type="hidden" name="ordertype">
									<input type="hidden" name="opts">
									<input type="hidden" name="arropts">
									<input type="hidden" name="sell_memid" value="">

									<!-- 상품상세 공통 이벤트 관리(상품 스펙 바로 아래) -->
								</div>
							</form>
							<div style="clear: both"></div>
						</div>
					</div>


					<!-- 상품상세정보 -->
					<div id="product_info" class="1" style="display: inline;">
						<a name="1"></a>
						<table border="0" cellpadding="0" cellspacing="0" width="100%" class="prDetailTab">
							<tbody>
								<tr>
									<td class="prDetailTabOn" id="1">
										<a onclick="return false" href="#1">상품상세정보</a>
									</td>
									<td class="prDetailTabOff" id="3">
										<a onclick="return false" href="#3">배송/AS/환불안내</a>
									</td>
									<td class="prDetailTabOff" id="4">
										<a onclick="return false" href="#4">사용후기 (0)</a>
									</td>
									<td class="prDetailTabOff" id="5">
										<a onclick="return false" href="#5">상품Q&amp;A (0)</a>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="prDetailContents">
							<p align="center" style="text-align: center;">
								<img title="" src="/Cart/upload/${bean.pimage==null?'no_img.jpg':i[0] }" style="width: 600px">
								<br style="clear: both;">
								&nbsp;
								<h4 style="color: #444444; font-size: 17px; line-height: 120%;">제품 정보</h4>
								<div style="margin: 10px;">
									${bean.pinfo }
								</div>
							</p>
						</div>
					</div>

					<div id="product_info" class="3" style="display: none;">
						<a name="3"></a>
						<table border="0" cellpadding="0" cellspacing="0" width="100%" class="prDetailTab">
							<tbody>
								<tr>
									<td class="prDetailTabOff" id="1">
										<a onclick="return false" href="#1">상품상세정보</a>
									</td>
									<td class="prDetailTabOn" id="3">
										<a onclick="return false" href="#3">배송/AS/환불안내</a>
									</td>
									<td class="prDetailTabOff" id="4">
										<a onclick="return false" href="#4">사용후기 (0)</a>
									</td>
									<td class="prDetailTabOff" id="5">
										<a onclick="return false" href="#5">상품Q&amp;A (0)</a>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="prDetailContents">
							<div style="margin-bottom: 30px;">
								<h4 style="color: #444444; font-size: 17px; line-height: 120%;">· 배송 안내</h4>
								<div style="margin: 10px;">
									- 배송방법 : 택배, 소포, 등기
									<br>
									- 배송기간 : 입금확인 후 1~3일 내외
									<br>
									- 배송회사 : 쌍용택배
								</div>
							</div>
							<div>
								<h4 style="color: #444444; font-size: 17px; line-height: 120%;">· 교환/반품/환불 안내</h4>
								<div style="margin: 10px;">
									- 상품 수령 후 7일 이내에 교환/반품/환불이 가능합니다.
									<br>
									- 상품의 가치가 현저하게 감소되었을 경우 교환/반품/환불이 불가능합니다.
									<br>
									- 교환/반품/환불시 지정된 택배사를 이용해서 접수해 주셔야 합니다.
								</div>
							</div>
						</div>
					</div>

					<div id="product_info" class="4" style="display: none;">
						<a name="1"></a>
						<table border="0" cellpadding="0" cellspacing="0" width="100%" class="prDetailTab">
							<tbody>
								<tr>
									<td class="prDetailTabOff" id="1">
										<a onclick="return false" href="#1">상품상세정보</a>
									</td>
									<td class="prDetailTabOff" id="3">
										<a onclick="return false" href="#3">배송/AS/환불안내</a>
									</td>
									<td class="prDetailTabOn" id="4">
										<a onclick="return false" href="#4">사용후기 (0)</a>
									</td>
									<td class="prDetailTabOff" id="5">
										<a onclick="return false" href="#5">상품Q&amp;A (0)</a>
									</td>
								</tr>
							</tbody>
						</table>

						<div class="prDetailContents">
							<table border="0" cellpadding="0" cellspacing="0" width="100%" class="reviewPoint">
								<colgroup>
									<col width="">
									<col width="20%">
									<col width="20%">
									<col width="20%">
									<col width="20%">
								</colgroup>
								<tbody>
									<tr>
										<td>
											<p style="color: #ff4400;">0</p>
											<span>평균</span>
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
										</td>
										<td>
											<p>0</p>
											<span>품질</span>
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
										</td>
										<td>
											<p>0</p>
											<span>가격</span>
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
										</td>
										<td>
											<p>0</p>
											<span>배송</span>
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
										</td>
										<td>
											<p>0</p>
											<span>추천</span>
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
										</td>
									</tr>
								</tbody>
							</table>
							<div>
								<table cellpadding="0" cellspacing="0" width="100%" class="reviewTypeTab">
									<tbody>
										<tr>
											<td>
												<h4>고객상품평 (0)</h4>
											</td>
											<td>
												<div class="reviewBoxButton">
													<a href="#4" class="btnWriteReview">리뷰 작성하기</a>
													<a href="/Cart/ClientCartJSP/review.jsp" class="btnAllReview">전체 상품평 보기</a>
												</div>
											</td>
										</tr>
									</tbody>
								</table>

								<div id="reviewwrite" style="display: none;">
									<div id="div_reviewwrite_container">
										<form name="reviewWriteForm" action="/front/reviewwrite_proc.php" method="post" enctype="multipart/form-data">
											<input type="hidden" name="mode">
											<input type="hidden" name="code" value="009000000000">
											<input type="hidden" name="productcode" value="009000000000000003">
											<input type="hidden" name="sort" value="">

											<table cellpadding="0" cellspacing="0" class="reviewMarkTbl">
												<tbody>
													<tr>
														<th>* 품질</th>
														<td>
															<select name="quality">
																<option value="1">★</option>
																<option value="2">★★</option>
																<option value="3">★★★</option>
																<option value="4">★★★★</option>
																<option value="5" selected="">★★★★★</option>
															</select>
														</td>
														<th>* 가격</th>
														<td>
															<select name="price">
																<option value="1">★</option>
																<option value="2">★★</option>
																<option value="3">★★★</option>
																<option value="4">★★★★</option>
																<option value="5" selected="">★★★★★</option>
															</select>
														</td>
													</tr>
													<tr>
														<th>* 배송</th>
														<td>
															<select name="delitime">
																<option value="1">★</option>
																<option value="2">★★</option>
																<option value="3">★★★</option>
																<option value="4">★★★★</option>
																<option value="5" selected="">★★★★★</option>
															</select>
														</td>
														<th>* 추천</th>
														<td>
															<select name="recommend">
																<option value="1">★</option>
																<option value="2">★★</option>
																<option value="3">★★★</option>
																<option value="4">★★★★</option>
																<option value="5" selected="">★★★★★</option>
															</select>
														</td>
													</tr>
												</tbody>
											</table>

											<table cellpadding="0" cellspacing="0" class="reviewWriteTbl">
												<tbody>
													<tr>
														<th>작성자</th>
														<td>
															<input type="text" name="rname" maxlength="10" class="input" value="">
														</td>
													</tr>
													<tr>
														<th>내용</th>
														<td>
															<textarea name="rcontent" style="WIDTH: 100%; HEIGHT: 40px; padding: 3pt; line-height: 17px; border: solid 1px; border-color: #DFDFDF; font-size: 9pt; color: 333333;"></textarea>
														</td>
													</tr>
												</tbody>
											</table>
										</form>
									</div>
									<div style="padding: 10px 0px 20px 0px; text-align: center;">
										<a href="javascript:write_review();">
											<img src="/Cart/imges/btn_reviewok.gif" border="0" alt="">
										</a>
										<a href="javascript:review_write();">
											<img src="/Cart/imges/btn_reviewcancel.gif" border="0" alt="">
										</a>
									</div>
								</div>

								<div>
									<table cellpadding="0" cellspacing="0" width="100%" class="reviewListTbl">
										<colgroup>
											<col width="90">
											<col width="">
											<col width="80">
											<col width="80">
										</colgroup>
										<tbody>
											<tr>
												<th>평점</th>
												<th>사용후기</th>
												<th>작성자</th>
												<th>작성일</th>
											</tr>
											<tr>
												<td colspan="4" align="center">등록된 사용후기가 없습니다.</td>
											</tr>
										</tbody>
									</table>

									<table cellpadding="0" cellspacing="0" width="100%" style="margin-top: 15px;">
										<tbody>
											<tr>
												<td align="center" style="font-size: 11px;"></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>

					<div id="product_info" class="5" style="display: none;">
						<a name="5"></a>
						<table border="0" cellpadding="0" cellspacing="0" width="100%" class="prDetailTab">
							<tbody>
								<tr>
									<td class="prDetailTabOff" id="1">
										<a onclick="return false" href="#1">상품상세정보</a>
									</td>
									<td class="prDetailTabOff" id="3">
										<a onclick="return false" href="#3">배송/AS/환불안내</a>
									</td>
									<td class="prDetailTabOff" id="4">
										<a onclick="return false" href="#4">사용후기 (0)</a>
									</td>
									<td class="prDetailTabOn" id="5">
										<a onclick="return false" href="#5">상품Q&amp;A (0)</a>
									</td>
								</tr>
							</tbody>
						</table>

						<div class="prDetailContents">
							<table border="0" cellpadding="0" cellspacing="0" width="100%" class="qnaHead">
								<tbody>
									<tr>
										<td>
											<h4>상품 Q&amp;A (0)</h4>
										</td>
										<td align="right">
											<div class="qnaBoxButton">
												<a href="/Cart/ClientCartJSP/QnA.jsp?pagetype=write&amp;board=qna&amp;exec=write&amp;pridx=122" class="btnWriteQna">상품문의 작성하기</a>
												<a href="/Cart/ClientCartJSP/QnAList.jsp?board=qna" class="btnAllQna">전체 상품문의 보기</a>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
							<table border="0" cellpadding="0" cellspacing="0" width="100%" class="qnaListTbl">
								<colgroup>
									<col width="50">
									<col width="">
									<col width="100">
									<col width="100">
									<col width="50">
								</colgroup>
								<tbody>
									<tr>
										<th>번호</th>
										<th>제목</th>
										<th>작성자</th>
										<th>작성일</th>
										<th>조회</th>
									</tr>
									<tr>
										<td colspan="5" align="center">등록된 상품문의가 없습니다.</td>
									</tr>
								</tbody>
							</table>

							<table cellpadding="0" cellspacing="0" width="100%" style="margin-top: 15px;">
								<tbody>
									<tr>
										<td align="center" style="padding-top: 10"></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>

		<c:import url="/ClientCartJSP/include/footer.jsp"></c:import>
	</center>
</body>
</html>