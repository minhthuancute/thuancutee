<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    <%@ page import="java.util.*" import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
<link rel="stylesheet" href="./../css/reset.css">
<link rel="stylesheet" href="./../css/all.min.css">
<link rel="stylesheet" href="./../css/style.css">
<title>Đăng Ký</title>
<base href="${pageContext.servletContext.contextPath}/">
 <script src="js/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js"></script> 

</head>
<body>
	<div class="modal-register">
        <div class="formwrapper flex">
            <form:form class="formregister" modelAttribute="register" action="${pageContext.servletContext.contextPath}/user/showregister.htm">
                <h2>ĐĂNG KÝ</h2>
                <div class="name">
                    <i class="far fa-comment-alt"></i>
                    <form:input path="tenNguoiDung" type="text" placeholder="Họ và tên"/>
                    <br>
					<form:errors path="tenNguoiDung"/>
                </div>
                <div class="birthday">
                    <i class="fas fa-birthday-cake"></i>
                    <form:input path="ngaySinh" type="date" placeholder="Ngày sinh"/>
                    <br>
					<form:errors path="ngaySinh"/>
                </div>
                <div class="phone">
                    <i class="fas fa-phone"></i>
                    <form:input path="dienThoai" type="number" placeholder="Số điện thoại"/>
                    <br>
					<form:errors path="dienThoai"/>
                </div>
                <div class="sex flex">
                    <div class="title flex">
                        <i class="fas fa-user-friends"></i>
                        <p>Giới tính: </p>
                    </div>

                    <label for="male">
                        <form:radiobutton path="gioiTinh" value="false"  />
                        <span class="male">Nữ</span>
                    </label>

                    <label for="female">
                        <form:radiobutton path="gioiTinh" value="true" />
                        <span class="female">Nam</span>
                    </label>
                </div>
                <div class="email">
                    <i class="far fa-envelope"></i>
                    <form:input type="text" placeholder="Email" path="email"/>
                    <br>
					<form:errors path="email"/>
                </div>
                <div class="address">
                    <i class="fas fa-map-marker-alt"></i>
                    <form:input type="text" placeholder="Địa chỉ" path="diaChi"/>
                    <br>
					<form:errors path="diaChi"/>
                </div>
                <div class="username">
                    <i class="fas fa-user"></i>
                    <form:input path="tenTaiKhoan" type="text" placeholder="Tên tài khoản"/>
                    <br>
					<form:errors path="tenTaiKhoan"/>
                </div>
                <div class="password">
                    <i class="fas fa-unlock"></i>
                    <form:input path = "matKhau" type="password" placeholder="Mật khẩu"/>
                    <br>
					<form:errors path="matKhau"/>
                </div>
                 <div class="password">
                   	<i class="fas fa-unlock-alt"></i>
                    <form:input path = "xacNhanMatKhau" type="password" placeholder="Nhập lại mật khẩu"/>
                    <br>
					<form:errors path="xacNhanMatKhau"/>
                </div>
                <button class="create" data-test="${notify}">Tạo tài khoản</button>
               <!--  <script>
				 	$(function() {
				 		$(".formregister").ajaxForm(function(){
				 			$.ajax({
				 				type: 'POST',
				 				url: '/test/user/showregister.htm',
				 				data: $('form').serialize(),
				 				success : function(res){
				 					
				 					var re = new RegExp('data-test="[a-zA-Z]*">Tạo tài khoản',"gm")
				 					var test = res.match(re)
				 					if(!test){
				 						alert("Đăng ký thành công! \nĐăng nhập để mua hàng !")
				 						window.location.href = "/test/user/form.htm"
				 					} else {
				 						var arr = test[0].split('"')
					 					if(arr[1] !== "" ) {
					 						alert(arr[1])
					 					}
					 				
					 					document.open()
					 					document.write(res)
					 					document.close()
				 					}
				 				
				 				}
				 			})
				 		})
				 		
					}); 
				</script> -->

                <div class="create-bottom flex">
                    <div class="login">
                        <a href="${pageContext.request.contextPath}/user/form.htm">Đăng nhập</a>
                    </div>
                    <div class="forgot">
                        <a href="${pageContext.servletContext.contextPath}/user/forgotpwd.htm">Quên mật khẩu</a>
                    </div>
                </div>
                
               
            </form:form>
        </div>
    </div>
    
   
	
</body>
</html>