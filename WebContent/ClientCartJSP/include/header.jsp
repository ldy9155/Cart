<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!-- header -->
<div class="wrapTop" style="margin-bottom: 0px;">
	<div>
		<div class="topLogoAndSearch">
			<div class="fullsizeMargin">
				<div style="width: 1200px; min-height: 36px; margin: 0 auto; overflow: hidden;">
					<div class="topLogo">
						<a href="productList.do?cmd=productList&job=main">
							<img src="/Cart/imges/main.png" border="0" style="width: 80px; height: 36px">
						</a>
					</div>
					<div style="text-align: right">
						<div style="display: inline-block; overflow: hidden">
							<div class="topMemberMenu">
								<c:if test="${member ne null }">
								<a href="/Cart/ClientCartJSP/myPage.jsp">���� ������</a>
								<a href="MemberLogout.do?cmd=MemberLogout">�α׾ƿ�</a>
								<a href="cartList.do?cmd=cartList&id=${member.mid }">
									<span class="basket">
										��ٱ���
										<strong class="basketCount">(0)</strong>
									</span>
								</a>
								</c:if>
								<c:if test="${member eq null }">
								<a href="/Cart/ClientCartJSP/login.jsp">�α���</a>
								<a href="/Cart/ClientCartJSP/join.jsp">ȸ������</a>
								</c:if>
								<!-- <a href="#">�ֹ���ȸ</a> -->
								
							</div>
							<!-- �˻� -->
							<div class="topSearch">
								<div style="overflow: visible;">
									<form name="search_tform" method="post" action="productList.do?cmd=productList&job=main&search=yes">
										<input type="hidden" name="query" value="pname">
										<input type="text" name="data" value="" placeholder="Search">
										<a id="search" class="topSearchBt" href="#">
											<span>�˻�</span>
										</a>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="prMenu" style="margin-bottom: 0px;">
		<div class="fullsizeMargin">
			<div style="position: relative; width: 1200px; margin: 0 auto;">
				<div class="prCategory" style="width: 65%; white-space: nowrap; overflow: hidden;">
					<a href="productList.do?cmd=productList&job=main">��ǰ ���</a>
					<c:if test="${member ne null }">
					<a href="cartList.do?cmd=cartList&id=${member.mid }">��ٱ���</a>
					</c:if>
					<a href="QnAList.jsp">������ �亯</a>
					<a href="review.jsp">���� �ı�</a>
				</div>
				<div class="prBenefit"></div>
				<div class="clearBoth"></div>
			</div>
		</div>
	</div>
</div>
<!-- /header -->