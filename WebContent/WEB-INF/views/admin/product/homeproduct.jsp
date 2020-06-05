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
<script>
	/* $(function() {
		$(".deleteProduct").click(function() {
			var check = $(this).attr("data-test");
			console.log("check ", check)
			if(check === "") {
				alert("Sản phẩm đã có size, màu. Không được xóa sản phẩm này!")
			}
		});
	}); */
</script>
</head>
<body>
	<jsp:include page="/header.htm"></jsp:include>

	<form method="post">
		<div class="container">
			<a
				href="${pageContext.request.contextPath}/admin/product/addproduct.htm"
				class="btn btn-primary">Thêm sản phẩm</a>
		</div>

		<table class="table table-bordered mt-3 container">
			<!-- <input id="checkBoxAll" type="checkbox" value=""> -->
			<thead class="thead-dark">
				<tr>
					<!-- <td><button class="btn btn-info">Xóa tất cả</button></td> -->
					<th>STT</th>
					<th>Id sản phẩm</th>
					<th>Id nhóm</th>
					<th>Tên sản phẩm</th>
					<th>Giá</th>
					<th>Hình ảnh 1</th>
					<th>Hình ảnh 2</th>
					<th>Mô tả</th>
					<th>Sửa</th>
					<th>Xóa</th>
				</tr>
			</thead>

			<c:set var="number" scope="session" value="${0 }" />
			<c:forEach items="${sp}" var="o">
				<tr>
					<c:set var="number" scope="session" value="${number + 1 }" />
					<th>${number}</th>
					<td>${o.idSP}</td>
					<td>${o.idNhom}</td>
					<td>${o.tenSP}</td>
					<td><f:formatNumber value="${o.gia}" type="currency" /></td>
					<td><img
						src="${pageContext.request.contextPath}/img/${o.hinhAnh1}"
						width="100px" height="130px" /></td>
					<td><img
						src="${pageContext.request.contextPath}/img/${o.hinhAnh2}"
						width="100px" height="130px" /></td>
					<td>${o.moTa}</td>
					<td><a
						href="${pageContext.request.contextPath}/admin/product/editproduct/${o.idSP}.htm">
							<i class="fas fa-edit"></i>
					</a></td>
					<td><a class="deleteProduct" data-test = "${check}" onclick="return confirm('Bạn có chắc chắn muốn xóa ${o.tenSP} không?')" href="${pageContext.request.contextPath}/admin/product/deleteproduct/${o.idSP}.htm">
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

	<!-- <script type="text/javascript">
		$(document).ready(function() {
			$('#checkBoxAll').click(function(e) {
				if ($(this).is(":checked"))
					$('.checkbox').prop('checked', true);
				else
					$('.checkbox').prop('checked', false);
			});
		});
	</script> -->
</body>
</html>