<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="/Cart/CartCSS/admin_style.css">
<link rel="stylesheet" href="/Cart/AdminCartJSP/include/footer-distributed-with-address-and-phones.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>관리자 페이지</title>
<script>
	$(function() {
		/* IMG 미리보기 */
		$("input[name=userfile]").change(function(index) {
			upload(this);
		});

		$("select#category").change(function() {
			$("input#categoryt").val($("select#category").val());
		});

		$("#productInsert").click(
				function() {
					if($("input#categoryt").val()==''){
						alert('카테고리를 선택하세요');
						return;
					}
					
					if ($("#savedmoney:checked").val() == "Y") {
						$("#savedmoneyt").val(
								Math.round($("#sellprice2").val() * 0.1));
					} else {
						$("#savedmoneyt").val(0);
					}
					$("form#form1").submit();
				});
		
		$("#productCancel").click(function(){
			document.location.href="productList.do?cmd=productList";
		});
	});

	function upload(obj) {
		var upload = obj;
		var holder = $("span[id=" + $(obj).attr('id') + "]");
		var file = upload.files[0], reader = new FileReader();
		reader.onload = function(event) {
			var img = new Image();
			img.src = event.target.result;
			img.width = 320;
			holder.innerHTML = '';
			holder.html(img);
		};
		reader.readAsDataURL(file);
		return false;
	}
</script>
</head>
<body style="margin: 0px">
	<!-- #header -->
	<jsp:include page="/AdminCartJSP/include/header.jsp"></jsp:include>
	<!-- #content -->
	<table cellpadding="0" cellspacing="0" width="100%" style="margin-top: 100px">
		<tbody>
			<tr>
				<td bgcolor="#ffffff" style="padding: 50px;">
					<table cellpadding="0" cellspacing="0" width="100%">
						<tbody>
							<tr>
								<td class="wrapProductRegister">
									<c:choose>
									<c:when test="${param.job eq 'mod' }">
										<form id="form1" name="form1" action="productAdd.do?cmd=productAdd&job=mod&pnum=${param.pnum }" method="post" enctype="multipart/form-data">
									</c:when>
									<c:otherwise>
										<form id="form1" name="form1" action="productAdd.do?cmd=productAdd" method="post" enctype="multipart/form-data">
									</c:otherwise>
									</c:choose>
										<div style="margin-bottom: 40px">
											<h2>기본정보 설정</h2>
											<table border="0" cellpadding="0" cellspacing="0" width="100%" class="baseTable">
												<colgroup>
													<col width="190">
													<col width="">
												</colgroup>
												<tbody>
													<tr>
														<th>카테고리</th>
														<td id="category_view">
															<select id="category" name="category" class="selectbox" >
																<option value="">선택하세요</option>
																<option value="노트북" ${bean.cgory eq '노트북'?'selected=""':'' }>노트북</option>
																<option value="모니터" ${bean.cgory eq '모니터'?'selected=""':'' }>모니터</option>
																<option value="카메라" ${bean.cgory eq '카메라'?'selected=""':'' }>카메라</option>
																<option value="게임기" ${bean.cgory eq '게임기'?'selected=""':'' }>게임기</option>
																<option value="데스크탑" ${bean.cgory eq '데스크탑'?'selected=""':'' }>데스크탑</option>
																<option value="생활가전" ${bean.cgory eq '생활가전'?'selected=""':'' }>생활가전</option>
															</select>
															<input type="hidden" id="categoryt" name="categoryt" value="${bean.cgory }">
														</td>
													</tr>
													<tr>
														<th>적립금</th>
														<td>
															<label>
																<input type="radio" id="savedmoney" name="savedmoney" value="Y" class="radio" ${bean.savemoney>0?'checked=""':''}>
																적용
															</label>
															<label>
																<input type="radio" id="savedmoney" name="savedmoney" value="N" class="radio" ${bean.savemoney==0?'checked=""':''} >
																미적용
															</label>
															<font class="font_orange"> 판매 금액의 10% 적립금 적용</font>
															<input type="hidden" id="savedmoneyt" name="savedmoneyt">
														</td>
													</tr>
													<tr>
														<th>
															상품명
															<span class="must">필수</span>
														</th>
														<td>
															<input type="text" id="productname" name="productname" maxlength="200" value="${bean.pname }" style="width: 30%" placeholder="상품명을 입력하세요." class="text">
														</td>
													</tr>
													<tr>
														<th>
															시중가격
															<span class="must">필수</span>
														</th>
														<td>
															<input type="text" id="sellprice1" name="sellprice1" maxlength="10" value="${bean.pmprice }" style="width: 150px;" placeholder="시중가격을 입력하세요." class="text">
															원
														</td>
													</tr>
													<tr>
														<th>
															판매가격
															<span class="must">필수</span>
														</th>
														<td>
															<input type="text" id="sellprice2" name="sellprice2" value="${bean.pprice }" maxlength="10" style="width: 150px;" placeholder="판매가격을 입력하세요." class="text">
															원
														</td>
													</tr>
													<tr>
														<th>
															제품수량
															<span class="must">필수</span>
														</th>
														<td>
															<input type="text" id="amount" name="amount" maxlength="10" value="${bean.pamount }" style="width: 150px;" placeholder="제품수량을 입력하세요." class="text">
															개
														</td>
													</tr>
													<tr>
														<th>상품상세설명</th>
														<td>
															<textarea id="content" name="content" cols="100" rows="5">${bean.pinfo }</textarea>
														</td>
													</tr>
													<tr>
														<th>상품이미지</th>
														<td>
															<div class="productImage">
																<c:set var="i" value="${fn:split(bean.pimage,'#')}"></c:set>
																<div>
																	<h4>이미지_1</h4>
																	<span id="userfile1">
																		<img id="img1" src="/Cart/upload/${bean.pimage==null?'no_img.jpg':i[0] }" width="320" alt="">
																	</span>
																	<input type="file" id="userfile1" name="userfile" style="width: 96%;" class="file">
																</div>
																<div class="not_auto">
																	<div>
																		<h4>이미지_2</h4>
																		<span id="userfile2">
																			<img id="img1" src="/Cart/upload/${i[1]==null?'no_img.jpg':i[1] }" width="320" alt="">
																		</span>
																		<input type="file" id="userfile2" name="userfile" style="width: 96%;" class="file">
																	</div>
																	<div>
																		<h4>이미지_3</h4>
																		<span id="userfile3">
																			<img id="img1" src="/Cart/upload/${i[2]==null?'no_img.jpg':i[2] }" width="320" alt="">
																		</span>
																		<input type="file" id="userfile3" name="userfile" style="width: 96%;" class="file">
																	</div>
																</div>
																<div>
																	<h4>이미지_4</h4>
																	<span id="userfile4">
																		<img id="img1" src="/Cart/upload/${i[3]==null?'no_img.jpg':i[3] }" width="320" alt="">
																	</span>
																	<input type="file" id="userfile4" name="userfile" style="width: 96%;" class="file">
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div class="buttonBox">
											<c:choose>
											<c:when test="${param.job eq 'mod' }">
											<a id="productInsert" href="#">
												<span class="largeButton">상품 수정</span>
											</a>
											<a id="productCancel" href="#">
												<span class="largeButton">취소</span>
											</a>
											</c:when>
											<c:otherwise>
											<a id="productInsert" href="#">
												<span class="largeButton">신규 상품 등록</span>
											</a>
											</c:otherwise>
											</c:choose>
										</div>
									</form>
								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>

	<jsp:include page="/AdminCartJSP/include/footer.jsp"></jsp:include>
</body>
</html>