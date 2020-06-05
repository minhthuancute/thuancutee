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
<script
	src="${pageContext.servletContext.contextPath}/js/jquery-3.3.1.min.js"></script>
</head>
<body>
	<jsp:include page="/header.htm"></jsp:include>

	<div class="container">
		<a href="${pageContext.request.contextPath}/admin/size/addsize.htm"
			class="btn btn-primary">Thêm size</a>
	</div>

	<form method="post">
		<table class="table table-bordered mt-3 container">
			<thead class="thead-dark">
				<tr>
					<th>STT</th>
					<th>Id size</th>
					<th>ID Sản phẩm</th>
					<th>Size</th>
					<th>Số lượng</th>
					<th>Sửa</th>
					<th>Xóa</th>
				</tr>
			</thead>

			<c:set var="number" scope="session" value="${0}" />
			<c:forEach items="${size}" var="o">
				<tr>
					<c:set var="number" scope="session" value="${number + 1 }" />
					<th>${number}</th>
					<td>${o.idSize}</td>
					<td>${o.idSP}</td>
					<td>${o.size}</td>
					<td>${o.soLuong}</td>
					<td><a
						href="${pageContext.request.contextPath}/admin/size/editsize/${o.idSize}.htm">
							<i class="fas fa-edit"></i>
					</a></td>
					<td><a
						onclick="return confirm('Bạn có chắc chắn muốn xóa size ${o.size} này không?')"
						href="${pageContext.request.contextPath}/admin/size/deletesize/${o.idSize}.htm">
							<i class="far fa-trash-alt"></i>
					</a></td>
				</tr>
			</c:forEach>
		</table>
	</form>

	<div class="up">
		<i class="fas fa-chevron-up"></i>
	</div>

	<jsp:include page="/footer.htm"></jsp:include>


	<script
		src="${pageContext.servletContext.contextPath}/js/owl.carousel.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/js/detai.js"></script>
</body>
</html>