<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/bootstrap.min.css">
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

	<div class="modal-register changechange adminchange">
		<div class="formwrapper flex changeinfo">
			<form:form modelAttribute="mauSP">
				<h2>THÊM MÀU</h2>
				<div class="password">
					<form:select path = "idSP" items="${idSP}" class="custom-select" />
				</div>
				<div class="password">
					<form:select path = "mau" items="${mau}" class="custom-select" />
					<form:errors path="mau"/>
				</div>
				<div class="password">
					<form:input path="soLuong" type="number" placeholder="Số lượng"/>
					<form:errors path="soLuong"/>
				</div>
				<button class="create">Thêm màu</button>
			</form:form>
		</div>
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
</body>
</html>