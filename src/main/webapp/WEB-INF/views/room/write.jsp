<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="${ctx}/resources/css/styl.css">
<style>
	label{
	pointer-events:auto !important;}
</style>
<style>
.reg-container {
    padding: 16px;
    background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

/* Overwrite default styles of hr */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

.registerbtn:hover {
    opacity: 1;
}
/* ---------------------------------------------select box--------------------------------------------------- */
/* Add a blue text color to links */
a {
    color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
    background-color: #f1f1f1;
    text-align: center;
}

/*the container must be positioned relative:*/
.custom-select {
  position: relative;
  font-family: Arial;
}
.custom-select select {
  display: none; /*hide original SELECT element:*/
}
.select-selected {
  background-color: DodgerBlue;
}
/*style the arrow inside the select element:*/
.select-selected:after {
  position: absolute;
  content: "";
  top: 14px;
  right: 10px;
  width: 0;
  height: 0;
  border: 6px solid transparent;
  border-color: #fff transparent transparent transparent;
}
/*point the arrow upwards when the select box is open (active):*/
.select-selected.select-arrow-active:after {
  border-color: transparent transparent #fff transparent;
  top: 7px;
}
/*style the items (options), including the selected item:*/
.select-items div,.select-selected {
  color: #ffffff;
  padding: 8px 16px;
  border: 1px solid transparent;
  border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
  cursor: pointer;
  user-select: none;
}
/*style items (options):*/
.select-items {
  position: absolute;
  background-color: DodgerBlue;
  top: 100%;
  left: 0;
  right: 0;
  z-index: 99;
}
/*hide the items when the select box is closed:*/
.select-hide {
  display: none;
}
.select-items div:hover, .same-as-selected {
  background-color: rgba(0, 0, 0, 0.1);
}

/* --------------------------------------------------------------checkbox ------------------------------------------------------------*/
/* The container */
.checkbox-container {
    display: block;
    position: relative;
    padding-left: 35px;
    margin-bottom: 12px;
    cursor: pointer;
    font-size: 22px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}

/* Hide the browser's default checkbox */
.checkbox-container input {
    position: absolute;
    opacity: 0;
    cursor: pointer;
}

/* Create a custom checkbox */
.checkmark {
    position: absolute;
    top: 0;
    left: 0;
    height: 25px;
    width: 25px;
    background-color: #eee;
}

/* On mouse-over, add a grey background color */
.checkbox-container:hover input ~ .checkmark {
    background-color: #ccc;
}

/* When the checkbox is checked, add a blue background */
.checkbox-container input:checked ~ .checkmark {
    background-color: #2196F3;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
    content: "";
    position: absolute;
    display: none;
}

/* Show the checkmark when checked */
.checkbox-container input:checked ~ .checkmark:after {
    display: block;
}

/* Style the checkmark/indicator */
.checkbox-container .checkmark:after {
    left: 9px;
    top: 5px;
    width: 5px;
    height: 10px;
    border: solid white;
    border-width: 0 3px 3px 0;
    -webkit-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    transform: rotate(45deg);
}

/* --------------------------------------------radio button----------------------------------------------- */
/* The container */
.radio-container {
    display: block;
    position: relative;
    padding-left: 35px;
    margin-bottom: 12px;
    cursor: pointer;
    font-size: 22px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}

/* Hide the browser's default radio button */
.radio-container input {
    position: absolute;
    opacity: 0;
    cursor: pointer;
}

/* Create a custom radio button */
.checkmark {
    position: absolute;
    top: 0;
    left: 0;
    height: 25px;
    width: 25px;
    background-color: #eee;
    border-radius: 50%;
}

/* On mouse-over, add a grey background color */
.radio-container:hover input ~ .checkmark {
    background-color: #ccc;
}

/* When the radio button is checked, add a blue background */
.radio-container input:checked ~ .checkmark {
    background-color: #2196F3;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark:after {
    content: "";
    position: absolute;
    display: none;
}

/* Show the indicator (dot/circle) when checked */
.radio-container input:checked ~ .checkmark:after {
    display: block;
}

/* Style the indicator (dot/circle) */
.radio-container .checkmark:after {
 	top: 9px;
	left: 9px;
	width: 8px;
	height: 8px;
	border-radius: 50%;
	background: white;
}
 /* --------------------------------toggle--------------------------------------- */
.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

.switch input {display:none;}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

.input-style-div{
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
  }
</style>
<main class="container padding-top-ninety">
<div class="reg-container">
    <h1>방등록</h1>
    <hr>

    <big><b>주소</b></big>
    <input type="text" placeholder="주소" name="" required>

	 <big style="float:left"><b>회소기간</b></big>
	<div style="left: 50%; float: right; width: 50%;">
    <big><b>연락처</b></big>
	</div>
    <br>
    <input type="text" placeholder="회소기간" name="" required style="width: 49% !important;">
    <input type="text" placeholder="연락처" name="" required style="width: 49%;">


    <big style="float:left"><b>보증금</b></big>
	<div style="left: 50%; float: right; width: 50%;">
    <big><b>월세금</b></big>
	</div>
    <br>
    <input type="text" placeholder="보증금" name="" required style="width: 49% !important;">
    <input type="text" placeholder="월세금" name="" required style="width: 49%;">


    <big style="float:left"><b>에어컨여부</b></big>
	<div style="left: 50%; float: right; width: 50%;">
    <big><b>PUB포함여부</b></big>
	</div>
    <br>
    <div class="input-style-div" style="width: 49% !important; padding-right: 0px;">
    <label class="switch">
	  <input type="checkbox">
	  <span class="slider"></span>
	</label>
	</div>
    <div class="input-style-div" style="width: 49%; padding-left: 0px;">	
	<label class="switch">
	  <input type="checkbox">
	  <span class="slider"></span>
	</label>
	</div>
	
	  <big style="float:left"><b>여자만</b></big>
	<div style="left: 50%; float: right; width: 50%;">
    <big><b>조리가능여부</b></big>
	</div>
    <br>
    <div class="input-style-div" style="width: 49% !important; padding-right: 0px;">
    <label class="switch">
	  <input type="checkbox">
	  <span class="slider"></span>
	</label>
	</div>
    <div class="input-style-div" style="width: 49%; padding-left: 0px;">	
	<label class="switch">
	  <input type="checkbox">
	  <span class="slider"></span>
	</label>
	</div>
	
	
    <big><b>제목</b></big>
    <input type="text" placeholder="제목" name="" required>

    <big><b>내용</b></big>
    <input type="text" placeholder="" name="" required style="height:10em">

    <big><b>Repeat Password</b></big>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
    
    <!-- ----------------------------------------------toggle---------------------------------------- -->
	<label class="switch">
	  <input type="checkbox">
	  <span class="slider"></span>
	</label>
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

    <button type="submit" class="registerbtn">Register</button>
  </div>
	<div class="padding-top-ninety"> </div>
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