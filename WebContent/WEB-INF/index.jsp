<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/all.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">

<title>WEB BAN QUAN AO</title>
<base href="${pageContext.servletContext.contextPath}/">

<script>
	setTimeout(function() {
		window.location.href = "http://localhost:8080/test/index.htm"; // The URL that will be redirected too.
	}, 1000); // The bigger the number the longer the delay.
</script>
</head>
<body>
	<header>
		<div class="container flex">
			<div class="logo">
				<a href=""><img src="img/logo.jpg" alt=""></a>
			</div>
			<div class="navbar">
				<ul class="flex">
					<li><a href="">TRANG CHỦ</a></li>
					<li><a href="">GIỚI THIỆU</a></li>
					<c:forEach var = "o" items="${list}" >
						<li><a>${o.tenDM}</a></li>
					</c:forEach>
				</ul>
			</div>
			<div class="function flex">
				<div class="search">
					<input type="text" placeholder="Tìm kiếm"> <a href=""><i
						class="fas fa-search"></i></a>
				</div>

				<div class="login">
					<a href="user/form.htm" >Đăng nhập/ Đăng ký</a> 
					<a href="" class="cart"><i class="fas fa-shopping-cart"></i></a>
				</div>
			</div>
		</div>


	</header>

	<div class="advertisement container">
		<div class="owl-carousel slider">
			<div class="item">
				<img src="img/slideshow_1.jpg" alt="">
			</div>
			<div class="item">
				<img src="img/slideshow_2.jpg" alt="">
			</div>
			<div class="item">
				<img src="img/slideshow_3.jpg" alt="">
			</div>
			<div class="item">
				<img src="img/slideshow_4.jpg" alt="">
			</div>
			<div class="item">
				<img src="img/slideshow_5.jpg" alt="">
			</div>
			<div class="item">
				<img src="img/slideshow_6.jpg" alt="">
			</div>
		</div>
	</div>

	<div class="container">
		<div class="part1 flex">
			<div class="product">
				<img class="first" src="img/damden1.jpg" alt=""> <img
					class="second" src="img/damden2.jpg" alt="">

				<div class="info">
					<div class="buy">
						<div class="color flex">
							<div class="black"></div>
							<div class="red"></div>
						</div>
						<div class="size flex">
							<p>XS</p>
							<p>S</p>
							<p>M</p>
							<p>L</p>
						</div>
						<div class="choose">
							<a href="">THÊM VÀO GIỎ</a>
						</div>
					</div>
					<h5>ĐẦM XẾP LY NANCY PLEAT DRESS</h5>
					<p>469,000₫</p>
				</div>
			</div>
		</div>
	</div>


	<div class="up">
		<i class="fas fa-chevron-up"></i>
	</div>

	<div class="last">
		<div class="container">
			<h4>LIÊN HỆ</h4>
			<ul class="flex">
				<li><p>
						Điện thoại: <span>0909235009</span>
					</p></li>
				<li><p>
						Email: <span>quesu@gmail.com</span>
					</p></li>
				<li><p>
						Điạ chỉ: <span>97 Man Thiện, P. Hiệp Phú, Q.9, TP. Hồ Chí
							Minh</span>
					</p></li>
			</ul>
		</div>
	</div>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/detai.js"></script>
</body>
</html>