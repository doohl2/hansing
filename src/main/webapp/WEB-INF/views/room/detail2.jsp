<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<main role="main-inner-wrapper" class="container padding-top-ninety">

<form name="local_search_form" >

	<input type="hidden" name="s_v4" value="undefined">
	<input type="hidden" name="s_v5" value="undefined"> 

	 				<span id="local_sel_span1">
					<select name="keyfield" onchange="user_form_sel(&#39;tmp_s_v4&#39;,this.value)">
					<option value="">전체</option>
					<option value="s_v4,동쪽">동쪽</option>
					<option value="s_v4,서쪽">서쪽</option>
					<option value="s_v4,남쪽">남쪽</option>
					<option value="s_v4,북쪽">북쪽</option>
					<option value="s_v4,Central">Central</option>
					</select>
					</span>
					
					 <span id="local_sel_span2" name="keyfield2"	onchange="user_form_sel('tmp_s_v5',this.value)"> 
					 <select>
					<option value="">전체</option>
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
</form>
</main>

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
local_arr2[23] = "<option value='s_v5,Telok Blangah (D04)'>Telok Blangah)</option>";
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
local_arr2[38] = "<option value='s_v5,Woodlands (D25)'>Woodlands)</option>";
local_arr2[39] = "<option value='s_v5,Yishun (D27)'>Yishun)</option>";
local_arr2[40] = "<option value='s_v5,Balestier (D12)'>Balestier)</option>";
local_arr2[41] = "<option value='s_v5,Beach Road (D07)'>Beach Road)</option>";
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

	var local_arr_str = "<select name='keyfield2' onchange=user_form_sel('tmp_s_v5',this.value)>";
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