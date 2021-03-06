<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="${ctx}/resources/css/write.css">
<link rel="stylesheet" href="${ctx}/resources/dist/jquery-confirm.min.css">
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<style>
a{font-weight:bold; color:lightslategray;}
a:focus{color:dodgerblue;}
.del-button{margin-bottom:0px;}
@media (max-width: 1199px) and (min-width: 992px){
.comments-reply li section{width:96%;}
.del-button{margin-bottom:0px;}
}
@media (min-width: 768px) and (max-width: 991px) {
.del-button{margin-bottom:0px;}
}
@media (max-width: 767px) {
.del-button{margin-bottom:0px;}
}

.correct-login{margin-bottom:14px;}
@media (max-width: 1199px) and (min-width: 992px){
.comments-reply li section{width:96%;}
.correct-login{margin-bottom:2px;}
}
@media (min-width: 768px) and (max-width: 991px) {
.correct-login{margin-bottom:0px;}
}
@media (max-width: 767px) {
.correct-login{margin-bottom:6px;}
}


</style>
<main role="main-inner-wrapper" class="container padding-top-ninety">
            	<div class="blog-details">
                	<article class="post-details" id="post-details">
                        <header role="bog-header" class="bog-header text-center">
                            <h3><fmt:formatDate value="${room.regDate }" pattern="yyyy MM dd"/></h3>
                            <h2>${room.title}</h2>
                        </header>
                        <figure class="flex-center">
                            <img src="${ctx}/resources/images/p1.jpg" alt="" class="img-responsive detail-main-img"/>
                        </figure>
                        <div class="enter-content">
             
                        <p>
                        	${room.content}
                        </p>
                        </div>
                	</article>
                	
                	
             	<!-- Comments -->	
             	
             	<!-- 대댓글 예시 
             	<li>
                          	<section>
                                <h4>eotrmf <button class="btn btn-default btn-add" style="color:red">답변</button></h4>
                                <div class="date-pan">2018.4.23</div>
                              		제가 예약할게요
                            </section>
                            
							<ol class="reply-pan" style="">
                            	<li>
	                            <section>
	                                        <h4> rmfTmsdl <button class="btn btn-default btn-add2" style="color:red">답변</button></h4>
	                                        <div class="date-pan">2018.4.23</div>
	                                  		     ㅇㅋ
	                            </section>
                                </li>
                            </ol>
                </li> -->
             	
              	  <div class="comments-pan">
                	<h3 id="comment-count"><span>${room.commentCount}</span>개의 댓글이 있습니다</h3>
                        <template id="note-comment-template">
		                    	<li>
		                          	<section>
		                          	<span style="display: flex;">
		                                <h4>
		                                <span id ="note-comment-id" style="display: none;"></span>
		                                <span id="note-detail-nickname"> </span> 
		                                <button class="btn btn-default btn-add" style="color:red">
		                                </button>
		                                </h4>
		                                <span id="note-comment-memberId" style="display:none;"></span>
		                               <span id="correct-del-area" style="display: flex; justify-content: flex-end; width:100%;">
		                                 <input type="submit" class="correct-button" value="수정" style="background:none; font-weight:bold; color:lightslategray; margin-right:15px; margin-bottom:15px" /> 
		                                 <input id="template-del" type="submit" class="correct-button" value="삭제" style="background:none; font-weight:bold; margin-bottom:13px; color:lightslategray;"/>
		                                </span>
		                              	 </span>
		                              	 
		                                <div class="date-pan" id="note-detail-regDate"> </div>
		                              	<span id="note-detail-content"> </span>
		                            </section>
		                       </li>
		                       </template>
	                         
	           			  <ul class="comments-reply">
	                         <c:forEach var="rc" items="${room.comments}">
		                       	 <li>
		                          	<section>
		                          		<span style="display: flex;">		                          	
		                                <h4>
		                                <span id ="note-comment-id" style="display: none;" >${rc.id}</span>
		                                <span id="note-detail-nickname">${rc.nickname}</span> 
		                                <button class="btn btn-default btn-add" style="color:red">
	<!-- 	                                답변 -->
		                                </button>
		                                </h4>
		                                
		                                <security:authorize access="isAuthenticated()">
		                                <span id ="note-comment-memberId" style="display:none;">${rc.memberId}</span>
		                                
		                                <c:if test="${loginId==rc.memberId}">
		                                <span style="display: flex; justify-content: flex-end; width:100%;">
		                                <input type="submit" class="edit-button" value="수정" style="background:none; font-weight:bold; color:lightslategray; margin-right:15px;"/>
		                                <input type="submit" class="del-button" value="삭제" style="background:none; font-weight:bold; color:lightslategray;" />
		                                </span>
		                                </c:if>
		                                
		                                <c:if test="${loginId!=rc.memberId}">
		                                <!-- <span style="display: flex; justify-content: flex-end; width:100%;">
		                                <input type="submit" class="correct-login" value="수정" style="background:none; font-weight:bold; color:lightslategray; margin-right:15px; margin-bottom: 15px;" onclick="myCommentEditOnly()"/>
		                                <input type="submit" class="correct-login" value="삭제" style="background:none; font-weight:bold; color:lightslategray;" onclick="myCommentDelOnly()" />
		                                </span> -->
		                                </c:if>
		                                </security:authorize>
		                               
		                                <security:authorize access="!isAuthenticated()">
		                            <!--     <span style="display: flex; justify-content: flex-end; width:100%;">
		                                <a class="after-login" href="../member/login" style="margin-right:15px;">수정 </a>
		                                 <a class="after-login" href="../member/login" style="margin-top:4px;">
		                                <input type="submit" value="삭제" style="background:none; font-weight:bold; color:lightslategray;" />
		                                </a>
		                                </span> -->
		                                </security:authorize>
		                                
		                                </span>
		                                <div class="date-pan">${rc.regDate}</div>
		                              	<span id="note-detail-content">${rc.content}</span>
		                            </section>
		                       </li>
	                	    </c:forEach>
                    </ul>
                    
                        	<form action="${room.id}/comment/reg" method="post">                            
			                    <div class="commentys-form">
			                    
			                    <div style="display:flex; justify-content: space-between;">

				                    	<h4>댓글 달기</h4>
				                    	
				                   	<span style="font-weight:bold; font-size:15px;">비밀글
				                   	<label class="switch"> 
									  <input type="checkbox" id="secret-option" name="secret" value="true">
									  <span class="slider" style="top:10px; bottom:-10px;"></span>
									</label>
									</span>
								</div>
					
								<security:authorize access="!isAuthenticated()">
									<div class="row">
			                            <div class="clearfix"></div>
										<a href="../member/login">
										<input type="text" disabled="disabled" placeholder="로그인 후 이용가능합니다. 클릭!"> </a>		                    
								    </div>					
								</security:authorize>
								
								<security:authorize access="isAuthenticated()">
			                      <div class="row">
			                                 <div class="clearfix"></div>
			                                 <div class="col-xs-12 col-sm-12 col-md-12">
			                                 	<textarea placeholder="댓글" name="content" id="room-detail-textarea"></textarea>
			                                </div>
			                                <div class="text-center">
			                                	<input type="submit" value="댓글 달기" class="submit-button" />
			                                </div> 
			                        </div>
			                	 </security:authorize>
			                	 
			                    </div>
                            </form>
               </div>  
               </div>                              


        </main>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="${ctx}/resources/dist/jquery-confirm.min.js"  type="text/javascript"></script>
		
 <script>
	 $(function() {
		 var addBtn = $(".btn-add");
		 addBtn.click(function(){
			 $("ol:first").toggle();
		 });
	});
</script>

<script>

	$(function(){
		var submitButton = $(".submit-button");
	  	var roomCommentUl = $(".comments-reply");		
	  	
		submitButton.click(function(e){
			e.preventDefault();
			
	 	 	   var data = $(".comments-pan form").serialize();
	 	         $.post("${room.id}/comment/reg", data, function(result){
				
	                 if(parseInt(result) == 1){
	                		//1. 기존의 목록을 지운다
	          			  $("#room-detail-textarea").val('');

	          				var commentCountSpanText = $("#comment-count span").text();
	                		var commentCountSpan = $("#comment-count span");
	                		var commentCount = $("#comment-count");
	                	
	                		var incCount = parseInt(commentCountSpanText);
	                		commentCountSpan.empty();
	          				incCount++;
	          				commentCountSpan.append(incCount);     				
	                	         
	                	  $.getJSON("${id}/ajax-comment-list", function(comments){               		  
	          				roomCommentUl.empty();

	          				var template = document.querySelector("#note-comment-template");

	                		  for(var i = 0; i < comments.length; i++){
	                			  
	          			//2-1. 댓글 항목을 위한 View템플릿 사본을 준비	          			
 							var cloneLi = document.importNode(template.content,true);
	          		
	          			//2-2. view템플릿 사본에 데이터 채우기
	          				var nickname = cloneLi.querySelector("#note-detail-nickname");
	          				var regDate = cloneLi.querySelector("#note-detail-regDate");
	          				var content = cloneLi.querySelector("#note-detail-content");
	          				var id = cloneLi.querySelector("#note-comment-id");
	          				var memberId = cloneLi.querySelector("#note-comment-memberId"); 
	          				var templateDel = cloneLi.querySelector("#template-del");
	          				var correctDelArea = cloneLi.querySelector("#correct-del-area");
	          				
	          				nickname.textContent = comments[i].nickname;
	          				regDate.textContent = comments[i].regDate;
	          				content.textContent = comments[i].content;
	          				id.textContent = comments[i].id;
	          				memberId.textContent = comments[i].memberId;
	          				
	          				var loginId = '${loginId}';
	          				
	          				if(loginId==memberId.textContent)
	          					correctDelArea.addEventListener("load", initialiseTable, false);
	          				
	          				
          					if(loginId==memberId.textContent)
          					templateDel.addEventListener("click", myFunction);
          					if(loginId!=memberId.textContent)
	          					templateDel.addEventListener("click", myCommentDelOnly);
	          			//2-3. view를 docmument 노드에 추가
	          				roomCommentUl.get(0).appendChild(cloneLi);
			                   }
	                     }); 
	                } 
	          }); 
		});
});
</script>
<script>
var roomCommentId = $("#note-comment-id").text();
var data = $(".comments-pan form").serialize();
var delButton = $(".del-button");	
var roomCommentUl = $(".comments-reply");		

 		function myFunction() { 			
 	 		var roomCommentId = $("#note-comment-id").text();
 		 	var data = $(".comments-pan form").serialize();
 		 	var cf = confirm("삭제하시겠습니까?");
 		 	var correctDelArea = $("#correct-del-area");
 		 	 		 	
 		 		if(cf == true ){
 				$.post("${room.id}/"+roomCommentId+"/comment/del", data, function(result){
 							 $.getJSON("${id}/ajax-comment-list", function(comments){               		  
 								   if(parseInt(result) == 0){
 				                		//1. 기존의 목록을 지운다
 				          			  $("#room-detail-textarea").val('');

 				          				var commentCountSpanText = $("#comment-count span").text();
 				                		var commentCountSpan = $("#comment-count span");
 				                		var commentCount = $("#comment-count");
 				                		var incCount = parseInt(commentCountSpanText);
 				                		commentCountSpan.empty();
 				          				incCount--;
 				          				commentCountSpan.append(incCount);     				
 				                	         
 				                	  $.getJSON("${id}/ajax-comment-list", function(comments){               		  
 				          				roomCommentUl.empty();

 				          				var template = document.querySelector("#note-comment-template");

 				                		  for(var i = 0; i < comments.length; i++){	
 				                			  
 				          			//2-1. 댓글 항목을 위한 View템플릿 사본을 준비	          			
 			 							var cloneLi = document.importNode(template.content,true);
 				          		
 				          			//2-2. view템플릿 사본에 데이터 채우기
 				          				var id = cloneLi.querySelector("#note-comment-id");
 		          						var nickname = cloneLi.querySelector("#note-detail-nickname");
 			          					var regDate = cloneLi.querySelector("#note-detail-regDate");
 			          					var content = cloneLi.querySelector("#note-detail-content");
 			          					var memberId = cloneLi.querySelector("#note-comment-memberId"); 
 			          					var templateDel = cloneLi.querySelector("#template-del");
 			          					var correctDelArea = cloneLi.querySelector("#correct-del-area");
 			          					          					
 			          					id.textContent = comments[i].id;
 			          					nickname.textContent = comments[i].nickname;
 			          					regDate.textContent = comments[i].regDate;
 			          					content.textContent = comments[i].content;
 			          					memberId.textContent = comments[i].memberId;
 			          					
 			          					var loginId = '${loginId}';
 				          			
 			          					if(loginId==memberId.textContent)
 				          					correctDelArea.addEventListener("load", initialiseTable, false);
 				          				 			          						
 			          					if(loginId==memberId.textContent)
 			          					templateDel.addEventListener("click", myFunction);
 			          					if(loginId!=memberId.textContent)
 				          					templateDel.addEventListener("click", myCommentDelOnly);
 				          			//2-3. view를 docmument 노드에 추가
 				          				roomCommentUl.get(0).appendChild(cloneLi);
 						                   }
 				                     }); 
 				                } 
 							 });
 				}); 
 			} 
 			}
 		
 
	delButton.click(function(){
		var correctDelArea = $("#correct-del-area");
 		var roomCommentId = $("#note-comment-id").text();
	 	var data = $(".comments-pan form").serialize();
	 	var cf = confirm("삭제하시겠습니까?");
	 	 	
	 		if(cf == true ){
			$.post("${room.id}/"+roomCommentId+"/comment/del", data, function(result){
						 $.getJSON("${id}/ajax-comment-list", function(comments){               		  
							   if(parseInt(result) == 0){
			                		//1. 기존의 목록을 지운다
			          			  $("#room-detail-textarea").val('');

			          				var commentCountSpanText = $("#comment-count span").text();
			                		var commentCountSpan = $("#comment-count span");
			                		var commentCount = $("#comment-count");
			                		var incCount = parseInt(commentCountSpanText);
			                		commentCountSpan.empty();
			          				incCount--;
			          				commentCountSpan.append(incCount);     				
			                	         
			                	  $.getJSON("${id}/ajax-comment-list", function(comments){               		  
			          				roomCommentUl.empty();

			          				var template = document.querySelector("#note-comment-template");

			                		  for(var i = 0; i < comments.length; i++){	
			                			  
			          			//2-1. 댓글 항목을 위한 View템플릿 사본을 준비	          			
		 							var cloneLi = document.importNode(template.content,true);
			          		
			          			//2-2. view템플릿 사본에 데이터 채우기
			          				var id = cloneLi.querySelector("#note-comment-id");
	          						var nickname = cloneLi.querySelector("#note-detail-nickname");
		          					var regDate = cloneLi.querySelector("#note-detail-regDate");
		          					var content = cloneLi.querySelector("#note-detail-content");
		          					var memberId = cloneLi.querySelector("#note-comment-memberId"); 
		          					var templateDel = cloneLi.querySelector("#template-del");
		          					var correctDelArea = cloneLi.querySelector("#correct-del-area");
		          					
		          					id.textContent = comments[i].id;
		          					nickname.textContent = comments[i].nickname;
		          					regDate.textContent = comments[i].regDate;
		          					content.textContent = comments[i].content;
		          					memberId.textContent = comments[i].memberId;
		          					
			          				var loginId = '${loginId}';
			          				
			          				if(loginId==memberId.textContent)
			          					correctDelArea.addEventListener("load", initialiseTable, false);
			          				
		          					if(loginId==memberId.textContent)
		          					templateDel.addEventListener("click", myFunction);
		          					if(loginId!=memberId.textContent)
		          					templateDel.addEventListener("click", myCommentDelOnly);
			          			//2-3. view를 docmument 노드에 추가
			          				roomCommentUl.get(0).appendChild(cloneLi);
					                   }
			                     }); 
			                } 
					 });
			}); 
		} 	
	});
</script>

<script>
var roomCommentId = $("#note-comment-id").text();
var data = $(".comments-pan form").serialize();
var editButton = $(".edit-button");	
var roomCommentUl = $(".comments-reply");	

 		function editFunction() { 			
 	 		var roomCommentId = $("#note-comment-id").text();
 		 	var data = $(".comments-pan form").serialize();
 		 	var cf = confirm("수정하시겠습니까?");
 		 	
 		 		if(cf == true ){
 				$.post("${room.id}/"+roomCommentId+"/comment/edit", data, function(result){
 							 $.getJSON("${id}/ajax-comment-list", function(comments){               		  
 								   if(parseInt(result) == 0){
 				                		//1. 기존의 목록을 지운다
 				          			  $("#room-detail-textarea").val('');

 				          				var commentCountSpanText = $("#comment-count span").text();
 				                		var commentCountSpan = $("#comment-count span");
 				                		var commentCount = $("#comment-count");
 				                		var incCount = parseInt(commentCountSpanText);
 				                		commentCountSpan.empty();
 				          				incCount--;
 				          				commentCountSpan.append(incCount);     				
 				                	         
 				                	  $.getJSON("${id}/ajax-comment-list", function(comments){               		  
 				          				roomCommentUl.empty();

 				          				var template = document.querySelector("#note-comment-template");

 				                		  for(var i = 0; i < comments.length; i++){	
 				                			  
 				          			//2-1. 댓글 항목을 위한 View템플릿 사본을 준비	          			
 			 							var cloneLi = document.importNode(template.content,true);
 				          		
 				          			//2-2. view템플릿 사본에 데이터 채우기
 				          				var id = cloneLi.querySelector("#note-comment-id");
 		          						var nickname = cloneLi.querySelector("#note-detail-nickname");
 			          					var regDate = cloneLi.querySelector("#note-detail-regDate");
 			          					var content = cloneLi.querySelector("#note-detail-content");
 			          					var memberId = cloneLi.querySelector("#note-comment-memberId"); 
 			          					var templateDel = cloneLi.querySelector("#template-del");
 			          					
 			          					id.textContent = comments[i].id;
 			          					nickname.textContent = comments[i].nickname;
 			          					regDate.textContent = comments[i].regDate;
 			          					content.textContent = comments[i].content;
 			          					memberId.textContent = comments[i].memberId;
 			          					
 			          					var loginId = '${loginId}';
 				          			
 			          					if(loginId==memberId.textContent)
 			          					templateDel.addEventListener("click", myFunction);
 			          					if(loginId!=memberId.textContent)
 				          					templateDel.addEventListener("click", myCommentDelOnly);
 				          			//2-3. view를 docmument 노드에 추가
 				          				roomCommentUl.get(0).appendChild(cloneLi);
 						                   }
 				                     }); 
 				                } 
 							 });
 				}); 
 			} 
 			}
 		
 
 		editButton.click(function(){
	
 		var roomCommentId = $("#note-comment-id").text();
	 	var data = $(".comments-pan form").serialize();
	 	var cf = confirm("수정하시겠습니까?");
	 	 	
	 		if(cf == true ){
			$.post("${room.id}/"+roomCommentId+"/comment/edit", data, function(result){
						 $.getJSON("${id}/ajax-comment-list", function(comments){               		  
							   if(parseInt(result) == 0){
			                		//1. 기존의 목록을 지운다
			          			  $("#room-detail-textarea").val('');

			          				var commentCountSpanText = $("#comment-count span").text();
			                		var commentCountSpan = $("#comment-count span");
			                		var commentCount = $("#comment-count");
			                		var incCount = parseInt(commentCountSpanText);
			                		commentCountSpan.empty();
			          				incCount--;
			          				commentCountSpan.append(incCount);     				
			                	         
			                	  $.getJSON("${id}/ajax-comment-list", function(comments){               		  
			          				roomCommentUl.empty();

			          				var template = document.querySelector("#note-comment-template");

			                		  for(var i = 0; i < comments.length; i++){	
			                			  
			          			//2-1. 댓글 항목을 위한 View템플릿 사본을 준비	          			
		 							var cloneLi = document.importNode(template.content,true);
			          		
			          			//2-2. view템플릿 사본에 데이터 채우기
			          				var id = cloneLi.querySelector("#note-comment-id");
	          						var nickname = cloneLi.querySelector("#note-detail-nickname");
		          					var regDate = cloneLi.querySelector("#note-detail-regDate");
		          					var content = cloneLi.querySelector("#note-detail-content");
		          					var memberId = cloneLi.querySelector("#note-comment-memberId"); 
		          					var templateDel = cloneLi.querySelector("#template-del");
			          				
		          					id.textContent = comments[i].id;
		          					nickname.textContent = comments[i].nickname;
		          					regDate.textContent = comments[i].regDate;
		          					content.textContent = comments[i].content;
		          					memberId.textContent = comments[i].memberId;
		          					
			          				var loginId = '${loginId}';
			          				
		          					if(loginId==memberId.textContent)
		          					templateDel.addEventListener("click", myFunction);
		          					if(loginId!=memberId.textContent)
		          					templateDel.addEventListener("click", myCommentDelOnly);
			          			//2-3. view를 docmument 노드에 추가
			          				roomCommentUl.get(0).appendChild(cloneLi);
					                   }
			                     }); 
			                } 
					 });
			}); 
		} 	
	});
</script>

<script>		
	$(".after-login").confirm({
	    title: '로그인 후 이용 가능합니다.',
	    content: '',
	    theme: 'Modern',
	    buttons: {
	    	로그인하기: function(){
	    		location.href = this.$target.attr('href');
	    	},
			취소: function(){
				
			}
	    }
});	

/* 	$(".correct-login").confirm({
	    title: '경고',
	    content: '본인 댓글만 삭제할 수 있습니다',
	    theme: 'Modern',
	    buttons:{
	    	확인:function(){
	    	}
	    }
	    }); */
	
 	function myCommentDelOnly(){
		alert('본인 글만 삭제할 수 있습니다.');
	} 
	    
	function myCommentEditOnly(){
		alert('본인 글만 수정할 수 있습니다.');
	}
	
	function initialiseTable() {
		    alert('d');
		    };
		
</script>
<script>

</script>