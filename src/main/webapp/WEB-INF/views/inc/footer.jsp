<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<!-- footer -->
<footer role="footer">
	<!-- logo -->
	<h1 style="display:flex;">
			<a href="${ctx}/index" title="Hansing">Hansing</a>
	</h1>
	<!-- logo -->
	<!-- nav -->
	<nav role="footer-nav">
		<ul>
			<li><a href="#" title="Work">Work</a></li>
			<li><a href="#" title="About">About</a></li>
			<li><a href="#" title="Blog">Blog</a></li>
			<li><a href="#" title="Contact">Contact</a></li>
		</ul>
	</nav>
	<!-- nav -->
	<ul role="social-icons">
		<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
		<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
		<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
		<li><a href="#"><i class="fa fa-flickr" aria-hidden="true"></i></a></li>
	</ul>
	<p class="copy-right">&copy; 2015 avana LLC.. All rights Resved</p>
</footer>
<!-- footer -->