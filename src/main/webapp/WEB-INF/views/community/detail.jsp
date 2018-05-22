<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="${ctx}/resources/css/write.css">
<main role="main-inner-wrapper" class="container padding-top-ninety">
<div class="sub-container none-padding">
	<div>
		<!-- snb -->
		<div class="xe-col-sm-9 sub-content">
			<div class="board_list">
				<div class="detail-frame">
					<div class="detail-title-frame">
					
							<div class="board_list">
							<table>
								<thead>
								</thead>
								<tbody>
									<tr>
										<td class="title column-title"><a href="#" class="title_text">게시글1</a> <a href="#"
											class="reply_num xe-hidden-xs" title="Replies">2</a> <span class="bd_ico_new"><i class="xi-new"></i><span class="xe-sr-only">new</span></span>
											<div class="more_info xe-visible-xs">
												<a href="#" class="mb_author">admin</a> <span class="mb_time" title="2018-04-17 00:57:36"><i class="xi-time"></i> <span	data-xe-timeago="2018-04-17 00:57:36">8분 전</span></span>
												 <span class="mb_readnum"><i class="xi-eye"></i> 1</span>
											</div></td>
										<td class="author xe-hidden-xs"><a href="#"">admin</a></td>
										<td class="xe-hidden-xs column-assent_count">0</td>
										<td class="read_num xe-hidden-xs">1</td>
										<td class="time xe-hidden-xs column-created_at">8분 전</td>
									</tr>
								</tbody>
							</table>
						</div>
					
					</div>

					<div class="detail-content-frame">

						</div>
				</div>
			</div>
		</div>
	</div>
	
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
                    
                    <div style="display:flex; justify-content: space-between;">
	                    	<h4>댓글 달기</h4>
	                    	
	                   	<span style="font-weight:bold; font-size:15px;">비밀글
	                   	<label class="switch"> 
						  <input type="checkbox">
						  <span class="slider" style="top:10px; bottom:-10px;"></span>
						</label>
						</span>
					</div>			
		
					
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