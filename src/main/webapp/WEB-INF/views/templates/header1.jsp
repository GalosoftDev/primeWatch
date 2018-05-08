<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if (IE 7)&!(IEMobile)]><html class="no-js lt-ie9 lt-ie8" lang="en"><![endif]-->
<!--[if (IE 8)&!(IEMobile)]><html class="no-js lt-ie9" lang="en"><![endif]-->
<!--[if (IE 9)]><html class="no-js ie9" lang="en"><![endif]-->
<!--[if gt IE 8]><!--> <html lang="en-US"> <!--<![endif]-->
<head>

<!-- Meta Tags -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>PrimeWatch | Welcome</title>   

<meta name="description" content="Insert Your Site Description" /> 

<!-- Mobile Specifics -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="HandheldFriendly" content="true"/>
<meta name="MobileOptimized" content="320"/>   

<!-- Mobile Internet Explorer ClearType Technology -->
<!--[if IEMobile]>  <meta http-equiv="cleartype" content="on">  <![endif]-->

<!-- Bootstrap -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Main Style -->
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet">

<!-- Supersized -->
<link href="${pageContext.request.contextPath}/resources/css/supersized.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/supersized.shutter.css" rel="stylesheet">

<!-- FancyBox -->
<link href="${pageContext.request.contextPath}/resources/css/fancybox/jquery.fancybox.css" rel="stylesheet">

<!-- Font Icons -->
<link href="${pageContext.request.contextPath}/resources/css/fonts.css" rel="stylesheet">

<!-- Responsive -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/responsive.css" rel="stylesheet">

<!-- Supersized -->
<link href="${pageContext.request.contextPath}/resources/css/supersized.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/supersized.shutter.css" rel="stylesheet">

<!-- Google Font -->
<link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,200italic,300,300italic,400italic,600,600italic,700,700italic,900' rel='stylesheet' type='text/css'>

<!-- Fav Icon -->
<link rel="shortcut icon" href="#">

<link rel="apple-touch-icon" href="#">
<link rel="apple-touch-icon" sizes="114x114" href="#">
<link rel="apple-touch-icon" sizes="72x72" href="#">
<link rel="apple-touch-icon" sizes="144x144" href="#">

<!-- Modernizr -->
<script src="${pageContext.request.contextPath}/resources/js/modernizr.js"></script>

</head>

<body>

<header>
    <div class="sticky-nav">
    	<a id="mobile-nav" class="menu-nav" href="#menu-nav"></a>
        
        <div id="logo">
        	<a id="goUp" href="<c:url value="/admin"/>" title="Brushed | Responsive One Page Template">Brushed Template</a>
        </div>
        
        <nav id="menu">
        	<ul id="menu-nav">
            	<li class="current"><a href=" <spring:url value="/"/> ">Home</a></li>
                <li><a href="#work">Productos</a></li>
                <li><a href="#about">About Us</a></li>
                <li><a href="#contact">Contact</a></li>
                
                <c:if test="${pageContext.request.userPrincipal.name != null}">	
                	<li><a>Welcome:${pageContext.request.userPrincipal.name} </a></li>
                	<li><a href= "<c:url value="/j_spring_security_logout " />" >Logout</a></li>
                	<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                		<li><a href="<c:url value="/customer/cart"/>">Cart</a></li>
                	</c:if>
                	<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                		<li><a href="<c:url value="/admin"/>">Admin</a></li>
                	</c:if>
                </c:if>
                <c:if test="${pageContext.request.userPrincipal.name == null}">
                	<li><a href= "<c:url value="/login"/>" >Login</a></li>
                <li><a href= "<c:url value="/register"/>" >Register</a></li>
                </c:if>
                
            </ul>
        </nav>
        
    </div>
</header>
<!-- End Header -->










