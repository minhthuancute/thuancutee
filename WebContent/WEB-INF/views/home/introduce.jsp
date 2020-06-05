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

	<div class="container ">
		<div class="intro">
			<p>
				<span>Quesu</span> <s:message code="line1" />
			</p>
			<p><s:message code="line2" /></p>
			<p><s:message code="line3" /></p>
			<p><s:message code="line4" /></p>
			<p><s:message code="line5" /></p>
			<p><s:message code="line6" /></p>
			<p><s:message code="line7" /></p>
			<p><s:message code="line8" /></p>
			<p><s:message code="line9" /></p>
			
			<div class="flex sendMail">
				<h4><s:message code="line10" /> <i class="fas fa-heart" style="color: red"></i>.</h4>
				<div class="send flex">
					<!-- <input type="text" placeholder="Phản hồi của bạn">
					<a><i class="fas fa-paper-plane"></i></a> -->
				</div>
			</div>
			
		</div>
	</div>



	<!-- <div class="up">
		<i class="fas fa-chevron-up"></i>
	</div> -->

	<jsp:include page="/footer.htm"></jsp:include>
</body>
</html>