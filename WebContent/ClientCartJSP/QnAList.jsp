<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>질문과 답변</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/style.css">
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/style2.css">
<link rel="stylesheet" type="text/css" href="/Cart/CartCSS/user_style.css">
<script type="text/javascript" src="/Cart/CartJS/lib.js.php"></script>
<script type="text/javascript" src="/Cart/CartJS/jquery-1.10.2.min.js"></script>
<script type="text/javascript">var $j = jQuery.noConflict();</script>
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

					<table border="0" cellpadding="0" cellspacing="0" width="100%" style="margin-top: 30px">
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
									<div class="boardTop" style="width: 100% px;">
										<p class="boardContentsNum">총 39건</p>
										<div class="boardSearch">
											<form method="get" name="frm" action=""
												onsubmit="return schecked()">
												<input type="hidden" name="pagetype" value="list"> <input
													type="hidden" name="board" value="qna">
												<table border="0" cellpadding="0" cellspacing="0">
													<tbody>
														<tr>
															<td style="padding-right: 20px;"><label
																style="margin-right: 10px;"><input type="radio"
																	name="s_check" value="c" checked=""
																	style="margin: 0; width: 20px; height: 20px; vertical-align: middle;">
																	제목+내용</label> <label><input type="radio" name="s_check"
																	value="n"
																	style="margin: 0; width: 20px; height: 20px; vertical-align: middle;">
																	작성자</label></td>
															<td><select name="subCategory"
																onchange="changeTitle()"><option value="">-
																		선택 -</option>
																	<option value="상품관련">상품관련</option>
																	<option value="배송관련">배송관련</option>
																	<option value="주문결제">주문결제</option>
																	<option value="교환.반품">교환.반품</option>
																	<option value="회원">회원</option>
																	<option value="혜택">혜택</option>
																	<option value="기타">기타</option></select></td>
															<td><input type="text" name="search" value=""
																size="30"
																style="float: left; margin: 0px 10px; color: #999999; letter-spacing: -1px;"
																placeholder="검색어를 입력해 주세요." class="input"> <input
																type="submit"
																style="float: left; cursor: pointer; width: 70px; line-height: 30px; border: none; border-radius: 3px; background: #222222; color: #ffffff;"
																value="검색"></td>
														</tr>
													</tbody>
												</table>
											</form>
										</div>
									</div>

									<table cellpadding="0" cellspacing="0" width="100%" border="0"
										class="tableBoard"
										style="border-top: 2px solid #000000; table-layout: fixed;">
										<colgroup>
											<col width="50">
											<col width="">
											<col width="30">
											<col width="80">
											<col width="50">
											<col width="50">
											<col width="100">
										</colgroup>
										<tbody>
											<tr>
												<th>NO</th>
												<th>글제목</th>
												<th>파일</th>
												<th>글쓴이</th>
												<th><a href="javascript:boardSort('access');">조회수</a></th>
												<th><a href="javascript:boardSort('vote');">추천수</a></th>
												<th>작성일</th>
											</tr>
											<!-- 목록 부분 시작 -->
											<tr>
												<td style="background: #F6F5EE;"><img
													src="/Cart/imges/icon_notice.gif" border="0" alt=""></td>
												<td colspan="5"
													style="background: #F6F5EE; text-align: left; word-break: break-all;">
													<a
													href="board.php?pagetype=view&amp;board=qna&amp;view=1&amp;num=24&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=">청상아리
														백상아리 난 무서워~</a>
												</td>
												<td style="background: #F6F5EE;">2016/07/15</td>
											</tr>
											<!-- 목록 부분 시작 -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>39</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=67&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><strong>[상품관련]</strong>&nbsp;상품관련</a>
													&nbsp;&nbsp;</td>
												<td><img src="/Cart/imges/jpg.gif" border="0"></td>
												<td>이슬비</td>
												<td>84</td>
												<td>0</td>
												<td>2017/01/19</td>
											</tr>
											<!-- 목록 부분 끝 -->
											<!-- 목록 부분 시작 -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>38</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=66&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><strong>[교환.반품]</strong>&nbsp;교환.반품</a>
													&nbsp;&nbsp;</td>
												<td>-</td>
												<td>이슬비</td>
												<td>80</td>
												<td>0</td>
												<td>2017/01/05</td>
											</tr>
											<!-- 목록 부분 끝 -->
											<!-- 목록 부분 시작 -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>37</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=65&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><strong>[배송관련]</strong>&nbsp;배송관련수정2</a>
													&nbsp;&nbsp;</td>
												<td><img src="images/file_icon/jpg.gif" border="0"></td>
												<td>이슬비수정2</td>
												<td>84</td>
												<td>0</td>
												<td>2016/09/08</td>
											</tr>
											<!-- 목록 부분 끝 -->
											<!-- 목록 부분 시작 -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>36</td>
												<td style="text-align: left; word-break: break-all;"><strong>[상품관련]</strong>&nbsp;관리자
													또는 작성자에 의해 삭제되었습니다.... &nbsp;&nbsp;</td>
												<td>-</td>
												<td>이슬비</td>
												<td>2</td>
												<td>0</td>
												<td>2016/09/06</td>
											</tr>
											<!-- 목록 부분 끝 -->
											<!-- 목록 부분 시작 -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>35</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=43&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' ">뭉이</a>
													&nbsp;&nbsp;</td>
												<td>-</td>
												<td>문의</td>
												<td>98</td>
												<td>0</td>
												<td>2016/08/26</td>
											</tr>
											<!-- 목록 부분 끝 -->
											<!-- 목록 부분 시작 -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>34</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=44&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><img
														src="/Cart/imges/x.gif" width="2&quot;" height="2"
														border="0"><img src="/Cart/imges/re_mark.gif"
														border="0" align="absmiddle">[답변]뭉이</a> &nbsp;&nbsp;</td>
												<td>-</td>
												<td>답변테스트</td>
												<td>18</td>
												<td>0</td>
												<td>2016/08/26</td>
											</tr>
											<!-- 목록 부분 끝 -->
											<!-- 목록 부분 시작 -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>33</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=40&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><strong>[상품관련]</strong>&nbsp;이슬비</a>
													&nbsp;&nbsp;</td>
												<td>-</td>
												<td>이슬비</td>
												<td>86</td>
												<td>0</td>
												<td>2016/08/26</td>
											</tr>
											<!-- 목록 부분 끝 -->
											<!-- 목록 부분 시작 -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>32</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=41&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><img
														src="/Cart/imges/x.gif" width="2&quot;" height="2"
														border="0"><img src="/Cart/imges/re_mark.gif"
														border="0" align="absmiddle">[답변]이슬비</a> &nbsp;&nbsp;</td>
												<td>-</td>
												<td>관리자</td>
												<td>16</td>
												<td>0</td>
												<td>2016/08/26</td>
											</tr>
											<!-- 목록 부분 끝 -->
											<!-- 목록 부분 시작 -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>31</td>
												<td style="text-align: left; word-break: break-all;"><img
													src="/Cart/imges/lock.gif" border="0" align="absmiddle"
													style="vertical-align: middle;"> <a href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=38&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><strong>[배송관련]</strong>&nbsp;테스트</a>
													&nbsp;&nbsp;</td>
												<td>-</td>
												<td>8835</td>
												<td>0</td>
												<td>0</td>
												<td>2016/07/28</td>
											</tr>
											<!-- 목록 부분 끝 -->
											<!-- 목록 부분 시작 -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>30</td>
												<td style="text-align: left; word-break: break-all;"><img
													src="/Cart/imges/lock.gif" border="0" align="absmiddle"
													style="vertical-align: middle;"> <a href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=39&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><img
														src="/Cart/imges/x.gif" width="2&quot;" height="2"
														border="0"><img src="/Cart/imges/re_mark.gif"
														border="0" align="absmiddle">[답변]테스트</a> &nbsp;&nbsp;</td>
												<td>-</td>
												<td>관리자</td>
												<td>0</td>
												<td>0</td>
												<td>2016/07/28</td>
											</tr>
											<!-- 목록 부분 끝 -->
											<!-- 목록 부분 시작 -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>29</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=28&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><strong>[상품관련]</strong>&nbsp;테스트</a>
													&nbsp;&nbsp;</td>
												<td>-</td>
												<td>이슬비</td>
												<td>13</td>
												<td>0</td>
												<td>2016/07/26</td>
											</tr>
											<!-- 목록 부분 끝 -->
											<!-- 목록 부분 시작 -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>28</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=27&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><strong>[배송관련]</strong>&nbsp;테스트</a>
													&nbsp;&nbsp;</td>
												<td>-</td>
												<td>이슬비</td>
												<td>13</td>
												<td>0</td>
												<td>2016/07/26</td>
											</tr>
											<!-- 목록 부분 끝 -->
											<!-- 목록 부분 시작 -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>27</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=24&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' ">청상아리
														백상아리 난 무서워~</a>&nbsp;<!--<img src="/Cart/imges/icon_memo.gif" border="0" align="absmiddle">&nbsp;-->
													<span
													style="color: #ff0000; font-size: 11px; font-weight: bold">[2]</span>
													&nbsp;&nbsp;</td>
												<td>-</td>
												<td>제이붐</td>
												<td>54</td>
												<td>0</td>
												<td>2016/07/15</td>
											</tr>
											<!-- 목록 부분 끝 -->
											<!-- 목록 부분 시작 -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>26</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=23&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><strong>[기타]</strong>&nbsp;에디터
														동작 테스트~</a> &nbsp;&nbsp;</td>
												<td>-</td>
												<td>관리자</td>
												<td>20</td>
												<td>0</td>
												<td>2016/07/14</td>
											</tr>
											<!-- 목록 부분 끝 -->
											<!-- 목록 부분 시작 -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>25</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=22&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' ">우와아앙~</a>
													&nbsp;&nbsp;<a
													href="../front/productdetail.php?productcode=004002000000000005"
													onmouseover="window.status='상품상세조회';return true;"
													onmouseout="window.status='';return true;"><span
														style="color: #999999; font-size: 11px; letter-spacing: -1px; font-family: 돋움">[glasses
															&amp; etc] 마법향수 TOMMY LELA7... </span><img
														src="/Cart/imges/btn_prview.gif" border="0"
														align="absmiddle" style="vertical-align: middle"></a></td>
												<td>-</td>
												<td>겟몰</td>
												<td>17</td>
												<td>0</td>
												<td>2016/07/04</td>
											</tr>
											<!-- 목록 부분 끝 -->
											<!-- 목록 부분 시작 -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>24</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=21&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' ">대빵
														큰 이미지 ...</a> &nbsp;&nbsp;</td>
												<td>-</td>
												<td>겟몰</td>
												<td>14</td>
												<td>0</td>
												<td>2016/07/04</td>
											</tr>
											<!-- 목록 부분 끝 -->
											<!-- 목록 부분 시작 -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>23</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=20&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><strong>[회원]</strong>&nbsp;아주
														그냥 막 그냥 ...</a> &nbsp;&nbsp;<a
													href="../front/productdetail.php?productcode=004001000000000003"
													onmouseover="window.status='상품상세조회';return true;"
													onmouseout="window.status='';return true;"><span
														style="color: #999999; font-size: 11px; letter-spacing: -1px; font-family: 돋움">[bag
															&amp; shoes] 클래식 비즈니스 백_BL... </span><img
														src="/Cart/imges/btn_prview.gif" border="0"
														align="absmiddle" style="vertical-align: middle"></a></td>
												<td>-</td>
												<td>겟몰</td>
												<td>12</td>
												<td>0</td>
												<td>2016/07/04</td>
											</tr>
											<!-- 목록 부분 끝 -->
											<!-- 목록 부분 시작 -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>22</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=19&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><strong>[상품관련]</strong>&nbsp;아주아주
														신기한 노래~ 정말정말 재밌는 노래~...</a> &nbsp;&nbsp;<a
													href="../front/productdetail.php?productcode=003000000000000001"
													onmouseover="window.status='상품상세조회';return true;"
													onmouseout="window.status='';return true;"><span
														style="color: #999999; font-size: 11px; letter-spacing: -1px; font-family: 돋움">[WOMEN]
															거위털 베스트_H1... </span><img src="/Cart/imges/btn_prview.gif"
														border="0" align="absmiddle"
														style="vertical-align: middle"></a></td>
												<td>-</td>
												<td>겟몰</td>
												<td>9</td>
												<td>0</td>
												<td>2016/07/04</td>
											</tr>
											<!-- 목록 부분 끝 -->
											<!-- 목록 부분 시작 -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>21</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=7&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><strong>[배송관련]</strong>&nbsp;말머리
														없음 ;;</a> &nbsp;&nbsp;</td>
												<td>-</td>
												<td>김길동</td>
												<td>10</td>
												<td>0</td>
												<td>2016/06/21</td>
											</tr>
											<!-- 목록 부분 끝 -->
											<!-- 목록 부분 시작 -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>20</td>
												<td style="text-align: left; word-break: break-all;"><img
													src="/Cart/imges/lock.gif" border="0" align="absmiddle"
													style="vertical-align: middle;"> <a href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=6&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' ">회원
														잠금글 테스트1</a> &nbsp;&nbsp;</td>
												<td>-</td>
												<td>괴발자</td>
												<td>10</td>
												<td>0</td>
												<td>2016/06/21</td>
											</tr>
											<!-- 목록 부분 끝 -->
										</tbody>
									</table>

									<div style="text-align: right;">
										<a
											href="/Cart/ClientCartJSP/QnA.jsp?pagetype=write&amp;board=qna&amp;exec=write&amp;pridx=122"><img
											src="/Cart/imges/butt-write.gif" border="0"></a>
									</div> 
									<input type="hidden" name="sort" id="sort" value="">
									<div class="pageingarea" style="text-align: center; width: 100%; margin-bottom: 20px;">
										<a href="#">
											<img src="/Cart/imges/btn_page_start.gif" border="0" alt="처음으로" class="blockPageBtn">
										</a>
										<a href="#">
											<img src="/Cart/imges/btn_page_prev.gif" border="0" alt="이전 10 페이지" class="blockPageBtn">
										</a>
											<span class="currpageitem">1</span>
										<a href="#" rel="external">
											<span class="pageitem">2</span>
										</a>
										<a href="#">
											<img src="/Cart/imges/btn_page_next.gif" border="0" alt="다음 10 페이지" class="blockPageBtn"></a>
										<a href="#">
											<img src="/Cart/imges/btn_page_end.gif" border="0" alt="마지막" class="blockPageBtn">
										</a>
									</div>
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