<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="./../css/reset.css">
<link rel="stylesheet" href="./../css/all.min.css">
<link rel="stylesheet" href="./../css/style.css">
<title>Quên mật khẩu</title>
<base href="${pageContext.servletContext.contextPath}/">
</head>
<body>
	<div class="modal-login">
		<div class="formwrapper flex">
			<form:form modelAttribute="forgotpass">
				<h2>QUÊN MẬT KHẨU</h2>
				<div class="username">
					<i class="fas fa-user"></i>
					<form:input class = "tenTaiKhoan" path="tenTaiKhoan" type="text"
						placeholder="Tên tài khoản" />
					<br>
					<form:errors path="tenTaiKhoan" color="red"/>
				</div>
				<div class="username">
					<i class="fas fa-user"></i>
					<form:input class="emaill" path="email" type="text" placeholder="Email" />
					<br>
					<form:errors path="email" />
				</div>
				<button class="continue">Tiếp tục</button>
				<div class="forgot">
					<a href="${pageContext.request.contextPath}/user/form.htm">Đăng
						nhập</a>
				</div>
				<div class = "note">${message}</div>
			</form:form>
		</div>
	</div>
</body>
</html>