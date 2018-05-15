<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
    <c:set var="ctx" value="${pageContext.request.contextPath }" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <meta charset="utf-8">
        <!-- Description, Keywords and Author -->
        <meta name="description" content="">
        <meta name="author" content="">
        <title>:: Hansing ::</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <!-- style -->
        <link href="${ctx}/resources/css/style.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="${ctx}/resources/css/table.css" type="text/css">
        <!-- style -->
        <!-- bootstrap -->
        <link href="${ctx}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <!-- responsive -->
        <link href="${ctx}/resources/css/responsive.css" rel="stylesheet" type="text/css">
        <!-- font-awesome -->
        <link href="${ctx}/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- font-awesome -->
        <link href="${ctx}/resources/css/effects/set2.css" rel="stylesheet" type="text/css">
        <link href="${ctx}/resources/css/effects/normalize.css" rel="stylesheet" type="text/css">
        <link href="${ctx}/resources/css/effects/component.css"  rel="stylesheet" type="text/css" >
	</head>
<body>

	<!-- header 부분 -->
	<tiles:insertAttribute name="header" />

	<!-- --------------------------- main --------------------------------------- -->
	<tiles:insertAttribute name="main" />
	<div style="width:100%;height: 1px;display: flex;"></div>

	<!-- ------------------- <footer> --------------------------------------- -->
	<tiles:insertAttribute name="footer" />

  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="${ctx}/resources/js/jquery.min.js" type="text/javascript"></script>
        <!-- custom -->
		<script src="${ctx}/resources/js/nav.js" type="text/javascript"></script>
        <script src="${ctx}/resources/js/custom.js" type="text/javascript"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
<%--         <script src="${ctx}/resources/js/bootstrap.min.js" type="text/javascript"></script> --%>
        <script src="${ctx}/resources/js/effects/masonry.pkgd.min.js"  type="text/javascript"></script>
		<script src="${ctx}/resources/js/effects/imagesloaded.js"  type="text/javascript"></script>
		<script src="${ctx}/resources/js/effects/classie.js"  type="text/javascript"></script>
		<script src="${ctx}/resources/js/effects/AnimOnScroll.js"  type="text/javascript"></script>
        <script src="${ctx}/resources/js/effects/modernizr.custom.js"></script>
        
        <!-- jquery.countdown -->
        <script src="${ctx}/resources/js/html5shiv.js" type="text/javascript"></script>

</body>
</html>
