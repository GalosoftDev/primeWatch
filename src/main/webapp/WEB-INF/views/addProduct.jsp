<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="templates/header1.jsp" %>

	<div class="container-wrapper">
		<div class="container">
			
			<div class="page-header">
				<h1>Add Producto</h1>
				<p class="leader">Please fill all the fields</p>
			</div>
			
			<div class="container-warpper">
				<form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct"
				            method="post" commandName="product" enctype="multipart/form-data">
					<div class="form-group">
						<label for="name">Name</label>
						<form:errors path="productName"/>
						<form:input path="productName" id="name" class="form-control"/>
					</div>
					
					<div class="form-group">
						<label for="description">Description</label>
						<form:errors path="productDes"/>
						<form:textarea path="productDes" id="description" class="form-control"/>
					</div>
					
					<div class="form-group">
						<label for="condition">Condition</label>
						<label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="nuevo"/>Nuevo</label>
						<label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="usado"/>Usado</label>
					</div>
					
					<div class="form-group">
						<label for="status">Status</label>
						<label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="activo"/>Activo</label>
						<label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="no-activo"/>No activo</label>
					</div>
					
					<div class="form-group">
						<label for="price">Price</label>
						<form:input path="productPrice" id="price" class="form-control"/>
					</div>
					
					<div class="form-group">
						<label for="units">Units</label>
						<form:input path="productUnits" id="units" class="form-control"/>
					</div>
					
					<div class="form-group">
						<label for="productImage">Upload Picture</label>
						<form:input path="productImage" id="productImage" class="form-control" type="file"/>
					</div>
					
					<br>
					
					<input type="submit" value="submit" class="btn btn-default" />
					<a href= "<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>
					
				</form:form>
			</div>
			
			
		</div>
    </div>

<%@ include file="templates/footer1.jsp" %>