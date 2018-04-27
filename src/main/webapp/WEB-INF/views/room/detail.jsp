<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<main role="main-inner-wrapper" class="container padding-top-ninety">
            	<div class="blog-details">
                	<article class="post-details" id="post-details">
                        <header role="bog-header" class="bog-header text-center">
                            <h3>2018 04 02</h3>
                            <h2> 홀랜드로드에 1인실 커먼룸있습니다.</h2>
                        </header>
                        <figure class="flex-center">
                            <img src="${ctx}/resources/images/p1.jpg" alt="" class="img-responsive detail-main-img"/>
                        </figure>
                        <div class="enter-content">
             
                        <p>
위치는 홀랜드 빌리지에서 보타닉가든 방향으로 꺾어져서 버스로 한 정류장거리에 있구요.

전체적으로 방은 3개인데, 여학생이 혼자 쓰는 방입니다.

3월17일부터 입주하실 수 있습니다.

 

여자분만 신청하실 수 있고, 흡연자/애완동물은 안됩니다.

방에는 에어컨,책상,싱글침대,옷장이 있습니다. 에어컨은 주인이 새로 교체해줬습니다.

(주방 사진에 있는 빨래건조기는 없습니다. 주인이 고장난걸 그냥 놔뒀던겁니다.)

 

콘도가 도로에 붙어있지만, 저희 집은 콘도 안쪽에 있어서 소음이 전혀없습니다. 

아주 조용하구요.

집안에 세탁기,냉장고,인터넷,가스렌지,전자렌지 모두 구비돼있고 취사는 자유롭습니다.

공과금은 입주자 전체 숫자로 나눠서 한달에 한번씩 내구요. 대략 50불정도 입니다.

24시간 사용할 수 있는 gym이 조그맣게 있고, 수영장은 작아서 10미터 정도 길이입니다.

 

버스정류장이 콘도 정문 바로 앞(5미터)에 있어서 버스로 출퇴근하시면 엄청 편합니다.

홀랜드 빌리지 역이 약3백미터 거리, 버스정류장으로는 한 정류장 거리 입니다.

 

홀랜드 빌리지에 24시간 콜드스토리지,은행들,상가,2개의 호커센터가 있습니다.

 

홀랜드 빌리지 안쪽으로 좀더 들어가면 페어프라이스와 가게들이 있습니다.

 

한달에 850불이고, 보증금은 500불입니다.

카톡: xaexal 로 연락주세요.
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