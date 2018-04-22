<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<style>
@media ( min-width :1200px) {
.detail-container-1200px{
		padding-left:200px; 
	}
}
</style>

<!-- main -->
<main role="main-inner-wrapper" class="container padding-top-ninety detail-container-1200px"> <!-- work details -->
<div class="work-details">
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-4">
			<header role="work-title">
				<h2>Jiwon Hair Salon</h2>
				<a href="#">사이트 방문하기 <i class="fa fa-external-link"
					aria-hidden="true"></i></a>
			</header>

		</div>
<!-- 			<div style="width:100%;height: 1px;display: flex;"></div> -->
		<div class="col-xs-12 col-sm-12 col-md-8">
			<section>
				<p>
				싱가폴에서 가장 오래 사랑받는,
		
				믿음이 있는 한국 미용실!
			
				이젠 싱가폴에서도 오가닉 아베다제품을 

				지원 JIWON에서 경험하세요!
		</p>
				
				<p>
					<strong>Role</strong><br /> 
					HairSalon, Beauty
				</p>
			</section>
		</div>
			<div style="width:100%;height: 1px;display: flex;"></div>
	</div>
<!-- 	<div class="clearfix"></div> -->
	<div class="work-images grid">
		<ul class="grid-lod effect-2" id="grid">
			<li><img src="${ctx}/resources/images/jiwon	.jpg" alt=""
				class="img-responsive" /></li>
		</ul>
</div>	
</div>
<!-- work details -->
 </main>
<!-- main -->