<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<head>
<link rel="stylesheet" href="${ctx}/resources/css/styl.css">
<link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.css" rel="stylesheet">
 <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.js"></script>
<script src="${ctx}/resources/js/summernote-ko-KR.js"></script>
<style>
label{
	position: static !important;
}
</style>
</head>
<main class="container padding-top-ninety">
	<form action="reg" method="post">
		<div class="sub-container none-padding">
			<div>
				<!-- snb -->
				<div class="xe-col-sm-9 sub-content">
					<div class="board_list">
						<div class="detail-frame">
							<div class="form form-reset">
									<div class="field-wrap search-toggle-css">
										<label class="write-form-label" style="position:absolute !important">제목</label>
										<input style="padding:0" class="community-input" type="text" required="" autocomplete="off" name="title">
									</div>

									  <textarea class="textarea form-control" id="summernote" name="content">
             					   </textarea>

									<div style="display:flex; justify-content: center">
										<button class="button button-block back" style="background-color:#444">취소</button>
										<button class="button button-block" style="background-color:#444">등록</button>
									</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</main>




<script>

	$('#summernote').summernote({
		tabsize : 2,
		height : 400,
		minHeight : null,
		maxHeight : null,
		focus : true,	
		lang : 'ko-KR' // 기본 메뉴언어 US->KR로 변경
	});
	
  	$(document).ready(function() {
		   $('#summernote').summernote({
		      lang : 'ko-KR',
		      height : 300,
		      fontNames: ['fontA',  'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', ],
		      fontNamesIgnoreCheck: ['fontA']
		   });
		}); 
  	
	window.addEventListener("load", function () {
		var back = document.querySelector(".back");
		  back.onclick = function (){
			  history.back();
			  }
  	});
  	
</script>
<script	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="${ctx}/resources/js/index.js"></script>



