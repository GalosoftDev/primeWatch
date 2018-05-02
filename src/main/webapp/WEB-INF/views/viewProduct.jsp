<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="templates/header1.jsp" %>

	<div class="container-wrapper">
		<div class="container">
			
			<div class="page-header">
				<h1>Producto</h1>
				<p class="leader">Aqui puedes ver nuestros productos en detalle</p>
			</div>
			
			<div class="container" ng-app="cartApp">
				<div class="row">
					<div class="col-md-5">
						<img alt="image" src="<c:url value="/resources/images/${product.productId}.png"/>" 
						     style="width:30%; height:30%" class="img img-rounded">
					</div>
					<div class="col-md-5">
						<h2>Product Name: ${product.productName}</h2>
						<p>Product Description: ${product.productDes}</p>
						<p>Product Price: ${product.productPrice}</p>
						<p>Units: ${product.productUnits}</p>
						
						<br>
						<c:set var="role" scope="page" value="${param.role}"/>
						<c:set var="url" scope="page" value="/productList"/>
						<c:if test="${role=='admin'}">
							<c:set var="url" scope="page" value="/admin/productInventory"/>
						</c:if>
						
						<p ng-controller="cartCtrl">
						    <a href="#" ng-click="testCart()" class="btn btn-warning">Test Angular</a>
							<a href="<c:url value="${url}"/>" class="btn btn-primary">Back</a>
							<a href="#" ng-click="addToCart('${product.productId}')" class="btn btn-success">Order Now</a>
							<a href= "<spring:url value="/cart" />" class="btn btn-default" >View Cart</a>
						</p>
						
					</div>
				</div>
			</div>
			
		</div>
    </div>

<%@ include file="templates/footer1.jsp" %>