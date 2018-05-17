<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                <div class="comments-pan">
                	<h3>3개의 댓글이 있습니다</h3>
                    <ul class="comments-reply">
                    	<li>
                          	<section>
                                <h4>eotrmf <button class="btn btn-default btn-add" style="color:red">답변</button></h4>
                                <div class="date-pan">2018.4.23</div>
                              		제가 예약할게요
                            </section>
                            
							<ol class="reply-pan" style="display:none">
                            	<li>
	                            <section>
	                                        <h4> rmfTmsdl <button class="btn btn-default btn-add2" style="color:red">답변</button></h4>
	                                        <div class="date-pan">2018.4.23</div>
	                                       ㅇㅋ
	                            </section>
                                </li>
                                
			                            <ol class="reply-pan" style="display:none">
			                            	<li>
				                            <section>
				                                        <h4> rmfTmsdl <button class="btn btn-default btn-add2" style="color:red">답변</button></h4>
				                                        <div class="date-pan">2018.4.23</div>
				                                       ㅇㅋ
				                            </section>
			                                </li>
			                            </ol>
                            
                            </ol>
                       </li>
                    </ul>
                    
                    <div class="commentys-form">
                    	<h4>댓글 달기</h4>
                      <div class="row">
                        	<form action="" method="get">                            
                                 <div class="clearfix"></div>
                                 <div class="col-xs-12 col-sm-12 col-md-12">
                                 	<textarea name="" cols="" rows="" placeholder="댓글"></textarea>
                                </div>
                                <div class="text-center">
                                	<input name="" type="button" value="댓글 달기">
                                </div>
                            </form>
                        </div>
                    </div>
               </div>  
               </div>               

        </main>
 <script>
	 $(function() {
		 var addBtn = $(".btn-add");

		 
		 addBtn.click(function(){
			 $("ol:first").toggle();
		 });
	
	});

</script>