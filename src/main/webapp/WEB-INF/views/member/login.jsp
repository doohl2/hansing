<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />

<link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="${ctx}/resources/css/styl.css">

<main role="main-inner-wrapper" class="container">
<div class="work-details">

<div class="form">
	<ul class="tab-group">
		<li class="tab active"><a href="#signup">회원가입</a></li>
		<li class="tab"><a href="#login">로그인</a></li>
	</ul>

	<div class="tab-content">
		<div id="signup">
			<h1>회원가입</h1>

			<form action="/" method="post">

				<div class="top-row">
					<div class="field-wrap">
						<label> 이름 <span class="req">*</span>
						</label> <input type="text" required autocomplete="off" />
					</div>

					<div class="field-wrap">
						<label> 닉네임 <span class="req">*</span>
						</label> <input type="text" required autocomplete="off" />
					</div>
				</div>

				<div class="field-wrap">
					<label> 이메일 <span class="req">*</span>
					</label> <input type="email" required autocomplete="off" />
				</div>
				
				<div class="field-wrap">
					<label> 비밀번호<span class="req">*</span>
					</label> <input type="password" required autocomplete="off" />
				</div>
				
				<button type="submit" class="button button-block" />
				회원가입
				</button>
			</form>
			
			
		</div>
		<div id="login">
			<h1>로그인</h1>
			<form action="/" method="post">
				<div class="field-wrap">
					<label> 이메일 <span class="req">*</span>
					</label> <input type="email" required autocomplete="off" />
				</div>
				<div class="field-wrap">
					<label> 비밀번호 <span class="req">*</span>
					</label> <input type="password" required autocomplete="off" />
				</div>
				<p class="forgot">
					<a href="#">비밀번호 찾기</a>
				</p>
				<button class="button button-block" />
				로그인
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