<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>��ǰ �� ������</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="/Cart/CartJS/jquery.slides.min.js"></script>
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/style.css">
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/style2.css">
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/user_style.css">
<script>
	/* TAP ��� ����� */
	$(function() {
		$("a[class=btnAddBasket]").click(function(){
			if($("input[name=login]").val()==""){
				alert("�α����� �ʿ��� �����Դϴ�")
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
				alert("���� ��� ������ �ʰ��մϴ�");
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

				<!-- ���κ��� ������ : START -->
				<div class="wrapContent" style="width: 100%">
					<div class="wrapDetail">
						<div class="prDetail">
							<form name="form1" method="post" action="#">
								<input type="hidden" name="mode">
								<!-- ��ǰ�̹���-->
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

									<!-- ��ǰ�� -->
									<div class="prdetailname">${bean.pname }</div>

									<!-- ��ǰ ȫ���޽��� -->
									<p class="prdetailmsg"></p>

									<!-- ��ǰ���� ���̺�-->
									<table cellpadding="0" cellspacing="0" width="100%" border="0" class="infoTable">
										<colgroup>
											<col width="70">
											<col width="">
										</colgroup>
										<tbody>
											<tr>
												<th>�ǸŰ���</th>
												<td>
													<b>
														<span id="idx_price">
															<fmt:formatNumber value="${bean.pprice }" pattern="#,###.##" />
														</span>
														��
													</b>
													<input type="hidden" name="price" value="${bean.pprice }">
												</td>
											</tr>
											<tr>
												<th>���߰���</th>
												<td>
													<strike>
														<fmt:formatNumber value="${bean.pmprice }" pattern="#,###.##" />
													</strike>
													��
												</td>
											</tr>
											<tr>
												<th>������</th>
												<td>
													<span id="idx_reserve">
														<fmt:formatNumber value="${bean.savemoney }" pattern="#,###.##" />
														��
													</span>
												</td>
											</tr>
											<tr>
												<th>����</th>
												<td>
													<a href="#">
														<u>
															���밡�� ��ü����
															<u></u>
														</u>
													</a>
												</td>
											</tr>
											<tr>
												<th>����ǰ</th>
												<td>
													<div style="position: relative;">
														<a href="#" onmouseover="showGift.style.display='block'" onmouseout="showGift.style.display='none'">��å����</a>
													</div>
													<div id="showGift" style="position: absolute; width: 260px; margin: 0px; padding: 10px; background: rgb(255, 255, 255); font-size: 11px; border: 1px solid rgb(204, 204, 204); z-index: 100; display: none;">
														��ǰ �ǸŰ����� �ƴ� ������������ ���� �� ���Ű�����
														<b>5,000��</b>
														�̻� ����Ǹ�, �������� ������ ��쳪 ������ǰ�� ���� ����ǰ�� ���� �Ұ����� �� �ֽ��ϴ�.
													</div>
												</td>
											</tr>
											<tr>
												<th>��ۺ�</th>
												<td>��ۺ� ���� / 3�� �̳� ��۰���(��,�� ������ ����)</td>
											</tr>
											<tr>
												<th>������</th>
												<td>
													<span id="idx_reserve">
														<fmt:formatNumber value="${bean.pamount }" pattern="#,###.##" />
														��
													</span>
												</td>
											</tr>
											<tr>
												<th>���ż���</th>
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
										�հ� :
										<span id="multitotprice"><fmt:formatNumber value="${bean.pprice }" pattern="#,###.##" /></span>
										<input type="text" id="totprice" name="totprice" value="${bean.pprice }" style="display: none">
										��
									</div>
									</div>
									<br>
									<div class="prDetailButton">
										<a href="#" class="btnBaro">�ٷ� �ֹ��ϱ�</a>
										<a href="#" class="btnAddBasket">��ٱ��� ���</a>
										<a href="#" class="btnWishlist">���ɻ�ǰ</a>
									</div>

									<!-- ��ٱ��� �ٷΰ���/���ΰ���ϱ� ���̾� �˾� START -->
									<div id="insertBasket" class="insertBasket" style="display: none;">
										<div class="basketBox">
											<h4>
												<span>��ٱ���</span>
												���
												<a href="#" class="closeBtn">X</a>
											</h4>
											<div class="basketMessage">
												<h5>
													<span>��ٱ���</span>
													�� ��ǰ�� �����ϴ�.
												</h5>
												���� Ȯ���Ͻðڽ��ϱ�?
											</div>
											<div class="basketBtnBox">
												<a href="cartList.do?cmd=cartList&id=${member.mid }" class="goBasketBtn">��</a>
												<a href="#" class="closeBasketBtn">�ƴϿ�</a>
											</div>
										</div>
									</div>
									<!-- ��ٱ��� �ٷΰ���/���ΰ���ϱ� ���̾� �˾� END -->

									<input type="hidden" name="code" value="">
									<input type="hidden" name="productcode" value="">
									<input type="hidden" name="ordertype">
									<input type="hidden" name="opts">
									<input type="hidden" name="arropts">
									<input type="hidden" name="sell_memid" value="">

									<!-- ��ǰ�� ���� �̺�Ʈ ����(��ǰ ���� �ٷ� �Ʒ�) -->
								</div>
							</form>
							<div style="clear: both"></div>
						</div>
					</div>


					<!-- ��ǰ������ -->
					<div id="product_info" class="1" style="display: inline;">
						<a name="1"></a>
						<table border="0" cellpadding="0" cellspacing="0" width="100%" class="prDetailTab">
							<tbody>
								<tr>
									<td class="prDetailTabOn" id="1">
										<a onclick="return false" href="#1">��ǰ������</a>
									</td>
									<td class="prDetailTabOff" id="3">
										<a onclick="return false" href="#3">���/AS/ȯ�Ҿȳ�</a>
									</td>
									<td class="prDetailTabOff" id="4">
										<a onclick="return false" href="#4">����ı� (0)</a>
									</td>
									<td class="prDetailTabOff" id="5">
										<a onclick="return false" href="#5">��ǰQ&amp;A (0)</a>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="prDetailContents">
							<p align="center" style="text-align: center;">
								<img title="" src="/Cart/upload/${bean.pimage==null?'no_img.jpg':i[0] }" style="width: 600px">
								<br style="clear: both;">
								&nbsp;
								<h4 style="color: #444444; font-size: 17px; line-height: 120%;">��ǰ ����</h4>
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
										<a onclick="return false" href="#1">��ǰ������</a>
									</td>
									<td class="prDetailTabOn" id="3">
										<a onclick="return false" href="#3">���/AS/ȯ�Ҿȳ�</a>
									</td>
									<td class="prDetailTabOff" id="4">
										<a onclick="return false" href="#4">����ı� (0)</a>
									</td>
									<td class="prDetailTabOff" id="5">
										<a onclick="return false" href="#5">��ǰQ&amp;A (0)</a>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="prDetailContents">
							<div style="margin-bottom: 30px;">
								<h4 style="color: #444444; font-size: 17px; line-height: 120%;">�� ��� �ȳ�</h4>
								<div style="margin: 10px;">
									- ��۹�� : �ù�, ����, ���
									<br>
									- ��۱Ⱓ : �Ա�Ȯ�� �� 1~3�� ����
									<br>
									- ���ȸ�� : �ֿ��ù�
								</div>
							</div>
							<div>
								<h4 style="color: #444444; font-size: 17px; line-height: 120%;">�� ��ȯ/��ǰ/ȯ�� �ȳ�</h4>
								<div style="margin: 10px;">
									- ��ǰ ���� �� 7�� �̳��� ��ȯ/��ǰ/ȯ���� �����մϴ�.
									<br>
									- ��ǰ�� ��ġ�� �����ϰ� ���ҵǾ��� ��� ��ȯ/��ǰ/ȯ���� �Ұ����մϴ�.
									<br>
									- ��ȯ/��ǰ/ȯ�ҽ� ������ �ù�縦 �̿��ؼ� ������ �ּž� �մϴ�.
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
										<a onclick="return false" href="#1">��ǰ������</a>
									</td>
									<td class="prDetailTabOff" id="3">
										<a onclick="return false" href="#3">���/AS/ȯ�Ҿȳ�</a>
									</td>
									<td class="prDetailTabOn" id="4">
										<a onclick="return false" href="#4">����ı� (0)</a>
									</td>
									<td class="prDetailTabOff" id="5">
										<a onclick="return false" href="#5">��ǰQ&amp;A (0)</a>
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
											<span>���</span>
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
										</td>
										<td>
											<p>0</p>
											<span>ǰ��</span>
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
										</td>
										<td>
											<p>0</p>
											<span>����</span>
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
										</td>
										<td>
											<p>0</p>
											<span>���</span>
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
											<img src="/Cart/imges/star_point2.gif" align="absmiddle" alt="">
										</td>
										<td>
											<p>0</p>
											<span>��õ</span>
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
												<h4>����ǰ�� (0)</h4>
											</td>
											<td>
												<div class="reviewBoxButton">
													<a href="#4" class="btnWriteReview">���� �ۼ��ϱ�</a>
													<a href="/Cart/ClientCartJSP/review.jsp" class="btnAllReview">��ü ��ǰ�� ����</a>
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
														<th>* ǰ��</th>
														<td>
															<select name="quality">
																<option value="1">��</option>
																<option value="2">�ڡ�</option>
																<option value="3">�ڡڡ�</option>
																<option value="4">�ڡڡڡ�</option>
																<option value="5" selected="">�ڡڡڡڡ�</option>
															</select>
														</td>
														<th>* ����</th>
														<td>
															<select name="price">
																<option value="1">��</option>
																<option value="2">�ڡ�</option>
																<option value="3">�ڡڡ�</option>
																<option value="4">�ڡڡڡ�</option>
																<option value="5" selected="">�ڡڡڡڡ�</option>
															</select>
														</td>
													</tr>
													<tr>
														<th>* ���</th>
														<td>
															<select name="delitime">
																<option value="1">��</option>
																<option value="2">�ڡ�</option>
																<option value="3">�ڡڡ�</option>
																<option value="4">�ڡڡڡ�</option>
																<option value="5" selected="">�ڡڡڡڡ�</option>
															</select>
														</td>
														<th>* ��õ</th>
														<td>
															<select name="recommend">
																<option value="1">��</option>
																<option value="2">�ڡ�</option>
																<option value="3">�ڡڡ�</option>
																<option value="4">�ڡڡڡ�</option>
																<option value="5" selected="">�ڡڡڡڡ�</option>
															</select>
														</td>
													</tr>
												</tbody>
											</table>

											<table cellpadding="0" cellspacing="0" class="reviewWriteTbl">
												<tbody>
													<tr>
														<th>�ۼ���</th>
														<td>
															<input type="text" name="rname" maxlength="10" class="input" value="">
														</td>
													</tr>
													<tr>
														<th>����</th>
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
												<th>����</th>
												<th>����ı�</th>
												<th>�ۼ���</th>
												<th>�ۼ���</th>
											</tr>
											<tr>
												<td colspan="4" align="center">��ϵ� ����ıⰡ �����ϴ�.</td>
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
										<a onclick="return false" href="#1">��ǰ������</a>
									</td>
									<td class="prDetailTabOff" id="3">
										<a onclick="return false" href="#3">���/AS/ȯ�Ҿȳ�</a>
									</td>
									<td class="prDetailTabOff" id="4">
										<a onclick="return false" href="#4">����ı� (0)</a>
									</td>
									<td class="prDetailTabOn" id="5">
										<a onclick="return false" href="#5">��ǰQ&amp;A (0)</a>
									</td>
								</tr>
							</tbody>
						</table>

						<div class="prDetailContents">
							<table border="0" cellpadding="0" cellspacing="0" width="100%" class="qnaHead">
								<tbody>
									<tr>
										<td>
											<h4>��ǰ Q&amp;A (0)</h4>
										</td>
										<td align="right">
											<div class="qnaBoxButton">
												<a href="/Cart/ClientCartJSP/QnA.jsp?pagetype=write&amp;board=qna&amp;exec=write&amp;pridx=122" class="btnWriteQna">��ǰ���� �ۼ��ϱ�</a>
												<a href="/Cart/ClientCartJSP/QnAList.jsp?board=qna" class="btnAllQna">��ü ��ǰ���� ����</a>
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
										<th>��ȣ</th>
										<th>����</th>
										<th>�ۼ���</th>
										<th>�ۼ���</th>
										<th>��ȸ</th>
									</tr>
									<tr>
										<td colspan="5" align="center">��ϵ� ��ǰ���ǰ� �����ϴ�.</td>
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