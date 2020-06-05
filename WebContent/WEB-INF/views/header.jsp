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
<script src="${pageContext.servletContext.contextPath}/js/jquery-3.3.1.min.js"></script>
<%-- <script>
	$(function() {
		$(".cart").click(function() {
			var check = $(this).attr("data-test");
			console.log("check ", check)
			if(check === "") {
				alert("Giỏ hàng của bạn trống! \nĐăng nhập để mua hàng!")
			}
			/* else if(check === "adminSuccess") {
				alert("Admin không được phép vào giỏ hàng!")
			} */
		});
	});
</script> --%>
</head>
<body>
	<header>
		<div class="container flex">
			<div class="logo">
				<a href="${pageContext.request.contextPath}/index.htm"><img src="img/logo.jpg" alt=""></a>
			</div>
			<div class="navbar">
				<ul class="flex">
					<c:if test="${uid eq 'admin'}">
						<li><a href="${pageContext.request.contextPath}/admin/home.htm"><s:message code="manage" /></a></li>
					</c:if>
				
					<li><a href="${pageContext.request.contextPath}/index.htm"><s:message code="homePage" /></a></li>
					<li><a href="${pageContext.request.contextPath}/home/introduce.htm"><s:message code="aboutUs" /></a></li>
					<c:forEach var="o" items="${dm}">
						<li class="category"><a>${o.tenDM}</a> <i
							class="fas fa-chevron-down"></i>
							<ul class="user-dropdown">
								<c:forEach var="a" items="${nhomsp}">
									<c:if test="${o.idDM eq a.idDM}">
										<li><a
											href="${pageContext.request.contextPath}/product/product/${a.idDM}/${a.idNhom}.htm">${a.tenNhom}</a></li>
									</c:if>
								</c:forEach>
							</ul></li>

					</c:forEach>

				</ul>
			</div>
			<div class="function flex">
				<form class="search" method="get" action = "${pageContext.request.contextPath}/home/search.htm">
					<input type="text" placeholder="<s:message code="search" />" name="q"> 
					<button><i class="fas fa-search"></i></button>
				</form>

				<div class="login flex">
					<div class="user">
						<c:if test="${uid != NULL}">
							<p>${uid}</p>
							<ul class="user-dropdown">
								<li><a href="${pageContext.request.contextPath}/home/info/${idND}.htm"><s:message code="accountInformation" /></a></li>
								<li>
									<form class="search" method="get" action = "${pageContext.request.contextPath}/index.htm">
										<input type="hidden" name = "logout" value="logout">
										<button><s:message code="logOut" /></button>
									</form>
								</li>
							</ul>
						</c:if>
					</div>
					<c:if test="${uid == NULL}">
						<a href="${pageContext.request.contextPath}/user/form.htm"><s:message code="logInSignUp" /></a>
					</c:if>
					<c:if test="${number != 0}">
						<div class = "numbercard">${number}</div>
					</c:if>
					<c:choose>
					    <c:when test="${uid eq 'admin'}">
					       <a onclick="return alert('Admin không được phép vào giỏ hàng! !')" href="${pageContext.request.contextPath}/admin/home.htm" class="cart" ><i class="fas fa-shopping-cart"></i></a>
					    </c:when>
					    <c:when test="${uid == NULL}">
					       <a onclick="return alert('Giỏ hàng của bạn trống! \nĐăng nhập để mua hàng!')" href="${pageContext.request.contextPath}/index.htm" class="cart" ><i class="fas fa-shopping-cart"></i></a>
					    </c:when>
					    <c:otherwise>
					        <a href="${pageContext.request.contextPath}/cart/cart.htm" class="cart" data-test="${notify }"><i class="fas fa-shopping-cart"></i></a>
					    </c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</header>
	
	<script src="${pageContext.servletContext.contextPath}/js/owl.carousel.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/js/detai.js"></script>
</body>
</html>