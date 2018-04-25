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
			
			<div class="container">
				<div class="row">
					<div class="col-md-5">
						<img alt="image" src="#" style="width:100%; height:300px">
					</div>
					<div class="col-md-5">
						<h2>Product Name: ${product.productName}</h2>
						<p>Product Description: ${product.productDes}</p>
						<p>Product Price: ${product.productPrice}</p>
						<p>Units: ${product.productUnits}</p>
					</div>
				</div>
			</div>
			
			
		</div>
    </div>

<%@ include file="templates/footer1.jsp" %>