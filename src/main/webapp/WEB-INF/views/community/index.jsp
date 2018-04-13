<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />

<link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="${ctx}/resources/css/styl.css">

<main role="main-inner-wrapper" class="container">
<div class="none-padding work-details">

<div class="tab">
	<ul class="tab-group">
  <button class="tablinks" onclick="openCity(event, 'London')" id="defaultOpen">London</button>
  <button class="tablinks" onclick="openCity(event, 'Paris')">Paris</button>
  <button class="tablinks" onclick="openCity(event, 'Tokyo')">Tokyo</button>
  	</ul>
  
</div>

<div id="London" class="tabcontent">
<input type="text" id="myInput" onkeyup="myFunction()"
	placeholder="Search for names.." title="Type in a name">

<table id="myTable">
	<tr class="header">
		<th style="width: 11.11111111111111%;">번호</th>
		<th style="width: 41.66666666666667%;">제목</th>
		<th style="width: 23.61111111111111%;">작성자</th>
		<th style="width: 13.8888888888889%;">등록일</th>
		<th style="width: 9.722222222222223%;">조회</th>
	</tr>
	
	<tr>
		<td>1</td>
		<td>싱가폴에서 아이와 갈수있는 곳들 모아봤어요~</td>
		<td>론코 Futterkiste</td>
		<td>2018-04-03</td>
		<td>1187</td>
	</tr>
	
	
	
	
	<tr>
		<td>1</td>
		<td>싱가폴에서 아이와 갈수있는 곳들 모아봤어요~</td>
		<td>론코 Futterkiste</td>
		<td>2018-04-03</td>
		<td>1187</td>
	</tr>	<tr>
		<td>1</td>
		<td>싱가폴에서 아이와 갈수있는 곳들 모아봤어요~</td>
		<td>론코 Futterkiste</td>
		<td>2018-04-03</td>
		<td>1187</td>
	</tr>	<tr>
		<td>1</td>
		<td>싱가폴에서 아이와 갈수있는 곳들 모아봤어요~</td>
		<td>론코 Futterkiste</td>
		<td>2018-04-03</td>
		<td>1187</td>
	</tr>	<tr>
		<td>1</td>
		<td>싱가폴에서 아이와 갈수있는 곳들 모아봤어요~</td>
		<td>론코 Futterkiste</td>
		<td>2018-04-03</td>
		<td>1187</td>
	</tr>	<tr>
		<td>1</td>
		<td>싱가폴에서 아이와 갈수있는 곳들 모아봤어요~</td>
		<td>론코 Futterkiste</td>
		<td>2018-04-03</td>
		<td>1187</td>
	</tr>	<tr>
		<td>1</td>
		<td>싱가폴에서 아이와 갈수있는 곳들 모아봤어요~</td>
		<td>론코 Futterkiste</td>
		<td>2018-04-03</td>
		<td>1187</td>
	</tr>	<tr>
		<td>1</td>
		<td>싱가폴에서 아이와 갈수있는 곳들 모아봤어요~</td>
		<td>론코 Futterkiste</td>
		<td>2018-04-03</td>
		<td>1187</td>
	</tr>	<tr>
		<td>1</td>
		<td>싱가폴에서 아이와 갈수있는 곳들 모아봤어요~</td>
		<td>론코 Futterkiste</td>
		<td>2018-04-03</td>
		<td>1187</td>
	</tr>	<tr>
		<td>1</td>
		<td>싱가폴에서 아이와 갈수있는 곳들 모아봤어요~</td>
		<td>론코 Futterkiste</td>
		<td>2018-04-03</td>
		<td>1187</td>
	</tr>	<tr>
		<td>1</td>
		<td>싱가폴에서 아이와 갈수있는 곳들 모아봤어요~</td>
		<td>론코 Futterkiste</td>
		<td>2018-04-03</td>
		<td>1187</td>
	</tr>	
	
	
	
	
</table>
</div>

<div id="Paris" class="tabcontent">

</div>

<div id="Tokyo" class="tabcontent">

</div>




</div>
</main>

<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();

function myFunction() {
	var input, filter, table, tr, td, i;
	input = document.getElementById("myInput");
	filter = input.value.toUpperCase();
	table = document.getElementById("myTable");
	tr = table.getElementsByTagName("tr");
	for (i = 0; i < tr.length; i++) {
		td = tr[i].getElementsByTagName("td")[0];
		if (td) {
			if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
				tr[i].style.display = "";
			} else {
				tr[i].style.display = "none";
			}
		}
	}
}
</script>