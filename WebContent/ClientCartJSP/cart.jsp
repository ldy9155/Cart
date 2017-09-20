<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>��ٱ���</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" content="">
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/style2.css">
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/style.css">
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/user_style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	var sum = 0;
	var sum2 = 0;
	$(function() {
		var id=($("input[name=midd]").val());
		$("a[id=cartUpdate]").click(function(){
			var temp=($(this).attr("name"));
			var amount=($("input[name=c"+temp+"]").val());
			var price=($("input[name=p"+temp+"]").val());
			document.location.href="cartUpdate.do?cmd=cartUpdate&basketNo="+temp+"&amount="+amount+"&mid="+id+"&price="+price;
		});
		$("a[name=seldel]").click(function(){
		var seletebox = "";
			for(var i=0;i<$("input[name=basket_select_item]").length;i++){
				if($("input[name=basket_select_item]").eq(i).prop("checked")){
					seletebox+=($("input[name=basket_select_item]").eq(i).val()+"/");
				}
			}
			document.location.href="cartDelete.do?cmd=cartDelete&basketNo=nos&basketsNo="+seletebox+"&mid="+id;
		});
		
		for (var i = 0; i < $("input[name=price]").length; i++) {
			sum = eval($("input[name=price]").eq(i).val()) + sum;
		}
		for (var j = 0; j < $("input[name=price2]").length; j++) {
			sum2 = eval($("input[name=price2]").eq(j).val()) + sum2;
		}

		$("span[name=tot]").text(
				(sum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")) + ' ��');
		$("span[name=basket_etc_price1]").text(
				(sum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")));
		$("span[name=basket_etc_price3]").text(
				(sum2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")));
		$("span[name=basket_etc_price4]").text(
				(sum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")));
	});
</script>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
	<center>
		<c:import url="/ClientCartJSP/include/header.jsp"></c:import>
		<div class="wrap" style="width: 1200px; margin-top: 30px">
			<div class="fullsizeMargin">
				<!-- ���κ��� ������ : START -->
				<div class="wrapContent" style="width: 100%">
					<div class="subpageTitle">��ٱ���</div>
					<input name="midd" type="text" value="${member.mid}" style="display:none">
					<table border="0" cellpadding="0" cellspacing="0" width="100%" class="itemListTbl">
						<caption style="display: none">��ٱ��� ����Ʈ</caption>
						<colgroup>
							<col width="50">
							<col width="">
							<col width="80">
							<col width="100">
							<col width="80">
							<col width="80">
							<col width="80">
						</colgroup>

						<thead>
							<tr>
								<th style="border-right: none;"></th>
								<th>��ǰ��/�ɼ�</th>
								<th>����</th>
								<th>�ֹ��ݾ�</th>
								<th>������</th>
								<th>��ۺ�</th>
								<th style="border-right: none">���</th>
							</tr>
						</thead>

						<tbody>
							<c:forEach var="i" items="${list }">
								<tr>
									<td class="tdstyle2" style="text-align: center">
										<input id="price" name="price" type="text" value="${i.callprice }" style="display: none;">
										<input id="price2" name="price2" type="text" value="${i.savemoney*i.pcount}" style="display: none;">
										<input type="checkbox" name="basket_select_item" value="${i.basketno }" style="width: 22px; height: 22px; cursor: pointer">
									</td>
									<td class="tdstyle" align="center">
										<div style="float: left; width: 100px; margin-right: 15px; background: #f2f2f2; text-align: center">
											<img src="/Cart/upload/${i.pimage }" height="100">
										</div>
										<div style="float: left; width: 60%; text-align: left;">
											<p>
												<a href="productInfo.do?cmd=productInfo&job=info&pnum=${i.pnum }">
													<span style="color: #444444; font-weight: bold;">${i.pname }</span>
												</a>
											</p>
										</div>
									</td>
									<td class="tdstyle" align="center">
										<table cellpadding="0" cellspacing="0">
											<tbody>
												<tr>
													<td>
														<input type="text" name="c${i.basketno }" value="${i.pcount }" maxlength="4" onkeyup="strnumkeyup(this)" style="WIDTH: 30px; HEIGHT: 32px; line-height: 32px; border: none; BORDER: #aaaaaa 1px solid; box-sizing: border-box; text-align: center">
														<input type="text" name="p${i.basketno }" value="${i.pprice }" style="display:none">
													</td>
													<td>
														<a href="#" id="cartUpdate" name="${i.basketno }" style="display: block; width: 32px; height: 32px; line-height: 32px; background: #aaaaaa; color: #ffffff; font-size: 11px; text-align: center; text-decoration: none">����</a>
													</td>
												</tr>
											</tbody>
										</table>
									</td>
									<td name="price" class="tdstyle" align="center">
										<b>
											<fmt:formatNumber value="${i.callprice }" pattern="#,###.##" />
											��
										</b>
									</td>
									<td class="tdstyle" align="center">
										<fmt:formatNumber value="${i.savemoney*i.pcount }" pattern="#,###.##" />
										��
									</td>
									<td class="tdstyle" align="center">${i.dcharge }</td>
									<td class="tdstyle2" align="center" style="padding: 0px 10px">
										<!-- <a href="#" style="display: block; margin-bottom: 2px; padding: 2px 0px; background: #aaaaaa; color: #ffffff; font-size: 11px; text-decoration: none">���ϱ�</a> -->
										<a href="cartDelete.do?cmd=cartDelete&basketNo=${i.basketno }&mid=${i.mid}" style="display: block; padding: 1px 0px; border: 1px solid #aaaaaa; font-size: 11px; text-decoration: none">�����ϱ�</a>
									</td>
								</tr>
							</c:forEach>
							<tr>
								<td colspan="7" style="padding: 15px 10px; font-size: 11px; line-height: 140%; text-align: right">
									<br>
									��ۺ� : 0 �� / �հ� :
									<span name="tot" style="color: #444444; font-weight: bold;">0 ��</span>
								</td>
							</tr>
							<tr>
								<td colspan="7" height="1" bgcolor="#DDDDDD"></td>
							</tr>
						</tbody>
					</table>

					<div>
						<div style="margin: 10px 0px 40px 0px">
							<a href="#" name="seldel" style="display: block; width: 20%; height: 32px; line-height: 32px; border: 1px solid #dddddd; border-bottom: 2px solid #dddddd; font-weight: bold; text-align: center; text-decoration: none">���û�ǰ ����</a>
						</div>

						<table border="0" cellpadding="0" cellspacing="0" width="100%" class="priceListTbl" style="text-align: center">
							<tbody>
								<tr>
									<th style="position: relative; width: 20%">
										��ǰ �հ�ݾ�
										<div style="position: absolute; top: 32px; right: -15px; width: 30px; height: 30px; line-height: 30px; background: #444444; color: #ffffff; font-size: 20px; font-weight: bold; text-align: center">+</div>
									</th>
									<th style="width: 20%">�� ��ۺ�</th>
									<th style="width: 20%">������</th>
									<th style="position: relative; border-right: none">
										���� �����ݾ�
										<div style="position: absolute; top: 32px; left: -15px; width: 30px; height: 30px; line-height: 30px; background: #444444; color: #ffffff; font-size: 20px; font-weight: bold; text-align: center">=</div>
									</th>
								</tr>
								<tr>
									<td class="tdstyle">
										<span name="basket_etc_price1" class="basket_etc_price">0</span>
										��
									</td>
									<td class="tdstyle">
										<span name="basket_etc_price2" class="basket_etc_price2">0</span>
										��
									</td>
									<td class="tdstyle">
										<span name="basket_etc_price3" class="basket_etc_price">0</span>
										��
									</td>
									<td class="tdstyle2">
										<span name="basket_etc_price4" class="basket_etc_price3">0</span>
										��
									</td>
								</tr>
							</tbody>
						</table>
					</div>

					<table width="100%" style="margin: 20px 0px 50px 0px;">
						<tbody>
							<tr>
								<td align="center">
									<a href="cartDelete.do?cmd=cartDelete&basketNo=all&mid=${member.mid}">
										<img src="/Cart/imges/basket_skin3_btn6.gif" border="0" hspace="2" alt="��ٱ��� ����">
									</a>
									<a href="productList.do?cmd=productList&job=main">
										<img src="/Cart/imges/basket_skin3_btn5.gif" border="0" hspace="2" alt="���ΰ���ϱ�">
									</a>
									<a href="#">
										<img src="/Cart/imges/basket_skin3_btn7.gif" border="0" hspace="2" alt="��ǰ�ֹ��ϱ�">
									</a>
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