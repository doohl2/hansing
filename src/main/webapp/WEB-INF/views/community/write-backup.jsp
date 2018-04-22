<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="${ctx}/resources/css/styl.css">
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
	<link rel="stylesheet" href="${ctx}/resources/js/file/style.css">

</head>
<div class="sub-container none-padding">
	<div>
		<!-- snb -->
		<div class="xe-col-sm-9 sub-content">
			<div class="board_list">
				<div class="detail-frame">

								<div class="form form-reset">
											<form id="file-upload-form" class="uploader" action="/" method="post" style="max-width:100% !important;">
												<div class="field-wrap search-toggle-css">
													<label class="write-form-label">제목d<span class="req">*</span></label> 
													<input class="community-input" type="email" required="" autocomplete="off">
												</div>
												
													  <div id="summernote"></div>
													  
<!-- 												<div class="field-wrap search-toggle-css"> -->
												
<!-- 												</div> -->
												
												
			  <input id="file-upload" type="file" name="fileUpload" accept="image/*" />

  <label for="file-upload" id="file-drag">
    <img id="file-image" src="#" alt="Preview" class="hidden">
    <div id="start">
      <i class="fa fa-download" aria-hidden="true"></i>
      <div>Select a file or drag here</div>
      <div id="notimage" class="hidden">Please select an image</div>
      <span id="file-upload-btn" class="btn btn-primary">Select a file</span>
    </div>
    <div id="response" class="hidden">
      <div id="messages"></div>
      <progress class="progress" id="file-progress" value="0">
        <span>0</span>%
      </progress>
    </div>
  </label>
												
												
												
												
												
												<button class="button button-block">
												등록
												</button>
											</form>
											
<!-- 											<form id="file-upload-form" class="uploader"> -->
<!--   <input id="file-upload" type="file" name="fileUpload" accept="image/*" /> -->

<!--   <label for="file-upload" id="file-drag"> -->
<!--     <img id="file-image" src="#" alt="Preview" class="hidden"> -->
<!--     <div id="start"> -->
<!--       <i class="fa fa-download" aria-hidden="true"></i> -->
<!--       <div>Select a file or drag here</div> -->
<!--       <div id="notimage" class="hidden">Please select an image</div> -->
<!--       <span id="file-upload-btn" class="btn btn-primary">Select a file</span> -->
<!--     </div> -->
<!--     <div id="response" class="hidden"> -->
<!--       <div id="messages"></div> -->
<!--       <progress class="progress" id="file-progress" value="0"> -->
<!--         <span>0</span>% -->
<!--       </progress> -->
<!--     </div> -->
<!--   </label> -->
<!-- </form> -->
											
								</div>
							
						</div>

					</div>
				</div>
			</div>
		</div>




<div id="summernote"></div>
<script>
	$('#summernote').summernote({
		placeholder : '내용',
		tabsize : 2,
		height : 400
	});
	
</script>
<script	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="${ctx}/resources/js/index.js"></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
  <script  src="${ctx}/resources/js/file/index.js"></script>

