<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="${ctx}/resources/css/styl.css">
<link rel="stylesheet" href="${ctx}/resources/css/write.css">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.js"></script> 
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha/css/bootstrap.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.css" rel="stylesheet">  
    
    <!-- bootstrap 4.x is supported. You can also use the bootstrap css 3.3.x versions -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.5/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />
<!-- if using RTL (Right-To-Left) orientation, load the RTL CSS file after fileinput.css by uncommenting below -->
<!-- link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.5/css/fileinput-rtl.min.css" media="all" rel="stylesheet" type="text/css" /-->
<!-- optionally uncomment line below if using a theme or icon set like font awesome (note that default icons used are glyphicons and `fa` theme can override it) -->
<!-- link https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css media="all" rel="stylesheet" type="text/css" /-->
<!-- <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script> -->
<!-- piexif.min.js is only needed for restoring exif data in resized images and when you 
    wish to resize images before upload. This must be loaded before fileinput.min.js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.5/js/plugins/piexif.min.js" type="text/javascript"></script>
<!-- sortable.min.js is only needed if you wish to sort / rearrange files in initial preview. 
    This must be loaded before fileinput.min.js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.5/js/plugins/sortable.min.js" type="text/javascript"></script>
<!-- purify.min.js is only needed if you wish to purify HTML content in your preview for 
    HTML files. This must be loaded before fileinput.min.js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.5/js/plugins/purify.min.js" type="text/javascript"></script>
<!-- popper.min.js below is needed if you use bootstrap 4.x. You can also use the bootstrap js 
   3.3.x versions without popper.min.js. -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<!-- bootstrap.min.js below is needed if you wish to zoom and preview file content in a detail modal
    dialog. bootstrap 4.x is supported. You can also use the bootstrap js 3.3.x versions. -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" type="text/javascript"></script>
<!-- the main fileinput plugin file -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.5/js/fileinput.min.js"></script>
<!-- optionally uncomment line below for loading your theme assets for a theme like Font Awesome (`fa`) -->
<!-- script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.5/themes/fa/theme.min.js"></script -->
<!-- optionally if you need translation for your language then include  locale file as mentioned below -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.5/js/locales/LANG.js"></script> -->

<style>
.btn-file{height:34px;}
.form-control{padding-top: 0px !important; padding-bottom: 0px !important;}
.custom-select{border:none;padding:0;}
.form-control{padding:18px;}
.file-caption-main{width:88.5%;}
.fileinput-upload-button{display:none;}
.btn-file{padding-right: 100px;}
</style>
<main class="container padding-top-ninety">
    <form name="local_search_form" >
<div class="reg-container">
    <h1>집등록</h1>
    <hr>
	
    <big><b>주소</b></big>
    <input type="text" placeholder="주소" name="" required class="width98">
    
     <big style="float:left"><b>시작일</b></big>
     
     
	<div style="left: 50%; float: right; width: 50%;">
    <big><b>연락처</b></big> 
	</div>	
    <br>
    

 
  <input type="text" id="datepicker" class="from-control" style="width:49%;">
    <input type="text" placeholder="연락처" name="" required style="width: 49%;">

    <big style="float:left"><b>보증금</b></big>
	<div style="left: 50%; float: right; width: 50%;">
    <big><b>월세금</b></big>
	</div>
    <br>
    <input type="text" placeholder="보증금" name="" required style="width: 49% !important;">
    <input type="text" placeholder="월세금" name="" required style="width: 49%;">
    
    <big style="float:left"><b>건물종류</b></big>
	<div style="left: 50%; float: right; width: 50%;">
    <big><b>집크기</b></big>
	</div>	
    <br>
    <div style="margin: 5px 0 22px 0;">
    <div class="custom-select" style="width:49%;">
  <select>
    <option value="HDB">HDB</option>
    <option value="콘도">콘도</option>
    <option value="주택">주택</option>
    <option value="상가">상가</option>
  </select>
  </div>
  <div class="custom-select" style="width:49%;">
    <select>
    <option value="커먼룸">커먼룸</option>
    <option value="마스터룸">마스터룸</option>
    <option value="메이드룸">메이드룸</option>
  </select>
</div>
</div>
    
      <big style="float:left"><b>위치</b></big>
	<div style="left: 50%; float: right; width: 50%;">
    <big><b>지역</b></big>
	</div>	
   <br>
    <div style="margin: 5px 0 22px 0;">
    
	

   	<input type="hidden" name="s_v4" value="undefined">
					<span id="local_sel_span1">
						<select name="keyfield" onchange="user_form_sel(&#39;tmp_s_v4&#39;,this.value)" class="div-select">
						<option value="">ALL</option>
						<option value="s_v4,동쪽">East</option>
						<option value="s_v4,서쪽">West</option>
						<option value="s_v4,남쪽">South</option>
						<option value="s_v4,북쪽">North</option>
						<option value="s_v4,Central">Central</option>
					</select>
					</span>
		
    				<input type="hidden" name="s_v5" value="undefined"> 
					   <span id="local_sel_span2" name="keyfield2"	onchange="user_form_sel('tmp_s_v5',this.value)" > 
					 <select class="div-select" style="margin-left:5px;">
					<option value="">ALL</option>
					<option value="s_v5,Bedok (D16)">Bedok</option>
					<option value="s_v5,Braddell (D13)">Braddell</option>
					<option value="s_v5,Changi (D17)">Changi</option>
					<option value="s_v5,East Coast (D15)">East Coast</option>
					<option value="s_v5,Eunos (D14)">Eunos</option>
					<option value="s_v5,Geylang (D14)">Geylang</option>
					<option value="s_v5,Joo Chiat (D15)">Joo Chiat</option>
					<option value="s_v5,Katong (D15)">Katong</option>
					<option value="s_v5,Loyang (D17)">Loyang</option>
					<option value="s_v5,MacPherson (D13)">MacPherson</option>
					<option value="s_v5,Pasir Ris (D18)">Pasir Ris</option>
					<option value="s_v5,Paya Lebar (D14)">Paya Lebar</option>
					<option value="s_v5,Potong Pasir (D13)">Potong Pasir</option>
					<option value="s_v5,Tampines (D18)">Tampines</option>
					<option value="s_v5,Upper East Coast (D16)">Upper East Coast</option>
					<option value="s_v5,Boon Lay (D22)">Boon Lay</option>
					<option value="s_v5,Bukit Panjang (D23)">Bukit Panjang</option>
					<option value="s_v5,Choa Chu Kang (D23)">Choa Chu Kang</option>
					<option value="s_v5,Hillview (D23)">Hillview</option>
					<option value="s_v5,Jurong (D22)">Jurong</option>
					<option value="s_v5,Lim Chu Kang (D24)">Lim Chu Kang</option>
					<option value="s_v5,Queenstown (D03)">Queenstown</option>
					<option value="s_v5,Sentosa (D04)">Sentosa</option>
					<option value="s_v5,Telok Blangah (D04)">Telok Blangah</option>
					<option value="s_v5,Tiong Bahru (D03)">Tiong Bahru</option>
					<option value="s_v5,Admiralty (D25)">Admiralty</option>
					<option value="s_v5,Ang Mo Kio (D20)">Ang Mo Kio</option>
					<option value="s_v5,Bishan (D20)">Bishan</option>
					<option value="s_v5,Hougang (D19)">Hougang</option>
					<option value="s_v5,Lentor (D26)">Lentor</option>
					<option value="s_v5,Punggol (D19)">Punggol</option>
					<option value="s_v5,Seletar (D28)">Seletar</option>
					<option value="s_v5,Sembawang (D27)">Sembawang</option>
					<option value="s_v5,Sengkang (D19)">Sengkang</option>
					<option value="s_v5,Serangoon garden (D19)">Serangoon garden</option>
					<option value="s_v5,Springleaf (D26)">Springleaf</option>
					<option value="s_v5,Thomson (D20)">Thomson</option>
					<option value="s_v5,Upper Thomson (D26)">Upper Thomson</option>
					<option value="s_v5,Woodlands (D25)">Woodlands</option>
					<option value="s_v5,Yishun (D27)">Yishun</option>
					<option value="s_v5,Balestier (D12)">Balestier</option>
					<option value="s_v5,Beach Road (D07)">Beach Road</option>
					<option value="s_v5,Boon Keng (D12)">Boon Keng</option>
					<option value="s_v5,Bugis (D07)">Bugis</option>
					<option value="s_v5,Bukit Timah (D10)">Bukit Timah</option>
					<option value="s_v5,Cairnhill (D09)">Cairnhill</option>
					<option value="s_v5,Clementi Road (D21)">Clementi Road</option>
					<option value="s_v5,Clementi Town (D05)">Clementi Town</option>
					<option value="s_v5,High Street (D06)">High Street</option>
					<option value="s_v5,Holland Road (D10)">Holland Road</option>
					<option value="s_v5,Little India (D08)">Little India</option>
					<option value="s_v5,Newton (D11)">Newton</option>
					<option value="s_v5,North Bridge Road (D06)">North Bridge Road</option>
					<option value="s_v5,Novena (D11)">Novena</option>
					<option value="s_v5,Orchard (D09)">Orchard</option>
					<option value="s_v5,Pasir Panjang (D05)">Pasir Panjang</option>
					<option value="s_v5,River Valley (D09)">River Valley</option>
					<option value="s_v5,Rochor (D07)">Rochor</option>
					<option value="s_v5,Serangoon (D12)">Serangoon</option>
					<option value="s_v5,Sunset (D21)">Sunset</option>
					<option value="s_v5,Tanglin (D10)">Tanglin</option>
					<option value="s_v5,Toa Payoh (D12)">Toa Payoh</option>
					<option value="s_v5,Ulu Pandan (D21)">Ulu Pandan</option>
					<option value="s_v5,Upper Bukit Timah (D21)">Upper Bukit	Timah</option>
					<option value="s_v5,West Coast (D05)">West Coast</option>
					<option value="s_v5,West Coast (D05)">Raffles Pl</option>
					<option value="s_v5,West Coast (D05)">Marina</option>
					<option value="s_v5,West Coast (D05)">Chinatown</option>
					<option value="s_v5,West Coast (D05)">Anson</option>
					<option value="s_v5,West Coast (D05)">Tg Pagar</option>
			</select>
		</span>

</div>
   
   
   
    <big style="float:left"><b>에어컨여부</b></big>
	<div style="left: 50%; float: right; width: 50%;">
    <big><b>PUB포함여부</b></big>
	</div>
    <br>
    <div class="input-style-div switch-div-padding" style="width: 49% !important; padding-right: 0px;">
    <label class="switch">
	  <input type="checkbox">
	  <span class="slider"></span>
	</label>
	</div>
    <div class="input-style-div switch-div-padding" style="width: 49%; padding-left: 0px;">	
	<label class="switch">
	  <input type="checkbox">
	  <span class="slider"></span>
	</label>
	</div>
	
	  <big style="float:left"><b>여자만</b></big>
	<div style="left: 50%; float: right; width: 50%;" >
    <big><b>조리가능여부</b></big>
	</div>
    <br>
    <div class="input-style-div switch-div-padding" style="width: 49% !important; padding-right: 0px;">
    <label class="switch">
	  <input type="checkbox">
	  <span class="slider"></span>
	</label>
	</div>
    <div class="input-style-div switch-div-padding" style="width: 49%; padding-left: 0px;">	
	<label class="switch">
	  <input type="checkbox">
	  <span class="slider"></span>
	</label>
	</div>
	
	
    <big><b>제목</b></big>
    <input type="text" placeholder="제목" name="" required class="width98" style="margin-right:5px;">

    <big><b>내용</b></big>
    <textarea class="width98 input-style-div" placeholder="" name="" required style="height:10em; border:none;"></textarea>

    
    <big><b>메인이미지</b></big>
    <input id="input-b1" name="input-b1" type="file" class="file" >
    
     <big><b>상세이미지</b></big>
<div class="file-loading">
    <input id="input-b7" name="input-b7[]" multiple type="file" class="file" data-allowed-file-extensions='["jpg", "png","gif"]'>
</div>

    
    <!-- ----------------------------------------------toggle---------------------------------------- -->
<!-- 	<label class="switch">
	  <input type="checkbox">
	  <span class="slider"></span>
	</label> -->
<!-- ----------------------------------------------select box-----------------------------------------------     -->
 <!--    
    <div class="custom-select" style="width:200px;">
  <select>
    <option value="0">Select car:</option>
    <option value="1">Audi</option>
    <option value="2">BMW</option>
    <option value="3">Citroen</option>
    <option value="4">Ford</option>
    <option value="5">Honda</option>
    <option value="6">Jaguar</option>
    <option value="7">Land Rover</option>
    <option value="8">Mercedes</option>
    <option value="9">Mini</option>
    <option value="10">Nissan</option>
    <option value="11">Toyota</option>
    <option value="12">Volvo</option>
  </select>
</div> -->
    
<!-- -------------------------------------------------check box------------------------------------------------------------------- -->
<!-- <label class="checkbox-container">One
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
<label class="checkbox-container">Two
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="checkbox-container">Three
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="checkbox-container">Four
  <input type="checkbox">
  <span class="checkmark"></span>
</label> -->

<!-- -----------------------------------------------------radio button box------------------------------------------------------------------ -->
<!-- <label class="radio-container">One
  <input type="radio" checked="checked" name="radio">
  <span class="checkmark"></span>
</label>
<label class="radio-container">Two
  <input type="radio" name="radio">
  <span class="checkmark"></span>
</label>
<label class="radio-container">Three
  <input type="radio" name="radio">
  <span class="checkmark"></span>
</label>
<label class="radio-container">Four
  <input type="radio" name="radio">
  <span class="checkmark"></span>
</label> -->

    
    <hr>

    <button type="submit" class="registerbtn width98" style="padding:21px 20px;">등록</button>
    
    
  </div>
	<div class="padding-top-ninety"> </div>
</form>
</main>

<!-- ---------------------------------------------select box script----------------------------------------------------------- -->
<script>
var x, i, j, selElmnt, a, b, c;
/*look for any elements with the class "custom-select":*/
x = document.getElementsByClassName("custom-select");
for (i = 0; i < x.length; i++) {
  selElmnt = x[i].getElementsByTagName("select")[0];
  /*for each element, create a new DIV that will act as the selected item:*/
  a = document.createElement("DIV");
  a.setAttribute("class", "select-selected");
  a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
  x[i].appendChild(a);
  /*for each element, create a new DIV that will contain the option list:*/
  b = document.createElement("DIV");
  b.setAttribute("class", "select-items select-hide");
  for (j = 0; j < selElmnt.length; j++) {
    /*for each option in the original select element,
    create a new DIV that will act as an option item:*/
    c = document.createElement("DIV");
    c.innerHTML = selElmnt.options[j].innerHTML;
    c.addEventListener("click", function(e) {
        /*when an item is clicked, update the original select box,
        and the selected item:*/
        var y, i, k, s, h;
        s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        h = this.parentNode.previousSibling;
        for (i = 0; i < s.length; i++) {
          if (s.options[i].innerHTML == this.innerHTML) {
            s.selectedIndex = i;
            h.innerHTML = this.innerHTML;
            y = this.parentNode.getElementsByClassName("same-as-selected");
            for (k = 0; k < y.length; k++) {
              y[k].removeAttribute("class");
            }
            this.setAttribute("class", "same-as-selected");
            break;
          }
        }
        h.click();
    });
    b.appendChild(c);
  }
  x[i].appendChild(b);
  a.addEventListener("click", function(e) {
      /*when the select box is clicked, close any other select boxes,
      and open/close the current select box:*/
      e.stopPropagation();
      closeAllSelect(this);
      this.nextSibling.classList.toggle("select-hide");
      this.classList.toggle("select-arrow-active");
    });
}
function closeAllSelect(elmnt) {
  /*a function that will close all select boxes in the document,
  except the current select box:*/
  var x, y, i, arrNo = [];
  x = document.getElementsByClassName("select-items");
  y = document.getElementsByClassName("select-selected");
  for (i = 0; i < y.length; i++) {
    if (elmnt == y[i]) {
      arrNo.push(i)
    } else {
      y[i].classList.remove("select-arrow-active");
    }
  }
  for (i = 0; i < x.length; i++) {
    if (arrNo.indexOf(i)) {
      x[i].classList.add("select-hide");
    }
  }
}
/*if the user clicks anywhere outside the select box,
then close all select boxes:*/
document.addEventListener("click", closeAllSelect);</script>
<script type="text/javascript">
 
    $( "#datepicker" ).datepicker();
 
</script>

<script>
$(document).on('ready', function() {

	var b7 = $("#input-b7");
	var b1 = $("#input-b1");
	
	// initialize with defaults
	b7.fileinput();
	b1.fileinput();
	// with plugin options
	b7.fileinput({'showUpload':false, 'previewFileType':'any'});
	b1.fileinput({'showUpload':false, 'previewFileType':'any'});

});
</script>

<script>
$(document).on('ready', function() {
	var direction = $("#direction");
	var customSelect = $(".customSelect");
	
	
});

</script>

<script>

var local_arr2 = new Array();
local_arr2[0] = "<option value='s_v5,Bedok (D16)'>Bedok</option>";
local_arr2[1] = "<option value='s_v5,Braddell (D13)'>Braddell</option>";
local_arr2[2] = "<option value='s_v5,Changi (D17)'>Changi</option>";
local_arr2[3] = "<option value='s_v5,East Coast (D15)'>East Coast</option>";
local_arr2[4] = "<option value='s_v5,Eunos (D14)'>Eunos</option>";
local_arr2[5] = "<option value='s_v5,Geylang (D14)'>Geylang</option>";
local_arr2[6] = "<option value='s_v5,Joo Chiat (D15)'>Joo Chiat</option>";
local_arr2[7] = "<option value='s_v5,Katong (D15)'>Katong</option>";
local_arr2[8] = "<option value='s_v5,Loyang (D17)'>Loyang</option>";
local_arr2[9] = "<option value='s_v5,MacPherson (D13)'>MacPherson</option>";
local_arr2[10] = "<option value='s_v5,Pasir Ris (D18)'>Pasir Ris</option>";
local_arr2[11] = "<option value='s_v5,Paya Lebar (D14)'>Paya Lebar</option>";
local_arr2[12] = "<option value='s_v5,Potong Pasir (D13)'>Potong Pasir</option>";
local_arr2[13] = "<option value='s_v5,Tampines (D18)'>Tampines</option>";
local_arr2[14] = "<option value='s_v5,Upper East Coast (D16)'>Upper East Coast</option>";
local_arr2[15] = "<option value='s_v5,Boon Lay (D22)'>Boon Lay</option>";
local_arr2[16] = "<option value='s_v5,Bukit Panjang (D23)'>Bukit Panjang</option>";
local_arr2[17] = "<option value='s_v5,Choa Chu Kang (D23)'>Choa Chu Kang</option>";
local_arr2[18] = "<option value='s_v5,Hillview (D23)'>Hillview</option>";
local_arr2[19] = "<option value='s_v5,Jurong (D22)'>Jurong</option>";
local_arr2[20] = "<option value='s_v5,Lim Chu Kang (D24)'>Lim Chu Kang</option>";
local_arr2[21] = "<option value='s_v5,Queenstown (D03)'>Queenstown</option>";
local_arr2[22] = "<option value='s_v5,Sentosa (D04)'>Sentosa</option>";
local_arr2[23] = "<option value='s_v5,Telok Blangah (D04)'>Telok Blangah</option>";
local_arr2[24] = "<option value='s_v5,Tiong Bahru (D03)'>Tiong Bahru</option>";
local_arr2[25] = "<option value='s_v5,Admiralty (D25)'>Admiralty</option>";
local_arr2[26] = "<option value='s_v5,Ang Mo Kio (D20)'>Ang Mo Kio</option>";
local_arr2[27] = "<option value='s_v5,Bishan (D20)'>Bishan</option>";
local_arr2[28] = "<option value='s_v5,Hougang (D19)'>Hougang</option>";
local_arr2[29] = "<option value='s_v5,Lentor (D26)'>Lentor</option>";
local_arr2[30] = "<option value='s_v5,Punggol (D19)'>Punggol</option>";
local_arr2[31] = "<option value='s_v5,Seletar (D28)'>Seletar</option>";
local_arr2[32] = "<option value='s_v5,Sembawang (D27)'>Sembawang</option>";
local_arr2[33] = "<option value='s_v5,Sengkang (D19)'>Sengkang</option>";
local_arr2[34] = "<option value='s_v5,Serangoon garden (D19)'>Serangoon garden</option>";
local_arr2[35] = "<option value='s_v5,Springleaf (D26)'>Springleaf</option>";
local_arr2[36] = "<option value='s_v5,Thomson (D20)'>Thomson</option>";
local_arr2[37] = "<option value='s_v5,Upper Thomson (D26)'>Upper Thomson</option>";
local_arr2[38] = "<option value='s_v5,Woodlands (D25)'>Woodlands</option>";
local_arr2[39] = "<option value='s_v5,Yishun (D27)'>Yishun</option>";
local_arr2[40] = "<option value='s_v5,Balestier (D12)'>Balestier</option>";
local_arr2[41] = "<option value='s_v5,Beach Road (D07)'>Beach Road</option>";
local_arr2[42] = "<option value='s_v5,Boon Keng (D12)'>Boon Keng</option>";
local_arr2[43] = "<option value='s_v5,Bugis (D07)'>Bugis</option>";
local_arr2[44] = "<option value='s_v5,Bukit Timah (D10)'>Bukit Timah</option>";
local_arr2[45] = "<option value='s_v5,Cairnhill (D09)'>Cairnhil</option>";
local_arr2[46] = "<option value='s_v5,Clementi Road (D21)'>Clementi Road</option>";
local_arr2[47] = "<option value='s_v5,Clementi Town (D05)'>Clementi Town</option>";
local_arr2[48] = "<option value='s_v5,High Street (D06)'>High Street</option>";
local_arr2[49] = "<option value='s_v5,Holland Road (D10)'>Holland Road</option>";
local_arr2[50] = "<option value='s_v5,Little India (D08)'>Little India</option>";
local_arr2[51] = "<option value='s_v5,Newton (D11)'>Newton</option>";
local_arr2[52] = "<option value='s_v5,North Bridge Road (D06)'>North Bridge Road</option>";
local_arr2[53] = "<option value='s_v5,Novena (D11)'>Novena</option>";
local_arr2[54] = "<option value='s_v5,Orchard (D09)'>Orchard</option>";
local_arr2[55] = "<option value='s_v5,Pasir Panjang (D05)'>Pasir Panjang</option>";
local_arr2[56] = "<option value='s_v5,River Valley (D09)'>River Valley</option>";
local_arr2[57] = "<option value='s_v5,Rochor (D07)'>Rochor</option>";
local_arr2[58] = "<option value='s_v5,Serangoon (D12)'>Serangoon</option>";
local_arr2[59] = "<option value='s_v5,Sunset (D21)'>Sunset</option>";
local_arr2[60] = "<option value='s_v5,Tanglin (D10)'>Tanglin</option>";
local_arr2[61] = "<option value='s_v5,Toa Payoh (D12)'>Toa Payoh</option>";
local_arr2[62] = "<option value='s_v5,Ulu Pandan (D21)'>Ulu Pandan</option>";
local_arr2[63] = "<option value='s_v5,Upper Bukit Timah (D21)'>Upper Bukit Timah</option>";
local_arr2[64] = "<option value='s_v5,West Coast (D05)'>West Coast</option>";
local_arr2[65] = "<option value='s_v5,West Coast (D05)'>Raffles Pl</option>";
local_arr2[66] = "<option value='s_v5,West Coast (D05)'>Marina</option>";
local_arr2[67] = "<option value='s_v5,West Coast (D05)'>Chinatown</option>";
local_arr2[68] = "<option value='s_v5,West Coast (D05)'>Anson</option>";
local_arr2[69] = "<option value='s_v5,West Coast (D05)'>Tg Pagar</option>";


function user_local_select(val){
	if(val == '동쪽'){
		var option_num1 = 0;
		var option_num2 = 15;
	}else if(val == '서쪽'){
		var option_num1 = 15;
		var option_num2 = 21;
	}else if(val == '남쪽'){
		var option_num1 = 21;
		var option_num2 = 25;
	}else if(val == '북쪽'){
		var option_num1 = 25;
		var option_num2 = 40;
	}else if(val == 'Central'){
		var option_num1 = 40;
		var option_num2 = 70;
	}else{
		var option_num1 = 0;
		var option_num2 = 70;
	}
	
	

	var local_arr_str = "<select name='keyfield2' class='div-select' style='margin-left:5px;' onchange=user_form_sel('tmp_s_v5',this.value)>";
	local_arr_str += "<option value=''>전체</option>";
	for(var i = option_num1; i < option_num2; i++){
		local_arr_str += local_arr2[i];
	}
	local_arr_str += "</select>";

	$('#local_sel_span2').html(local_arr_str);
}

function user_form_sel(obj,val){
	var form = document.local_search_form;
	if(obj == 'myboard_code') form.myboard_code.value = val;
	else if(obj == 'tmp_s_v4'){
		var tmp_val_arr = val.split(",");
		form.s_v4.value = tmp_val_arr[1];
		user_local_select(tmp_val_arr[1]);

	}else if(obj == 'tmp_s_v5'){
		var tmp_val_arr = val.split(",");
		form.s_v5.value = tmp_val_arr[1];

	}else if(obj == 'tmp_s_v6'){
		form.s_v6.value = '';
		form.s_v7.value = '';
		var tmp_val_arr = val.split(",");
	}
}

</script>

<script>

</script>