<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>������ �亯</title>
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
				<!-- ���κ��� ������ : START -->
				<div class="wrapContent" style="width: 970px">

					<table border="0" cellpadding="0" cellspacing="0" width="100%" style="margin-top: 30px">
						<tbody>
							<tr>
								<td align="center">
									<!-- �Խ��� Ÿ��Ʋ �� �ٷΰ��� ��ũ -->
									<table cellpadding="0" cellspacing="0" width="100%"
										style="table-layout: fixed">
										<tbody>
											<tr>
												<td><div class="subpageTitle">������ �亯</div></td>
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
										<p class="boardContentsNum">�� 39��</p>
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
																	����+����</label> <label><input type="radio" name="s_check"
																	value="n"
																	style="margin: 0; width: 20px; height: 20px; vertical-align: middle;">
																	�ۼ���</label></td>
															<td><select name="subCategory"
																onchange="changeTitle()"><option value="">-
																		���� -</option>
																	<option value="��ǰ����">��ǰ����</option>
																	<option value="��۰���">��۰���</option>
																	<option value="�ֹ�����">�ֹ�����</option>
																	<option value="��ȯ.��ǰ">��ȯ.��ǰ</option>
																	<option value="ȸ��">ȸ��</option>
																	<option value="����">����</option>
																	<option value="��Ÿ">��Ÿ</option></select></td>
															<td><input type="text" name="search" value=""
																size="30"
																style="float: left; margin: 0px 10px; color: #999999; letter-spacing: -1px;"
																placeholder="�˻�� �Է��� �ּ���." class="input"> <input
																type="submit"
																style="float: left; cursor: pointer; width: 70px; line-height: 30px; border: none; border-radius: 3px; background: #222222; color: #ffffff;"
																value="�˻�"></td>
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
												<th>������</th>
												<th>����</th>
												<th>�۾���</th>
												<th><a href="javascript:boardSort('access');">��ȸ��</a></th>
												<th><a href="javascript:boardSort('vote');">��õ��</a></th>
												<th>�ۼ���</th>
											</tr>
											<!-- ��� �κ� ���� -->
											<tr>
												<td style="background: #F6F5EE;"><img
													src="/Cart/imges/icon_notice.gif" border="0" alt=""></td>
												<td colspan="5"
													style="background: #F6F5EE; text-align: left; word-break: break-all;">
													<a
													href="board.php?pagetype=view&amp;board=qna&amp;view=1&amp;num=24&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=">û��Ƹ�
														���Ƹ� �� ������~</a>
												</td>
												<td style="background: #F6F5EE;">2016/07/15</td>
											</tr>
											<!-- ��� �κ� ���� -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>39</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=67&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><strong>[��ǰ����]</strong>&nbsp;��ǰ����</a>
													&nbsp;&nbsp;</td>
												<td><img src="/Cart/imges/jpg.gif" border="0"></td>
												<td>�̽���</td>
												<td>84</td>
												<td>0</td>
												<td>2017/01/19</td>
											</tr>
											<!-- ��� �κ� �� -->
											<!-- ��� �κ� ���� -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>38</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=66&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><strong>[��ȯ.��ǰ]</strong>&nbsp;��ȯ.��ǰ</a>
													&nbsp;&nbsp;</td>
												<td>-</td>
												<td>�̽���</td>
												<td>80</td>
												<td>0</td>
												<td>2017/01/05</td>
											</tr>
											<!-- ��� �κ� �� -->
											<!-- ��� �κ� ���� -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>37</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=65&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><strong>[��۰���]</strong>&nbsp;��۰��ü���2</a>
													&nbsp;&nbsp;</td>
												<td><img src="images/file_icon/jpg.gif" border="0"></td>
												<td>�̽������2</td>
												<td>84</td>
												<td>0</td>
												<td>2016/09/08</td>
											</tr>
											<!-- ��� �κ� �� -->
											<!-- ��� �κ� ���� -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>36</td>
												<td style="text-align: left; word-break: break-all;"><strong>[��ǰ����]</strong>&nbsp;������
													�Ǵ� �ۼ��ڿ� ���� �����Ǿ����ϴ�.... &nbsp;&nbsp;</td>
												<td>-</td>
												<td>�̽���</td>
												<td>2</td>
												<td>0</td>
												<td>2016/09/06</td>
											</tr>
											<!-- ��� �κ� �� -->
											<!-- ��� �κ� ���� -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>35</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=43&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' ">����</a>
													&nbsp;&nbsp;</td>
												<td>-</td>
												<td>����</td>
												<td>98</td>
												<td>0</td>
												<td>2016/08/26</td>
											</tr>
											<!-- ��� �κ� �� -->
											<!-- ��� �κ� ���� -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>34</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=44&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><img
														src="/Cart/imges/x.gif" width="2&quot;" height="2"
														border="0"><img src="/Cart/imges/re_mark.gif"
														border="0" align="absmiddle">[�亯]����</a> &nbsp;&nbsp;</td>
												<td>-</td>
												<td>�亯�׽�Ʈ</td>
												<td>18</td>
												<td>0</td>
												<td>2016/08/26</td>
											</tr>
											<!-- ��� �κ� �� -->
											<!-- ��� �κ� ���� -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>33</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=40&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><strong>[��ǰ����]</strong>&nbsp;�̽���</a>
													&nbsp;&nbsp;</td>
												<td>-</td>
												<td>�̽���</td>
												<td>86</td>
												<td>0</td>
												<td>2016/08/26</td>
											</tr>
											<!-- ��� �κ� �� -->
											<!-- ��� �κ� ���� -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>32</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=41&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><img
														src="/Cart/imges/x.gif" width="2&quot;" height="2"
														border="0"><img src="/Cart/imges/re_mark.gif"
														border="0" align="absmiddle">[�亯]�̽���</a> &nbsp;&nbsp;</td>
												<td>-</td>
												<td>������</td>
												<td>16</td>
												<td>0</td>
												<td>2016/08/26</td>
											</tr>
											<!-- ��� �κ� �� -->
											<!-- ��� �κ� ���� -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>31</td>
												<td style="text-align: left; word-break: break-all;"><img
													src="/Cart/imges/lock.gif" border="0" align="absmiddle"
													style="vertical-align: middle;"> <a href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=38&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><strong>[��۰���]</strong>&nbsp;�׽�Ʈ</a>
													&nbsp;&nbsp;</td>
												<td>-</td>
												<td>8835</td>
												<td>0</td>
												<td>0</td>
												<td>2016/07/28</td>
											</tr>
											<!-- ��� �κ� �� -->
											<!-- ��� �κ� ���� -->
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
														border="0" align="absmiddle">[�亯]�׽�Ʈ</a> &nbsp;&nbsp;</td>
												<td>-</td>
												<td>������</td>
												<td>0</td>
												<td>0</td>
												<td>2016/07/28</td>
											</tr>
											<!-- ��� �κ� �� -->
											<!-- ��� �κ� ���� -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>29</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=28&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><strong>[��ǰ����]</strong>&nbsp;�׽�Ʈ</a>
													&nbsp;&nbsp;</td>
												<td>-</td>
												<td>�̽���</td>
												<td>13</td>
												<td>0</td>
												<td>2016/07/26</td>
											</tr>
											<!-- ��� �κ� �� -->
											<!-- ��� �κ� ���� -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>28</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=27&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><strong>[��۰���]</strong>&nbsp;�׽�Ʈ</a>
													&nbsp;&nbsp;</td>
												<td>-</td>
												<td>�̽���</td>
												<td>13</td>
												<td>0</td>
												<td>2016/07/26</td>
											</tr>
											<!-- ��� �κ� �� -->
											<!-- ��� �κ� ���� -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>27</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=24&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' ">û��Ƹ�
														���Ƹ� �� ������~</a>&nbsp;<!--<img src="/Cart/imges/icon_memo.gif" border="0" align="absmiddle">&nbsp;-->
													<span
													style="color: #ff0000; font-size: 11px; font-weight: bold">[2]</span>
													&nbsp;&nbsp;</td>
												<td>-</td>
												<td>���̺�</td>
												<td>54</td>
												<td>0</td>
												<td>2016/07/15</td>
											</tr>
											<!-- ��� �κ� �� -->
											<!-- ��� �κ� ���� -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>26</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=23&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><strong>[��Ÿ]</strong>&nbsp;������
														���� �׽�Ʈ~</a> &nbsp;&nbsp;</td>
												<td>-</td>
												<td>������</td>
												<td>20</td>
												<td>0</td>
												<td>2016/07/14</td>
											</tr>
											<!-- ��� �κ� �� -->
											<!-- ��� �κ� ���� -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>25</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=22&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' ">��;ƾ�~</a>
													&nbsp;&nbsp;<a
													href="../front/productdetail.php?productcode=004002000000000005"
													onmouseover="window.status='��ǰ����ȸ';return true;"
													onmouseout="window.status='';return true;"><span
														style="color: #999999; font-size: 11px; letter-spacing: -1px; font-family: ����">[glasses
															&amp; etc] ������� TOMMY LELA7... </span><img
														src="/Cart/imges/btn_prview.gif" border="0"
														align="absmiddle" style="vertical-align: middle"></a></td>
												<td>-</td>
												<td>�ٸ�</td>
												<td>17</td>
												<td>0</td>
												<td>2016/07/04</td>
											</tr>
											<!-- ��� �κ� �� -->
											<!-- ��� �κ� ���� -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>24</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=21&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' ">�뻧
														ū �̹��� ...</a> &nbsp;&nbsp;</td>
												<td>-</td>
												<td>�ٸ�</td>
												<td>14</td>
												<td>0</td>
												<td>2016/07/04</td>
											</tr>
											<!-- ��� �κ� �� -->
											<!-- ��� �κ� ���� -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>23</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=20&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><strong>[ȸ��]</strong>&nbsp;����
														�׳� �� �׳� ...</a> &nbsp;&nbsp;<a
													href="../front/productdetail.php?productcode=004001000000000003"
													onmouseover="window.status='��ǰ����ȸ';return true;"
													onmouseout="window.status='';return true;"><span
														style="color: #999999; font-size: 11px; letter-spacing: -1px; font-family: ����">[bag
															&amp; shoes] Ŭ���� ����Ͻ� ��_BL... </span><img
														src="/Cart/imges/btn_prview.gif" border="0"
														align="absmiddle" style="vertical-align: middle"></a></td>
												<td>-</td>
												<td>�ٸ�</td>
												<td>12</td>
												<td>0</td>
												<td>2016/07/04</td>
											</tr>
											<!-- ��� �κ� �� -->
											<!-- ��� �κ� ���� -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>22</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=19&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><strong>[��ǰ����]</strong>&nbsp;���־���
														�ű��� �뷡~ �������� ��մ� �뷡~...</a> &nbsp;&nbsp;<a
													href="../front/productdetail.php?productcode=003000000000000001"
													onmouseover="window.status='��ǰ����ȸ';return true;"
													onmouseout="window.status='';return true;"><span
														style="color: #999999; font-size: 11px; letter-spacing: -1px; font-family: ����">[WOMEN]
															������ ����Ʈ_H1... </span><img src="/Cart/imges/btn_prview.gif"
														border="0" align="absmiddle"
														style="vertical-align: middle"></a></td>
												<td>-</td>
												<td>�ٸ�</td>
												<td>9</td>
												<td>0</td>
												<td>2016/07/04</td>
											</tr>
											<!-- ��� �κ� �� -->
											<!-- ��� �κ� ���� -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>21</td>
												<td style="text-align: left; word-break: break-all;"><a
													href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=7&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' "><strong>[��۰���]</strong>&nbsp;���Ӹ�
														���� ;;</a> &nbsp;&nbsp;</td>
												<td>-</td>
												<td>��浿</td>
												<td>10</td>
												<td>0</td>
												<td>2016/06/21</td>
											</tr>
											<!-- ��� �κ� �� -->
											<!-- ��� �κ� ���� -->
											<tr bgcolor="white"
												onmouseover="this.style.backgroundColor='#F6F6F6';"
												onmouseout="this.style.backgroundColor='';">
												<td>20</td>
												<td style="text-align: left; word-break: break-all;"><img
													src="/Cart/imges/lock.gif" border="0" align="absmiddle"
													style="vertical-align: middle;"> <a href="#"
													onclick="location.href='board.php?pagetype=view&amp;view=1&amp;num=6&amp;board=qna&amp;block=0&amp;gotopage=1&amp;search=&amp;s_check=&amp;boardsep=' ">ȸ��
														��ݱ� �׽�Ʈ1</a> &nbsp;&nbsp;</td>
												<td>-</td>
												<td>������</td>
												<td>10</td>
												<td>0</td>
												<td>2016/06/21</td>
											</tr>
											<!-- ��� �κ� �� -->
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
											<img src="/Cart/imges/btn_page_start.gif" border="0" alt="ó������" class="blockPageBtn">
										</a>
										<a href="#">
											<img src="/Cart/imges/btn_page_prev.gif" border="0" alt="���� 10 ������" class="blockPageBtn">
										</a>
											<span class="currpageitem">1</span>
										<a href="#" rel="external">
											<span class="pageitem">2</span>
										</a>
										<a href="#">
											<img src="/Cart/imges/btn_page_next.gif" border="0" alt="���� 10 ������" class="blockPageBtn"></a>
										<a href="#">
											<img src="/Cart/imges/btn_page_end.gif" border="0" alt="������" class="blockPageBtn">
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