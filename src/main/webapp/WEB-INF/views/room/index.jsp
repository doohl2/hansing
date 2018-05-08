<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />

<main role="main-inner-wrapper" class="container padding-top-ninety">
<div class="row">

<div class="tool-box-frame tool-box-frame-resp">
	<div style="width:100px;">	
	</div>
	
	<div class="tool-inbox-right">
		<button class="background-border-none" onclick="myFunction()">
		<img class="tool-box-img-size" src="../resources/images/ic_search_black_48px.svg">
		</button>
		<a href="write">
		<img class="tool-box-img-size" src="../resources/images/ic_create_black_48px.svg">
		</a>
	</div>
</div>

<div id="search-toggle" style="display: none;">
	<div id="search-toggle" class="navbar-form toogle-form-frame"
		role="search"
		>
		<div class="form-group" style="width: 100%;">
			<form>
				<input class="community-input" type="text" placeholder="검색어를 입력하세요"/>
			</form>
		</div>
		<button class="btn btn-default" onclick="myFunction2()">
			<span id="function2" class="community-search-detail" >상세검색</span>
		</button>
	</div>
</div>

<div id="search-toggle2" class="search-detail-frame">
	<div class="navbar-form navbar-left toogle-form-frame" role="search">
		<div style="width:100%; padding: 15px 15px 5px 5px;">
			<div>
				<span>가격</span>
			</div>
		</div>
	</div>
	<div class="community-search-button-frame"">
		<form>
		<button class="btn btn-default community-search-button">
			검색</button>
			</form>
	</div>
</div>

	<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 portfolio-item " style="margin-top:-15px;">
		<div role="pge-title-content"> <header>
		<h2>
			<span></span> 
		</h2>
		</header>
		<p>
		</p>
		</div>
	
	
		
		<ul class="grid-lod effect-2" id="grid">
				<c:forEach var="room" items="${rooms}" varStatus="status">
				<c:if test="${status.index%2==0}">
			<li>
			<section class="blog-content">
				 <a href="detail"> 
			<figure>
				<img src="${ctx}/resources/images/${room.mainImg}" alt="" class="img-responsive" />
			</figure>
				</a> <article>#${room.price} </article>
				 </section></li>
				 </c:if>
				 </c:forEach>
				
		<%-- 	<li><section class="blog-content"> <a
					href="blog-details.html"> <figure> <img
						src="${ctx}/resources/images/p1.jpg" alt="" class="img-responsive" />
					</figure>
				</a> <article> #룸렌트#콘도#홀랜드빌리지#1인실#1명#커먼룸#$500 </article> </section></li>
			<li><section class="blog-content"> <a
					href="blog-details.html"> <figure> <img
						src="${ctx}/resources/images/p1.jpg" alt="" class="img-responsive" />
					</figure>
				</a> <article> #룸렌트#콘도#홀랜드빌리지#1인실#1명#커먼룸#$500 </article> </section></li>
			<li><section class="blog-content"> <a
					href="blog-details.html"> <figure> <img
						src="${ctx}/resources/images/p1.jpg" alt="" class="img-responsive" />
					</figure>
				</a> <article> #룸렌트#콘도#홀랜드빌리지#1인실#1명#커먼룸#$500 </article> </section></li>
			<li><section class="blog-content"> <a
					href="blog-details.html"> <figure> <img
						src="${ctx}/resources/images/p1.jpg" alt="" class="img-responsive" />
					</figure>
				</a> <article> #룸렌트#콘도#홀랜드빌리지#1인실#1명#커먼룸#$500 </article> </section></li>
			<li><section class="blog-content"> <a
					href="blog-details.html"> <figure> <img
						src="${ctx}/resources/images/p1.jpg" alt="" class="img-responsive" />
					</figure>
				</a> <article> #룸렌트#콘도#홀랜드빌리지#1인실#1명#커먼룸#$500 </article> </section></li> --%>
		</ul>
	</div>
	
	
	
		<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 portfolio-item" style="margin-top:-15px;">
		<div role="pge-title-content"> <header>
		<h2>
			<span></span> 
		</h2>
		</header>
		<p>

		</p>
		</div>
		
		<ul class="grid-lod effect-2" id="grid">
		<c:forEach var="room" items="${rooms}" varStatus="status">
				<c:if test="${status.index%2!=0}">
			<li>
			<section class="blog-content">
				 <a href="detail"> 
			<figure>
				<img src="${ctx}/resources/images/${room.mainImg}" alt="" class="img-responsive" />
			</figure>
				</a> <article>#${room.price} </article>
				 </section></li>
				 </c:if>
				 </c:forEach>
				
				
		<%-- 	<li><section class="blog-content"> <a
					href="blog-details.html"> <figure> <img
						src="${ctx}/resources/images/p1.jpg" alt="" class="img-responsive" />
					</figure>
				</a> <article> #룸렌트#콘도#홀랜드빌리지#1인실#1명#커먼룸#$500 </article> </section></li>
			<li><section class="blog-content"> <a
					href="blog-details.html"> <figure> <img
						src="${ctx}/resources/images/p1.jpg" alt="" class="img-responsive" />
					</figure>
				</a> <article> #룸렌트#콘도#홀랜드빌리지#1인실#1명#커먼룸#$500 </article> </section></li>
			<li><section class="blog-content"> <a
					href="blog-details.html"> <figure> <img
						src="${ctx}/resources/images/p1.jpg" alt="" class="img-responsive" />
					</figure>
				</a> <article> #룸렌트#콘도#홀랜드빌리지#1인실#1명#커먼룸#$500 </article> </section></li>
			<li><section class="blog-content"> <a
					href="blog-details.html"> <figure> <img
						src="${ctx}/resources/images/p1.jpg" alt="" class="img-responsive" />
					</figure>
				</a> <article> #룸렌트#콘도#홀랜드빌리지#1인실#1명#커먼룸#$500 </article> </section></li>
			<li><section class="blog-content"> <a
					href="blog-details.html"> <figure> <img
						src="${ctx}/resources/images/p1.jpg" alt="" class="img-responsive" />
					</figure>
				</a> <article> #룸렌트#콘도#홀랜드빌리지#1인실#1명#커먼룸#$500 </article> </section></li> --%>
		</ul>
	</div>
</div>
</main>
<!-- main -->

<script>
function myFunction() {
	var x = document.getElementById("search-toggle");
	var y = document.getElementById("search-toggle2");
	var function2 = document.getElementById("function2");
	var searchImg = document.getElementById("search-img");
	if (x.style.display === "none") {
		x.style.display = "block";
		searchImg.src = "../resources/images/search.svg"
	} else {
		x.style.display = "none";
		y.style.display = "none";
		function2.style.color = "#a0a0a0";
		searchImg.src = "../resources/images/ic_search_black_48px.svg"
	}
}

function myFunction2() {
	var y = document.getElementById("search-toggle2");
	var function2 = document.getElementById("function2");
	if (y.style.display === "none") {
		y.style.display = "flex";
		function2.style.color = "#399cf7";
	} else {
		y.style.display = "none";
		function2.style.color = "#a0a0a0";
	}
}
</script>