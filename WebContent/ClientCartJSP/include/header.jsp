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
								<a href="/Cart/ClientCartJSP/myPage.jsp">마이 페이지</a>
								<a href="MemberLogout.do?cmd=MemberLogout">로그아웃</a>
								<a href="cartList.do?cmd=cartList&id=${member.mid }">
									<span class="basket">
										장바구니
										<strong class="basketCount">(0)</strong>
									</span>
								</a>
								</c:if>
								<c:if test="${member eq null }">
								<a href="/Cart/ClientCartJSP/login.jsp">로그인</a>
								<a href="/Cart/ClientCartJSP/join.jsp">회원가입</a>
								</c:if>
								<!-- <a href="#">주문조회</a> -->
								
							</div>
							<!-- 검색 -->
							<div class="topSearch">
								<div style="overflow: visible;">
									<form name="search_tform" method="post" action="productList.do?cmd=productList&job=main&search=yes">
										<input type="hidden" name="query" value="pname">
										<input type="text" name="data" value="" placeholder="Search">
										<a id="search" class="topSearchBt" href="#">
											<span>검색</span>
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
					<a href="productList.do?cmd=productList&job=main">상품 목록</a>
					<c:if test="${member ne null }">
					<a href="cartList.do?cmd=cartList&id=${member.mid }">장바구니</a>
					</c:if>
					<a href="QnAList.jsp">질문과 답변</a>
					<a href="review.jsp">구매 후기</a>
				</div>
				<div class="prBenefit"></div>
				<div class="clearBoth"></div>
			</div>
		</div>
	</div>
</div>
<!-- /header -->