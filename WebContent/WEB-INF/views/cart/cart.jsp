<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
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
	<c:if test="${cartSize == true}">
		<div class="cartss flex">
			<i class="fas fa-cart-plus"></i>
			<p>Không có sản phẩm nào trong giỏ hàng của bạn</p>
			<div class="click flex">
				<i class="far fa-hand-point-right"></i> 
				<a href="${pageContext.servletContext.contextPath}/index.htm">Tiếp tục mua hàng</a>
			</div>
		</div>
	</c:if>

	<c:if test="${cartSize == false}">
		<div class="carts flex container">
		<c:set var="idND" scope="session" value="0"></c:set>
			<div>
				<c:set var="gia" scope="session" value="0"></c:set>
				<c:forEach var="i" items="${cart}">
					<div class="info-product flex">
						<c:set var="gia" scope="session"
							value="${(i.soLuong * i.gia) + gia}" />
						<c:set var="idND" scope="session"
							value="${i.idNguoiDung}" />
						<div class="info-product-1">
							<img src="${pageContext.servletContext.contextPath}/img/${i.hinhAnh1 }" alt="">
							<h4>${i.tenSP }</h4>
							<p class="color">Màu: ${i.mau}</p>
							<p class="size">Size: ${i.size}</p>
						</div>
						<div class="quantity">
							<p>Số lượng:</p>
							<div class="quantity-under flex ">
								<a href ="${pageContext.servletContext.contextPath}/cart/sub/${i.idGH}.htm" class="sub">-</a>
								<input type="text" class="soluong ${i.idSP}" value="${i.soLuong }"
									name="soluong" disabled="disabled">
								<a href="${pageContext.servletContext.contextPath}/cart/add/${i.idGH}.htm" class="add">+</a>
							</div>

						</div>
						<div class="cost">
							<p>Giá:</p>
							<p>
								<f:formatNumber value="${i.gia}" type="currency" />
							</p>
						</div>
						<div class="delete">
							<a
								href="${pageContext.servletContext.contextPath}/cart/delete/${i.idGH}.htm">
								<i class="far fa-trash-alt"></i>
							</a>
						</div>
					</div>
				</c:forEach>
			</div>

			<div class="into-money">
				<div class="into-money-under flex">
					<p class="label">Thành tiền:</p>
					<p>
						<f:formatNumber value="${gia}" type="currency" />
					</p>
				</div>

				<a href="${pageContext.servletContext.contextPath}/cart/bill/${idND}.htm" class="pay">THANH TOÁN</a>
				<div class="click flex">
					<i class="far fa-hand-point-right"></i> <a
						href="${pageContext.servletContext.contextPath}/index.htm">Tiếp
						tục mua hàng</a>
				</div>
			</div>
		</div>
	</c:if>

	

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