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
<link rel="stylesheet" href="../../css/reset.css">
<link rel="stylesheet" href="../../css/all.min.css">
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/owl.theme.default.min.css">
<link rel="stylesheet" href="../../css/owl.carousel.min.css">

<title>WEB BAN QUAN AO</title>
<base href="${pageContext.servletContext.contextPath}/">
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

	<div class="detail container flex">
		<div class="left">
			<div class="image12  flex">
				<img class="image1" src="${pageContext.request.contextPath}/img/${i.hinhAnh1}"> <img class="image2"
					src="${pageContext.request.contextPath}/img/${i.hinhAnh2}">
			</div>
			<c:if test="${i.hinhAnh3 != NULL}">
				<img class="image3" src="${pageContext.request.contextPath}/img/${i.hinhAnh3}">
			</c:if>
		</div>

		<div class="right">
			<div class="info">
				<h2>${i.tenSP}</h2>
				<p>
					<f:formatNumber value="${i.gia}" type="currency" />
				</p>
				<form action="${pageContext.request.contextPath}/cart/cart.htm" method="post" class="buy">
					<input type="hidden" value = "${i.idSP}" name = "idSP">
					<div class="color flex">
						<c:forEach var="t" items="${mausp}">
							<c:if test="${i.idSP eq t.idSP}">
								<label for="${t.maMau}"> 
									<input type="radio" id="${t.maMau}" class="${t.maMau}" name="color" value="${t.mau}" checked>
									<span>${t.mau}</span>
								</label>
							</c:if>
						</c:forEach>
					</div>

					<div class="size flex">
						<c:forEach var="s" items="${sizesp}">
							<c:if test="${i.idSP eq s.idSP}">
								<label for="${s.size}"> ${s.size} <input type="radio"
									id="${s.size}" name="size" value="${s.size}" checked> <span class="${s.size}">${s.size}</span>
								</label>
							</c:if>
						</c:forEach>
					</div>
					<div class="choose">
						<button data-test="${notify}" class="addCart">THÊM VÀO GIỎ</button>
					</div>
					<h3>CHI TIẾT</h3>
					<h5>Mã SP: ${i.idSP}</h5>
					<p class="distribute">${i.moTa }</p>
				</form>
		</div>
	</div>
	</div>

	<!-- <div class="up">
		<i class="fas fa-chevron-up"></i>
	</div> -->
		
	<jsp:include page="/footer.htm"></jsp:include>
		
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/detai.js"></script>
</body>
</html>