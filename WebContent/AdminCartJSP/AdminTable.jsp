<%@page import="com.sun.javafx.fxml.BeanAdapter"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="/Cart/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="/Cart/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
<link href="/Cart/assets/styles.css" rel="stylesheet" media="screen">
<link href="/Cart/assets/DT_bootstrap.css" rel="stylesheet" media="screen">
</head>
<body>
	<div class="row-fluid">
		<!-- block -->
		<div class="block">
			<div class="navbar navbar-inner block-header">
				<div class="muted pull-left">��ü ����</div>
			</div>
			<div class="block-content collapse in">
				<div class="span12">
					<div class="table-toolbar">
						<div class="btn-group">
						</div>
						<div class="btn-group pull-right">
						</div>
						<br>
					</div>

					<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example2">
						<thead>
							<tr>
								<th>�������ȣ</th>
								<th>��ü���̵�</th>
								<th>��й�ȣ</th>
								<th>ȸ���</th>
								<th>��ǥ�ڼ���</th>
								<th>�����ȣ</th>
								<th>ȸ���ּ�</th>
								<th>�������</th>
								<th>ȸ����ȭ</th>
								<th>����ڸ�</th>
								<th>�޴���ȭ</th>
								<th>����</th>
							</tr>
						<tbody>
							<c:forEach var="i" items="${list }">
							<tr class="odd gradeX">
								<td class="center">${i.cnum}</td>
								<td class="center">${i.cid}</td>
								<td class="center">${i.cpw}</td>
								<td class="center">${i.cname}</td>
								<td class="center">${i.ceoname}</td>
								<td class="center">${i.compost}</td>
								<td class="center">${i.comaddress}</td>
								<td class="center">${i.comkind}</td>
								<td class="center">${i.ccall}</td>
								<td class="center">${i.chargeman}</td>
								<td class="center">${i.cmphone}</td>
								<td class="center">
									<a href="#"><span class="button">����</span></a>
									<a href="#"><span class="button" style="background-color: red">����</span></a>
								</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!-- /block -->
	</div>

	<!--/.fluid-container-->
	<script src="/Cart/vendors/jquery.dataTables.min.js"></script>
	<script src="/Cart/assets/scripts.js"></script>
	<script src="/Cart/assets/DT_bootstrap.js"></script>
	<!-- you need to include the shieldui css and js assets in order for the components to work -->
	<script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
	<script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/jszip.min.js"></script>
</body>
</html>