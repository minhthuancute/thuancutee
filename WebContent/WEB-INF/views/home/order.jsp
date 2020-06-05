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

	<c:if test="${bill != null}">
		<div class="carts flex container bills">
			<div>
				<c:forEach var="i" items="${bill}">
					<div class="billProduct flex">
						<div>
							<c:forEach var="a" items="${billDetail}">
								<c:if test="${i.idHD eq a.idHD }">
									<div class="info-product flex">
										<div class="info-product-1">
											<img src="${pageContext.servletContext.contextPath}/img/${a.hinhAnh1 }" alt="">
											<h4>${a.tenSP }</h4>
											<p class="color">Màu: ${a.mau}</p>
											<p class="size">Size: ${a.size}</p>
										</div>
										<div class="quantity">
											<p>Số lượng:</p>
											<div class="quantity-under flex ">
												<input type="text" class="soluong ${a.idSP}"
													value="${a.soLuong }" name="soluong" disabled="disabled">
											</div>
										</div>
										<div class="cost">
											<p>Giá:</p>
											<p>
												<f:formatNumber value="${a.donGia}" type="currency" />
											</p>
										</div>
										<div class="cost">
											<p>Ngày lập:</p>
											<p>${i.ngayLap}</p>
										</div>
										<div class="cost">
											<p>Trạng thái:</p>
											<p>${i.trangThai}</p>
										</div>
									</div>
								</c:if>
							</c:forEach>
						</div>

						<c:if test="${i.trangThai eq 'Tiếp Nhận' }">
							<div class="delete">
								<a href="${pageContext.servletContext.contextPath}/home/delete/${i.idHD}.htm">Hủy
									đơn hàng</a>
							</div>
						</c:if>
					</div>
				</c:forEach>
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