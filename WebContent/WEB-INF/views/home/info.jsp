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
<script src="${pageContext.servletContext.contextPath}/js/jquery-3.3.1.min.js"></script>
<script>
	$(function() {
		$(".checkBill").click(function() {
			var check = $(this).attr("data-test");
			console.log("check ", check)
			if(check === "error") {
				alert("Admin không được xem hóa đơn!")
			}
		});
	});
</script>
</head>	
<body>

	<jsp:include page="/header.htm"></jsp:include>
	
	<div class="infomation flex container">
        <div class="left">
            <div>Họ tên: </div>
            <div>Giới tính: </div>
            <div>Email: </div>
            <div>Phone: </div>
            <div>Ngày sinh: </div>
        </div>
        <div class="right">
            <div>${tenND }</div>
            <div>${gioiTinh}</div>
            <div>${email }</div>
            <div>${dienThoai }</div>
            <div>${ngaySinh }</div>
        </div>
    </div>

    <div class="change flex container">
        <div class="item flex">
            <i class="fas fa-luggage-cart"></i>
            <h3>ĐƠN HÀNG</h3>
            <p>Kiểm tra các chi tiết mua hàng của bạn và theo dõi đơn đặt hàng</p>
            <a class="checkBill" data-test="${check }" href="${pageContext.servletContext.contextPath}/home/order/${idND}.htm">ĐƠN HÀNG CỦA BẠN</a>
        </div>

        <div class="item flex">
            <i class="fas fa-home"></i>
            <h3>ĐỊA CHỈ</h3>
            <p>Chỉnh sửa địa chỉ thanh toán và thông tin của bạn</p>
            <a href="${pageContext.servletContext.contextPath}/home/changeinfo/${idND}.htm">CHỈNH SỬA THÔNG TIN</a>
        </div>

        <div class="item flex">
            <i class="fas fa-user-alt"></i>
            <h3>MẬT KHẨU</h3>
            <p class="mk">Thay đổi mật khẩu của bạn</p>
            <a href="${pageContext.servletContext.contextPath}/home/changepass/${idND}.htm">ĐỔI MẬT KHẨU</a>
        </div>
    </div>
		
	<!-- <div class="up">
		<i class="fas fa-chevron-up"></i>
	</div> -->
		
	<jsp:include page="/footer.htm"></jsp:include>
</body>
</html>