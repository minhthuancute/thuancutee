<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ page import="java.util.*" import="java.io.*"%>
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
<script
	src="${pageContext.servletContext.contextPath}/js/jquery-3.3.1.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/js/owl.carousel.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/js/detai.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js"></script>
<script>
	$(function() {
		$("a[data-lang]").click(function() {
			var lang = $(this).attr("data-lang");
			$.get("index.htm?language=" + lang, function() {
				location.reload();
			});
			return false;
		});
		
		$(".addCart").click(function() {
			var check = $(this).attr("data-test");
			console.log("check ", check)
			if(check === "") {
				alert("Đăng nhập để mua hàng!")
			}
			else if(check === "adminSuccess") {
				alert("Admin không được phép mua hàng!")
			}
		});
	});
</script>
</head>
<body>
	<jsp:include page="/header.htm"></jsp:include>

	<div class="container laguagesub">
		<a href="#" data-lang="en" class="en"><s:message code="en" />
			<p>
				<s:message code="en" />
			</p></a> <a href="#" data-lang="vi" class="vi"><s:message code="vi" />
			<p>
				<s:message code="vi" />
			</p></a>
	</div>

	<div class="advertisement container">
		<div class="owl-carousel slider">
			<c:forEach var="i" items="${qc}">
				<div class="item">
					<img src="${pageContext.request.contextPath}/img/${i.hinhAnh}" alt="">
				</div>
			</c:forEach>
		</div>
	</div>

	<div class="part1 container">
		<h2>
			<s:message code="dress" />
		</h2>
		<hr>
		<div class="prd-1 flex">
			<c:forEach var="i" items="${damNu}" begin="0" end="3">
				<div class="product">
					<a href="${pageContext.request.contextPath}/product/detail/${i.idSP}.htm">
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
								<button data-test="${notify}" class="addCart"><s:message code="addToCart" /></button>
							</div>

						</form>
						<h5>${i.tenSP}</h5>
						<p>
							<f:formatNumber value="${i.gia}" type="currency" />
						</p>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<div class="part2 container">
		<h2>
			<s:message code="stylishShirt" />
		</h2>
		<hr>
		<div class="prd-1 flex">
			<c:forEach var="i" items="${aoKieuNu}" begin="0" end="3">
				<div class="product">
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
								<button data-test="${notify}" class="addCart"><s:message code="addToCart" /></button>
							</div>
						</form>
						<h5>${i.tenSP}</h5>
						<p>
							<f:formatNumber value="${i.gia}" type="currency" />
						</p>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<div class="picture flex">
		<div class="image">
			<img src="img/slideshow_5.jpg" alt="">
		</div>
	</div>

	<div class="discount">
		<div class="flex container">
			<div class="discount1 flex">
				<i class="fas fa-truck"></i>
				<div class="text">
					<h6>
						<s:message code="freeShip" />
					</h6>
					<p>
						<s:message code="freeShip2" />
					</p>
				</div>
			</div>
			<div class="discount2 flex">
				<i class="fas fa-piggy-bank"></i>
				<div class="text">
					<h6>
						<s:message code="refund" />
					</h6>
					<p>
						<s:message code="refund2" />
					</p>
				</div>
			</div>
			<div class="discount3 flex">
				<i class="fas fa-cog"></i>
				<div class="text">
					<h6>
						<s:message code="discount" />
					</h6>
					<p>
						<s:message code="discount2" />
					</p>
				</div>
			</div>
		</div>
	</div>

	<div class="part3 container">
		<h2>
			<s:message code="men'sJackets" />
		</h2>
		<hr>
		<div class="prd-1 flex">
			<c:forEach var="i" items="${aoKhoacNam}" begin="0" end="3">
				<div class="product">
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
								<button data-test="${notify}" class="addCart"><s:message code="addToCart" /></button>
							</div>
						</form>
						<h5>${i.tenSP}</h5>
						<p>
							<f:formatNumber value="${i.gia}" type="currency" />
						</p>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<div class="part4 container">
		<h2>
			<s:message code="men'sShirt" />
		</h2>
		<hr>
		<div class="prd-1 flex">
			<c:forEach var="i" items="${aoSoMiNam}" begin="0" end="3">
				<div class="product">
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
								<button data-test="${notify}" class="addCart"><s:message code="addToCart" /></button>
							</div>
						</form>
						<h5>${i.tenSP}</h5>
						<p>
							<f:formatNumber value="${i.gia}" type="currency" />
						</p>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<div class="picture flex">
		<div class="image">
			<img src="img/slideshow_4.jpg" alt="">
		</div>
	</div>

	<div class="up">
		<i class="fas fa-chevron-up"></i>
	</div>

	<jsp:include page="/footer.htm"></jsp:include>
</body>
</html>