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
	
	<div class="modal-register changechange">
        <div class="formwrapper flex changeinfo">
            <form method="post">
                <!-- <i class="fas fa-times-circle"></i> -->
                <h2>SỬA THÔNG TIN</h2>
                <div class="name">
                    <i class="far fa-comment-alt"></i>
                    <input name="tenNguoiDung" type="text" placeholder="Họ và tên" value="${tenND }">
                    <div class = "note">${message1}</div>
                </div>
                <div class="birthday">
                    <i class="fas fa-birthday-cake"></i>
                    <input name="ngaySinh" type="date" placeholder="Ngày sinh" value="${ngaySinh }">
                </div>
                <div class="phone">
                    <i class="fas fa-phone"></i>
                    <input name="dienThoai" type="number" placeholder="Số điện thoại" value="${dienThoai}">
                    <div class = "note">${message2}</div>
                </div>
                <div class="sex flex">
                    <div class="title flex">
                        <i class="fas fa-user-friends"></i>
                        <p>Giới tính: </p>
                    </div>

                    <label for="male">
                        <input name="gioiTinh" type="radio" id="male" value="false" ${gioiTinh == 'false'?'checked':''}>
                        <span class="male">Nữ</span>
                    </label>

                    <label for="female">
                        <input name="gioiTinh" type="radio" id="female" value="true" ${gioiTinh == 'true'?'checked':''}>
                        <span class="female">Nam</span>
                    </label>
                </div>
                <div class="email">
                    <i class="far fa-envelope"></i>
                    <input type="email" placeholder="Email" name="email" value="${email }">
                    <div class = "note">${message3}</div>
                </div>
                <div class="address">
                    <i class="fas fa-map-marker-alt"></i>
                    <input type="text" placeholder="Địa chỉ" name="diaChi" value="${diaChi }">
                    <div class = "note">${message4}</div>
                </div>

                <button class="create">Cập nhật</button>
           	</form>
    	</div>
    </div>
		
	<div class="up">
		<i class="fas fa-chevron-up"></i>
	</div>
		
	<jsp:include page="/footer.htm"></jsp:include>
</body>
</html>