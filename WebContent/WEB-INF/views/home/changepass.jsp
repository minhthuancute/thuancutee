<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
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
</head>	
<body>

	<jsp:include page="/header.htm"></jsp:include>
	
	<div class="modal-register changechange">
        <div class="formwrapper flex changeinfo">
            <form:form action="home/changepass.htm" modelAttribute="user">
                <h2>ĐỔI MẬT KHẨU</h2>
                <div class="username">
                    <i class="fas fa-user"></i>
                    <form:input path="tenTaiKhoan" type="text" placeholder="Tên tài khoản" disabled="disabled" value="${user.tenTaiKhoan }" />
                </div>
                <div class="password">
                    <i class="fas fa-unlock"></i>
                    <form:input path = "matKhauCu" type="password" placeholder="Mật khẩu cũ"/>
                    <form:errors path="matKhauCu"/>
                </div>
                <div class="password">
                    <i class="fas fa-unlock"></i>
                    <form:input path = "matKhauMoi" type="password" placeholder="Mật khẩu mới"/>
                    <form:errors path="matKhauMoi"/>
                </div>
                <div class="password">
                    <i class="fas fa-unlock"></i>
                    <form:input path = "xacNhanMatKhau" type="password" placeholder="Nhập lại mật khẩu"/>
                    <form:errors path="xacNhanMatKhau"/>
                </div>

                <button class="create">Cập nhật</button>
           	</form:form>
    	</div>
    </div>
		
	<div class="up">
		<i class="fas fa-chevron-up"></i>
	</div>
		
	<jsp:include page="/footer.htm"></jsp:include>
</body>
</html>