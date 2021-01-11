<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>

	<!-- Bootstrap core CSS -->
	<link href="<c:url value='/template/web/vendor/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet" type="text/css">
	
	<!-- Custom styles for this template -->
	<link href="<c:url value='/template/web/css/small-business.css'/>" rel="stylesheet" type="text/css">
	<!-- phan trang -->
	<!-- Bootstrap core JavaScript -->
	<script src="<c:url value='/template/web/vendor/jquery/jquery.min.js'/>"></script>
	<script src="<c:url value='/template/web/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
	<!-- phan trang -->
	<script src="<c:url value='/template/admin/paging/jquery.twbsPagination.js' />"></script>
	<script src="<c:url value='/template/admin/assets/js/bootstrap.min.js' />"></script>
	<!-- Date picker -->
	<link href="<c:url value='/template/web/otEdit/css/register.css'/>" rel="stylesheet" type="text/css">
	<link href="<c:url value='/template/web/otEdit/css/themes/base/jquery-ui.css'/>" rel="stylesheet" type="text/css">
	<script src="<c:url value='/template/web/otEdit/js/jquery-ui.js'/>"></script>
	<!-- Month picker -->
    <link rel="stylesheet" href="<c:url value='/template/monthPicker/MonthPicker.min.css' />" />
    <link rel="stylesheet" href="<c:url value='/template/monthPicker/examples.css' />" />
    <script src="<c:url value='/template/monthPicker/MonthPicker.min.js' />"></script>
</head>
<body>
	<!-- Navigation -->
	<%@ include file="/common/web/header.jsp" %>

	<dec:body/>

	<!-- Footer -->
	<%@ include file="/common/web/footer.jsp" %>
	
</body>
</html>