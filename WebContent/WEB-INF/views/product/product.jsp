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

	<div class="content container flex">
		<div class="content-left">
			<ul>
				<c:forEach var="a" items="${nhomsp}">
					<c:if test="${a.idDM eq danhmuc.idDM }">
						<li><a
							href="${pageContext.request.contextPath}/product/product/${danhmuc.idDM}/${a.idNhom}.htm">${a.tenNhom}</a></li>
					</c:if>
				</c:forEach>
			</ul>
		</div>

		<div class=" content-right flex">
			<c:forEach var="i" items="${sp}">
				<c:if test="${i.idNhom eq nhom.idNhom}">
					<div class="product pr">
						<a
						href="${pageContext.request.contextPath}/product/detail/${i.idSP}.htm">
						<img class="first" src="${pageContext.request.contextPath}/img/${i.hinhAnh1 }" alt="">
					</a> <img class="second" src="${pageContext.request.contextPath}/img/${i.hinhAnh2 }" alt="">

					<div class="info">
						<form action="${pageContext.request.contextPath}/cart/cart.htm"
							method="post" class="buy">
							<input type="hidden" value="${i.idSP}" name="idSP">
							<div class="color flex">
								<c:forEach var="t" items="${mausp}">
									<c:if test="${i.idSP eq t.idSP}">
										<c:if test="${t.soLuong != 0 }">
											<label for="${t.maMau}"> <input type="radio"
												id="${t.maMau}" class="${t.maMau}" name="color"
												value="${t.mau}" checked>
											</label>
										</c:if>
									</c:if>
								</c:forEach>
							</div>

							<div class="size flex">
								<c:forEach var="s" items="${sizesp}">
									<c:if test="${i.idSP eq s.idSP}">
										<c:if test="${s.soLuong != 0 }">
											<label for="${s.maSize}"> <input type="radio"
												id="${s.maSize}" class="${s.maSize}" name="size"
												value="${s.size}" checked> <span class="${s.maSize}">${s.size}</span>
											</label>
										</c:if>
									</c:if>
								</c:forEach>
							</div>
							<div class="choose">
								<button><s:message code="addToCart" /></button>
							</div>
						</form>
						<h5>${i.tenSP}</h5>
						<p>
							<f:formatNumber value="${i.gia}" type="currency" />
						</p>
					</div>
					</div>
				</c:if>
			</c:forEach>
		</div>
	</div>


	<div class="up">
		<i class="fas fa-chevron-up"></i>
	</div>

	<jsp:include page="/footer.htm"></jsp:include>

	<script src="${pageContext.servletContext.contextPath}/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/js/owl.carousel.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/js/detai.js"></script>
</body>
</html>