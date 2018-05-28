<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="${ctx}/resources/css/write.css">

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<style>
a{font-weight:bold; color:lightslategray;}
a:focus{color:dodgerblue;}
@media (max-width: 1199px) and (min-width: 992px){.comments-reply li section{width:96%;}}
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
		                                <span style="display: flex; justify-content: flex-end; width:100%;">
		                                  <a href="${room.id}/ajax-comment-edit" style="margin-right:15px;">수정 </a>
		                                <input type="submit" class="del-button" value="삭제" style="background:none; font-weight:bold; color:lightslategray;" />
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
		                                <span id="note-detail-nickname">${rc.nickname} </span> 
		                                <button class="btn btn-default btn-add" style="color:red">
	<!-- 	                                답변 -->
		                                </button>
		                                </h4>
		                                <span style="display: flex; justify-content: flex-end; width:100%;">
		                                <a href="${room.id}/ajax-comment-edit" style="margin-right:15px;">수정 </a>
		                                <input type="submit" class="del-button" value="삭제" style="background:none; font-weight:bold; color:lightslategray;" />
		                                </span>
		                                </span>
		                                <div class="date-pan">${rc.regDate}</div>
		                              	<span>${rc.content}</span>
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
        <script src="${ctx}/resources/js/bootstrap.confirm.js"  type="text/javascript"></script>
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
	          			
	          				nickname.textContent = comments[i].nickname;
	          				regDate.textContent = comments[i].regDate;
	          				content.textContent = comments[i].content;
	          				
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
	var delButton = $(".del-button");
	var roomCommentUl = $(".comments-reply");		
		delButton.click(function(e){
		e.preventDefault();
		
		var roomCommentId = $("#note-comment-id").text();
	 	var data = $(".comments-pan form").serialize();
	 	
	 	var cf = confirm("삭제하시겠습니까?");
	 		if(cf ==true ){
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
			          				var nickname = cloneLi.querySelector("#note-detail-nickname");
			          				var regDate = cloneLi.querySelector("#note-detail-regDate");
			          				var content = cloneLi.querySelector("#note-detail-content");
			          			
			          				nickname.textContent = comments[i].nickname;
			          				regDate.textContent = comments[i].regDate;
			          				content.textContent = comments[i].content;
			          				
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
