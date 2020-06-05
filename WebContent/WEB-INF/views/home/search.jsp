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

<!-- <style>
	.search-product {
		flex-wrap: wrap;
		margin-bottom: 50px;
	}
	.product {
		position: relative;
		width: 260px;
		height: 332px;
		margin-bottom: 50px;
		margin-top: 30px;
		margin-right: 35px;
	}
	.product img {
		width: 260px;
		height: 332px;
	}
	.product .info {
		position: absolute;
		left: 0;
		bottom: -59px;
		width: 100%;
	}
</style> -->
</head>	


<body>

	<jsp:include page="/header.htm"></jsp:include>
	
	<div class="search-product flex container">
			<c:forEach var="i" items="${sanPham}">
				<div class="product">
					<a href="${pageContext.request.contextPath}/product/detail/${i.idSP}.htm"> <img class="first" src="${pageContext.request.contextPath}/img/${i.hinhAnh1 }" alt=""> </a> 
					<img class="second" src="${pageContext.request.contextPath}/img/${i.hinhAnh2 }" alt="">

					<div class="info">
						<form action="${pageContext.request.contextPath}/cart/cart.htm" method="post" class="buy">
							<input type="hidden" value = "${i.idSP}" name = "idSP">
							<div class="color flex">
								<c:forEach var="t" items="${mausp}">
									<c:if test="${i.idSP eq t.idSP}">
										<label for="${t.maMau}"> 
											<input type="radio" id="${t.maMau}" class="${t.maMau}" name="color" value="${t.mau}" checked>
										</label>
									</c:if>
								</c:forEach>
							</div>

							<div class="size flex">
								<c:forEach var="s" items="${sizesp}">
									<c:if test="${i.idSP eq s.idSP}">
										<label for="${s.size}"> <input type="radio"
											id="${s.size}" name="size" value="${s.size}" checked> 
											<span class="${s.size}">${s.size}</span>
										</label>
									</c:if>
								</c:forEach>

							</div>
							<div class="choose">
								<button><s:message code="addToCart" /></button>
							</div>
						</form>
						<h5>${i.tenSP}</h5>
						<p> <f:formatNumber value="${i.gia}" type="currency" /> </p>
					</div>
				</div>
			</c:forEach>
		</div>
		
		<div class="up">
			<i class="fas fa-chevron-up"></i>
		</div>
		
		<jsp:include page="/footer.htm"></jsp:include>
</body>
</html>