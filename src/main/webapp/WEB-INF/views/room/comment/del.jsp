<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<main>

</main>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
	$(function(){
		var auth = ${auth};
		
		if(auth == false){
			alert("본인 글만 삭제할 수 있습니다.");
			history.back();
		}
	});
</script>