<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="templates/header1.jsp" %>

	<div class="container-wrapper">
		<div class="container">
			<div class="row">
			<div class="page-header">
				<h1>Product List</h1>
				<p class="leader">Her you can check our products</p>
			</div>
			<table class="table table-hover table-stripped">
				<tr class="bg-success">
				    <th>Image</th>
					<th>ProductName</th>
					<th>ProductDescription</th>
					<th>ProductPrice</th>
					<th>ProductUnits</th>
					<th></th>
				</tr>
				<c:forEach var="product" items="${products}" >
				<tr>
				    <td><img alt="pic" src="#"></td>
					<td>${product.productName}</td>
					<td>${product.productDes}</td>
					<td>${product.productPrice}</td>
					<td>${product.productUnits}</td>
					<td><a href= "<spring:url value="/productList/viewProduct/${product.productId}" />" >
					<span class="font-icon-zoom-in" /></a></td>
				</tr>
				</c:forEach>
			</table>
			</div>
		</div>
    </div>

<%@ include file="templates/footer1.jsp" %>