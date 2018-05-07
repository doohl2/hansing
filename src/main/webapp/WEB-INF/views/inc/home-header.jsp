<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />

<!-- ---------------------------------------------------------------------------------------- -->

<header role="header">
	<div class="container">
		<!-- logo -->
		<h1>
			<a href="${ctx}/index" title="Hansing">Hansing</a>
		</h1>
		<!-- logo -->
		<!-- nav -->
		<nav role="header-nav" class="navy">
			<ul style="z-index:1002;">
				<li class="nav-active"><a href="${ctx}/index" title="Home">홈</a></li>

				<li><a href="${ctx}/room/index" title="Room">방</a></li>	
				
				<li><a href="${ctx}/store/index" title="Store">한인가게</a></li>
				
				<li><a href="${ctx}/community/index" title="Community">커뮤니티</a></li>
				
				<li><a href="${ctx}/market/index" title="Market">벼룩시장</a></li>
				
				<li><a href="${ctx}/job/index" title="Job">구인구직</a></li>
				
				<li><a href="${ctx}/member/login" title="SignInUp">로그인/회원가입</a></li> 
			</ul>
		</nav>
		<!-- nav -->
	</div>
</header>
<!-- header -->