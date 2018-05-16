<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var = "now" value = "<%=new java.util.Date()%>"  />
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<fmt:setLocale value="en_US" scope="session"/>
<main role="main-inner-wrapper" class="container padding-top-ninety">

<div class="tool-box-frame">
	<div style="width: 100px;"></div>

	<div class="tool-inbox-right">
		<button class="background-border-none" onclick="myFunction()">
			<img id="search-img" class="tool-box-img-size"
				src="../resources/images/ic_search_black_48px.svg">
		</button>
		<a href="write">
		<img class="tool-box-img-size"
			src="../resources/images/ic_create_black_48px.svg"></a>
	</div>
</div>

<div id="search-toggle" style="display: none;">
	<div id="search-toggle" class="navbar-form toogle-form-frame"
		role="search">
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
	<div class="navbar-form navbar-left toogle-form-frame" role="search"></div>

	<div class="community-search-button-frame"">
		<form>
		<button class="btn btn-default community-search-button">
			검색</button>
			</form>
	</div>
</div>




<div class="sub-container none-padding">
	<div>
		<!-- snb -->
		<div class="xe-col-sm-9 sub-content">

			<div class="board_list">
				<table>
					<!-- [D] 모바일뷰에서 숨겨할 요소 클래스 xe-hidden-xs 추가 -->
					<thead class="xe-hidden-xs">
						<!-- LIST HEADER -->
						<tr>
							<th scope="col" class="title column-th-title"><span>제목</span></th>
							<th scope="col" class="column-th-writer"><span>작성자</span></th>
							<th scope="col" class="column-th-assent_count"><span>추천수</span></th>
							<th scope="col" class="column-th-read_count"><span>조회수</span></th>
							<th scope="col" class="column-th-created_at"><span>작성</span></th>
						</tr>
						<!-- /LIST HEADER -->
					</thead>
					<tbody>
						<!-- LIST -->
						
							<c:forEach var="cm" items="${communities}">
						<tr>
								<td class="title column-title">${cm.title}<a href="#" class="title_text"></a> 
									<a href="#" class="reply_num xe-hidden-xs" title="Replies">${cm.hit}</a> 
										<span class="bd_ico_new"><i class="xi-new"></i>
											<span class="xe-sr-only">new</span>
										</span>
										<div class="more_info xe-visible-xs">
												<a href="#" class="mb_author">${cm.memberId}</a>
											<span class="mb_time" title=""><i class="xi-time"></i> 
											<span id="now" data-xe-timeago="">
											<fmt:formatDate pattern ="m" value="${now}"/>
									
											분 전
											</span></span> <span class="mb_readnum">
     							    <i class="xi-eye"></i> ${cm.hit}</span>
									</div>
								</td>
									
								<td class="author xe-hidden-xs"><a href="#"">${cm.memberId}</a></td>
								<td class="xe-hidden-xs column-assent_count">0</td>
								<td class="read_num xe-hidden-xs">${cm.hit}</td>
								<td class="time xe-hidden-xs column-created_at">
								<fmt:formatDate pattern="mm" value="${cm.regDate}"/>
								분 전</td>
								
						</tr>
							</c:forEach>
					</tbody>
				</table>
			</div>


		</div>
	</div>
</div>

</main>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
function transferTime(time){
	 var now = new Date();
	 var sYear = time.substring(0,4);
	 var sMonth = time.substring(4,6)-1;
	 var sDate = time.substring(6,8);
	 var sHour = time.substring(8,10);
	 var sMin = time.substring(10,12);
	 var sSecond = time.substring(12,14);
	 var sc = 1000;

	 var today = new Date(sYear,sMonth,sDate,sHour,sMin,sSecond);
	 //지나간 초
	 var pastSecond = parseInt((now-today)/sc,10);

	 var date;
	 var hour;
	 var min;
	 var str = "";

	 var restSecond = 0;
	 if(pastSecond > 86400){
	  date = parseInt(pastSecond / 86400,10);
	  restSecond = pastSecond % 86400;
	  str = date + "일 ";
	  if(restSecond > 3600){
	   hour = parseInt(restSecond / 3600,10);
	   restSecond = restSecond % 3600;
	   str = str + hour + "시간 ";
	   if(restSecond > 60){
	    min = parseInt(restSecond / 60,10);
	    restSecond = restSecond % 60;
	    str = str + min + "분 " + restSecond + "초 전";
	   }else{
	    str = str + restSecond + "초 전";
	   }
	  }else if(restSecond > 60){
	   min = parseInt(restSecond / 60,10);
	   restSecond = restSecond % 60;
	   str = str + min + "분 " + restSecond + "초 전";
	  }else{
	   str = str + restSecond + "초 전";
	  }
	 }else if(pastSecond > 3600){
	  hour = parseInt(pastSecond / 3600,10);
	  restSecond = pastSecond % 3600;
	  str = str + hour + "시간 ";
	  if(restSecond > 60){
	   min = parseInt(restSecond / 60,10);
	   restSecond = restSecond % 60;
	   str = str + min + "분 " + restSecond + "초 전";
	  }else{
	   str = str + restSecond + "초 전";
	  }
	 }else if(pastSecond > 60){
	  min = parseInt(pastSecond / 60,10);
	  restSecond = pastSecond % 60;
	  str = str + min + "분 " + restSecond + "초 전";
	 }else{
	  str = pastSecond + "초 전";
	 }

	 return str;
	}
</script>
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