<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/all.min.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/style.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/owl.carousel.min.css">

<title>WEB BAN QUAN AO</title>
<base href="${pageContext.servletContext.contextPath}/">
</head>
<body>
	<jsp:include page="/header.htm"></jsp:include>
	
	<div class="admin container">
		<a href="${pageContext.servletContext.contextPath}/admin/product/homeproduct.htm" class="manage"><s:message code="productManagement" /></a> 
		<%-- <a href="${pageContext.servletContext.contextPath}/admin/advertisement/homeadvertisement.htm" class="manage">Quản lý quảng cáo</a>  --%>
		<a href="${pageContext.servletContext.contextPath}/admin/size/homesize.htm" class="manage"><s:message code="sizeManagement" /></a> 
		<a href="${pageContext.servletContext.contextPath}/admin/color/homecolor.htm" class="manage"><s:message code="colorManagement" /></a> 
		<a href="${pageContext.servletContext.contextPath}/admin/bill/homebill.htm" class="manage"><s:message code="invoiceManagement" /></a> 
	<%-- 	<a href="${pageContext.servletContext.contextPath}/admin/group/homegroup.htm" class="manage">Quản lý nhóm sản phẩm</a>  --%>
	</div>

	<div class="up">
		<i class="fas fa-chevron-up"></i>
	</div>

	<jsp:include page="/footer.htm"></jsp:include>
	
	<script
		src="${pageContext.servletContext.contextPath}/js/jquery-3.3.1.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/js/owl.carousel.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/js/detai.js"></script>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$('#checkBoxAll').click(function(e) {
				if($(this).is(":checked")) 
					$('.checkbox').prop('checked', true);
				else 
					$('.checkbox').prop('checked', false);
			});
		});
	</script>
</body>
</html>