<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />

<link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="${ctx}/resources/css/styl.css">

<main role="main-inner-wrapper" class="container padding-top-ninety">
<div class="work-details">

<div class="form">
	<ul class="tab-group">
		<li class="tab"><a href="#signup">회원가입</a></li>
		<li class="tab active"><a href="#login">로그인</a></li>
	</ul>

	<div class="tab-content">
	
	<div id="login">
			<h1>로그인</h1>
			
			<form method="post">
				<div class="field-wrap">
					<label> 이메일 <span class="req">*</span>
					</label> <input type="email" name="username" required autocomplete="off" />
				</div>
				<div class="field-wrap">
					<label> 비밀번호 <span class="req">*</span>
					</label> <input type="password" name="password" required autocomplete="off" />
				</div>
				<p class="forgot">
					<a href="#">비밀번호 찾기</a>
				</p>
				<button type="submit" class="button button-block button-block-over" />
				로그인
				</button>
			</form>
			
		</div>
	
		<div id="signup">
			<h1>회원가입</h1>

			<form method="post" action="join">
				<div class="top-row">
					<div class="field-wrap">
						<label> 이름<span class="req">*</span>
						</label> <input type="text" name="name" required autocomplete="off" />
					</div>

					<div class="field-wrap">
						<label> 닉네임 <span class="req">*</span>
						</label> <input type="text" name="nickname" required autocomplete="off" />
					</div>
				</div>

				<div class="field-wrap">
					<label> 이메일 <span class="req">*</span>
					</label> <input type="email" name="id" required autocomplete="off" />
				</div>
				
				<div class="field-wrap">
					<label> 비밀번호<span class="req">*</span>
					</label> <input type="password" name="pwd" required autocomplete="off" />
				</div>
				
				<button type="submit" class="button button-block button-block-over" />
				회원가입
				</button>
				
			</form>
						
		</div>
		
	</div>
	<!-- tab-content -->
</div>
<!-- /form -->

</div>
</main>

<script	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="${ctx}/resources/js/index.js"></script>
<script>
$(function(){
	$(#login)
});
</script>