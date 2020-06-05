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
	href="${pageContext.servletContext.contextPath}/css/bootstrap.min.css">
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

	<div class="modal-register changechange adminchange">
        <div class="formwrapper flex changeinfo">
            <form:form modelAttribute="product" enctype="multipart/form-data">
                <h2>SỬA SẢN PHẨM</h2>
                <div class="username flex">
                    <form:input path="idSP" type="text" placeholder="ID Sản phẩm" disabled="disabled"/>
                </div>
                <div class="password">
                    <form:select path = "idNhom" items="${nhom}" itemValue="idNhom" itemLabel="tenNhom" class="custom-select" />
                </div>
                <div class="password">
                    <form:input path = "tenSP" type="text" placeholder="Tên sản phẩm"/>
                    <form:errors path="tenSP"/>
                </div>
                <div class="password">
                    <form:input path = "gia" type="number" placeholder="Giá"/>
                    <form:errors path="gia"/>
                </div>
                 
                 <%-- <div class = "editPr">
	                 <img class="editProduct" src="${pageContext.servletContext.contextPath}/img/${picture1}"/>
	                <img class="editProduct" src="${pageContext.servletContext.contextPath}/img/${picture2}"/>
                 </div> --%>
                
                 <div class="password">
                  <input type="text" value="${picture1}"/>
                </div>
                 <div class="password">
                  <form:input path="hinhAnh1" type="file" placeholder="Hình ảnh 1" accept="image/png, image/jpeg"/>
                    <form:errors path="moTa"/>
                </div>
                <div class="password">
                  <input type="text" value="${picture2}"/>
                </div>
                 <div class="password">
                 <form:input path="hinhAnh2" type="file" placeholder="Hình ảnh 2" accept="image/png, image/jpeg"/>
                     <form:errors path="hinhAnh3"/>
                </div>
                 <div class="password">
                    <form:input path = "moTa" type="text" placeholder="Mô tả"/>
                </div>
                <button class="create">Cập nhật</button>
           	</form:form>
    	</div>
    </div>

	<div class="up">
		<i class="fas fa-chevron-up"></i>
	</div>
		
	<jsp:include page="/footer.htm"></jsp:include>
	
	<script
		src="${pageContext.servletContext.contextPath}/js/jquery-3.3.1.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/js/owl.carousel.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/js/detai.js"></script>
</body>
</html>