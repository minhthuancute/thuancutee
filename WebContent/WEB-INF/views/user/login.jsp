<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ page import="java.util.*" import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
<link rel="stylesheet" href="./../css/reset.css">
<link rel="stylesheet" href="./../css/all.min.css">
<link rel="stylesheet" href="./../css/style.css">
<title>Info</title>
<base href="${pageContext.servletContext.contextPath}/">
<script src="js/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js"></script> 
</head>
<body>
	<div class="modal-login">
		<div class="formwrapper flex">
			<form:form modelAttribute="login">
				<h2>ĐĂNG NHẬP</h2>
				<div class="username">
					<i class="fas fa-user"></i> 
					<form:input path="tenTaiKhoan" type="text" placeholder="Tên tài khoản"/>
					<br>
					<br>
					<form:errors path="tenTaiKhoan"/>
				</div>
				<div class="password">
					<i class="fas fa-unlock"></i> 
					<form:input path="matKhau" type="password" placeholder="Mật khẩu" class = "passWord"/>
					<br>
					<br>
					<form:errors path="matKhau"/>
				</div>
					
				<a class="forgot" href="${pageContext.servletContext.contextPath}/user/forgotpwd.htm">Quên mật khẩu?</a>
				<button class="dn" data-test="${notify}">Đăng nhập</button>
				<div class = "note">${notify }</div>
				<!-- <script>
				 	$(function() {
				 		$("#login").ajaxForm(function(){
				 			$.ajax({
				 				type: 'POST',
				 				url: '/test/user/form.htm',
				 				data: $('form').serialize(),
				 				success : function(res){
				 					
				 					var re = new RegExp('data-test="[a-zA-Z]*">Đăng nhập',"gm")
				 					var test = res.match(re)
				 					console.log("test1" ,test)
				 					if(!test){
				 						alert("Đăng nhập thành công!")
				 						window.location.href = "/test/index.htm"
				 					} else {
				 						/* var arr = test[0].split('"')
					 					if(arr[1] !== "" ) {
					 						alert(arr[1])
					 					} */
					 				
					 					document.open()
					 					document.write(res)
					 					document.close()
				 					}
				 				
				 				}
				 			})
				 		})
				 		
					}); 
				</script> -->
				<p> Bạn chưa có tài khoản? <span><a href="${pageContext.servletContext.contextPath}/user/showregister.htm" class="register">Đăng ký ngay!</a></span>
				</p>
				<div class = "note">${message7}</div>	
			</form:form>
		</div>
	</div>
</body>
</html>