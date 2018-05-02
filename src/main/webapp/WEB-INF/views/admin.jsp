<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="templates/header1.jsp" %>

	<div class="container-wrapper">
		<div class="container">
			
			<div class="page-header">
				<h1>Admin Page</h1>
				<p class="leader">Administra tus recursos desde aqui</p>
			</div>
			
			<c:if test="${pageContext.request.userPrincipal.name != null}">
				<h2>
					Welcome: ${pageContext.request.userPrincipal.name} | 
					<a href= "<c:url value="/j_spring_security_logout" />" >Logout</a>
				</h2>
			</c:if>
			
			<h3>
				<a href= "<c:url value="/admin/productInventory" />" >Product Inventory</a>
			</h3>
			<p>Desde aqui puedes ver y administrar los recursos del sistema</p>
			
		</div>
    </div>

<%@ include file="templates/footer1.jsp" %>