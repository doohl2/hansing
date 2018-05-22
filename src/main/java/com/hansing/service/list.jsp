<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
	<main class="main">
		<section class="note-list">
			<h1 class="hidden"> 노트목록 	</h1>
			<ul class="">
		<c:forEach var="note" items="${notes}">
			<li>
					<div> <a href="${note.id}">${note.title }</a></div>
					<div>${note.content }</div>
					<div><span></span><span>${note.regDate }</span><span>
<%-- 					(${note.commentCount }) --%>
					</span></div>
			</li>
		</c:forEach>
		</ul>
		</section>	
	</main>