<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="${ctx}/resources/css/write.css">
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
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
                	<h3>${room.commentCount}개의 댓글이 있습니다</h3>
                    <ul class="comments-reply">
	                    <c:forEach var="rc" items="${room.comments}">
	                    	<li>
	                          	<section>
	                                <h4>eotrmf <button class="btn btn-default btn-add" style="color:red">답변</button></h4>
	                                <div class="date-pan">${rc.regDate} </div>
	                              		${rc.content }
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
					
								<c:if test="${empty room.memberId}">
									<div class="row">
			                            <div class="clearfix"></div>
										<a href="../member/login"><input type="text" disabled="disabled" placeholder="로그인 후 이용가능합니다."> </a>		                        </div>					
								</c:if>
								
								<c:if test="${not empty room.memberId}">
								 <security:authorize access="hasRole('ROLE_ALL')">
			                      <div class="row">
			                                 <div class="clearfix"></div>
			                                 <div class="col-xs-12 col-sm-12 col-md-12">
			                                 	<textarea placeholder="댓글" name="content"></textarea>
			                                </div>
			                                <div class="text-center">
			                                	<input type="submit" value="댓글 달기" class="submit-button"/>
			                                </div>
			                        </div>
			                  	 </security:authorize>
			                	 </c:if>
			                	 
			                    </div>
                            </form>
               </div>  
               </div>               

        </main>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script>
	 $(function() {
		 var addBtn = $(".btn-add");

		 
		 addBtn.click(function(){
			 $("ol:first").toggle();
		 });
	
	});

</script>
<script>
window.addEventListener("load", function () {
    var selButton = document.querySelector(".btn-list > ul > li:first-child");
    var editButton = document.querySelector("#edit-button");
    var delButton = document.querySelector("#del-button");
    
    selButton.onclick = function () {
//     	if(editButton.className.show){
    	editButton.classList.add("show");
       	delButton.classList.add("show");
    	}
       	
//     	else{
//     	editButton.classList.remove("show");	
//        	delButton.classList.remove("show");
//        	}
//     }
});
</script>
<script>
	$(function(){
		var submitButton = $(".submit-button");
			
		submitButton.click(function(e){
			e.preventDefault();
							
	 	 	$.getJSON("${id}/ajax-comment-list",function(comments){
				
	 	 	   var data = $(".comments-pan form").serialize();
	 	 	   
	 	         $.post("${room.id}/comment/reg", data, function(result){
	                 if(parseInt(result) == 1){
	                	 alert('입력되었습니다.');
	                	  $.getJSON("${note.id}/ajax-comment/list", function(comments){
	                      });
	                } 
	             }); 
		});
	});
	});
</script>