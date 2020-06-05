<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
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
<script src="js/jquery-3.3.1.min.js"></script>
<script>
	$(function() {
		$("a[data-lang]").click(function() {
			var lang = $(this).attr("data-lang");
			var id = $(this).attr("data-id");
			$.get("cart/bill/" + id + ".htm?language=" + lang, function() {
				location.reload();
			});
			return false;
		});
		
		$(".order").click(function() {
			alert("Đặt hàng thành công! \nĐi đến thông tin tài khoản để xem đơn đặt hàng của bạn!")
		});
	});
</script>

</head>
<body>
	<jsp:include page="/header.htm"></jsp:include>

	<div class="container laguagesub">
		<a href="#" data-lang="en" data-id="${idND }" class="en"><s:message code="en" /><p><s:message code="en" /></p></a>
		<a href="#" data-lang="vi" data-id="${idND }" class="vi"><s:message code="vi" /><p><s:message code="vi" /></p></a>
	</div>


	<div class="contain container">
		<div class="contain-under flex ">
			<div class="info-user">
				<div class="billchange">
					<form:form modelAttribute="bill">
						<h2>
							<s:message code="title1" />
						</h2>

						<div class="billchange-bottom flex">
							<div class="billchange-bottom-left">
								<div>
									<s:message code="name" />
								</div>
								<div>
									<s:message code="phone" />
								</div>
								<div>
									<s:message code="address" />
								</div>
								<div>
									<s:message code="note" />
								</div>
							</div>
							<div class="billchange-bottom-right">
								<form:input path="tenNguoiDung" type="text" />
								<form:input path="dienThoai" type="number" value="0123456789" />
								<form:input path="diaChi" type="text" />
								<form:input path="ghiChu" type="text" />
							</div>
						</div>
						<div class="contain-bottom">
			<button class="order" >
				<s:message code="order" />
			</button>
		</div>
					</form:form>
				</div>
			</div>
			<div class="info-product ">
				<h2>
					<s:message code="title2" />
				</h2>
				<c:forEach var="i" items="${cart}">
					<div class="info-product-bottom flex ">
						<img src="${pageContext.servletContext.contextPath}/img/${i.hinhAnh1 } " alt=" ">
						<div class="info">
							<h4>${i.tenSP}</h4>
							<div class="info-bottom flex ">
								<div class="info-title ">
									<p>
										<s:message code="color" />
									</p>
									<p>
										<s:message code="size" />
									</p>
									<p>
										<s:message code="quantity" />
									</p>
									<p>
										<s:message code="price" />
									</p>
								</div>
								<div class="info-information ">
									<p>${i.mau }</p>
									<p>${i.size }</p>
									<p>${i.soLuong }</p>
									<p>
										<f:formatNumber value="${i.gia }" type="currency" />
									</p>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>

				<div class="pay flex">
					<h4>
						<s:message code="totalPayment" />
					</h4>
					<h4 class="pay-right"><f:formatNumber value="${tongTien }" type="currency" /></h4>
				</div>
			</div>
		</div>

		
	</div>

	<div class="up">
		<i class="fas fa-chevron-up"></i>
	</div>

	<jsp:include page="/footer.htm"></jsp:include>
</body>
</html>