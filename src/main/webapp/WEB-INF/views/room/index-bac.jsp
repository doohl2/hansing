<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<main>

<form name="local_search_form" onsubmit="return local_search_form_smt()" style="margin:0;">
<input type="hidden" name="myboard_code" value="">
<input type="hidden" name="s_v4" value="">
<input type="hidden" name="s_v5" value="">
<input type="hidden" name="s_v6" value="">
<input type="hidden" name="s_v7" value="">
<div class="local_search" id="local_search">
	<ul>
		<li class="noline"><label><input type="radio" value="local1" name="local" checked="" onfocus="user_form_sel('myboard_code',this.value)">방있어요</label> <label><input type="radio" value="local2" name="local" onfocus="user_form_sel('myboard_code',this.value)">방구해요</label></li>
		<li><span class="arr_box"></span> 지역구분 <span id="local_sel_span1"><select name="keyfield" onchange="user_form_sel('tmp_s_v4',this.value)"><option value="">전체</option><option value="s_v4,동쪽">동쪽</option><option value="s_v4,서쪽">서쪽</option><option value="s_v4,남쪽">남쪽</option><option value="s_v4,북쪽">북쪽</option><option value="s_v4,Central">Central</option></select></span> <span id="local_sel_span2"><select name="keyfield2" onchange="user_form_sel('tmp_s_v5',this.value)"><option value="">전체</option><option value="s_v5,Bedok (D16)">Bedok (D16)</option><option value="s_v5,Braddell (D13)">Braddell (D13)</option><option value="s_v5,Changi (D17)">Changi (D17)</option><option value="s_v5,East Coast (D15)">East Coast (D15)</option><option value="s_v5,Eunos (D14)">Eunos (D14)</option><option value="s_v5,Geylang (D14)">Geylang (D14)</option><option value="s_v5,Joo Chiat (D15)">Joo Chiat (D15)</option><option value="s_v5,Katong (D15)">Katong (D15)</option><option value="s_v5,Loyang (D17)">Loyang (D17)</option><option value="s_v5,MacPherson (D13)">MacPherson (D13)</option><option value="s_v5,Pasir Ris (D18)">Pasir Ris (D18)</option><option value="s_v5,Paya Lebar (D14)">Paya Lebar (D14)</option><option value="s_v5,Potong Pasir (D13)">Potong Pasir (D13)</option><option value="s_v5,Tampines (D18)">Tampines (D18)</option><option value="s_v5,Upper East Coast (D16)">Upper East Coast (D16)</option><option value="s_v5,Boon Lay (D22)">Boon Lay (D22)</option><option value="s_v5,Bukit Panjang (D23)">Bukit Panjang (D23)</option><option value="s_v5,Choa Chu Kang (D23)">Choa Chu Kang (D23)</option><option value="s_v5,Hillview (D23)">Hillview (D23)</option><option value="s_v5,Jurong (D22)">Jurong (D22)</option><option value="s_v5,Lim Chu Kang (D24)">Lim Chu Kang (D24)</option><option value="s_v5,Queenstown (D03)">Queenstown (D03)</option><option value="s_v5,Sentosa (D04)">Sentosa (D04)</option><option value="s_v5,Telok Blangah (D04)">Telok Blangah (D04)</option><option value="s_v5,Tiong Bahru (D03)">Tiong Bahru (D03)</option><option value="s_v5,Admiralty (D25)">Admiralty (D25)</option><option value="s_v5,Ang Mo Kio (D20)">Ang Mo Kio (D20)</option><option value="s_v5,Bishan (D20)">Bishan (D20)</option><option value="s_v5,Hougang (D19)">Hougang (D19)</option><option value="s_v5,Lentor (D26)">Lentor (D26)</option><option value="s_v5,Punggol (D19)">Punggol (D19)</option><option value="s_v5,Seletar (D28)">Seletar (D28)</option><option value="s_v5,Sembawang (D27)">Sembawang (D27)</option><option value="s_v5,Sengkang (D19)">Sengkang (D19)</option><option value="s_v5,Serangoon garden (D19)">Serangoon garden (D19)</option><option value="s_v5,Springleaf (D26)">Springleaf (D26)</option><option value="s_v5,Thomson (D20)">Thomson (D20)</option><option value="s_v5,Upper Thomson (D26)">Upper Thomson (D26)</option><option value="s_v5,Woodlands (D25)">Woodlands (D25)</option><option value="s_v5,Yishun (D27)">Yishun (D27)</option><option value="s_v5,Balestier (D12)">Balestier (D12)</option><option value="s_v5,Beach Road (D07)">Beach Road (D07)</option><option value="s_v5,Boon Keng (D12)">Boon Keng (D12)</option><option value="s_v5,Bugis (D07)">Bugis (D07)</option><option value="s_v5,Bukit Timah (D10)">Bukit Timah (D10)</option><option value="s_v5,Cairnhill (D09)">Cairnhill (D09)</option><option value="s_v5,Clementi Road (D21)">Clementi Road (D21)</option><option value="s_v5,Clementi Town (D05)">Clementi Town (D05)</option><option value="s_v5,High Street (D06)">High Street (D06)</option><option value="s_v5,Holland Road (D10)">Holland Road (D10)</option><option value="s_v5,Little India (D08)">Little India (D08)</option><option value="s_v5,Newton (D11)">Newton (D11)</option><option value="s_v5,North Bridge Road (D06)">North Bridge Road (D06)</option><option value="s_v5,Novena (D11)">Novena (D11)</option><option value="s_v5,Orchard (D09)">Orchard (D09)</option><option value="s_v5,Pasir Panjang (D05)">Pasir Panjang (D05)</option><option value="s_v5,River Valley (D09)">River Valley (D09)</option><option value="s_v5,Rochor (D07)">Rochor (D07)</option><option value="s_v5,Serangoon (D12)">Serangoon (D12)</option><option value="s_v5,Sunset (D21)">Sunset (D21)</option><option value="s_v5,Tanglin (D10)">Tanglin (D10)</option><option value="s_v5,Toa Payoh (D12)">Toa Payoh (D12)</option><option value="s_v5,Ulu Pandan (D21)">Ulu Pandan (D21)</option><option value="s_v5,Upper Bukit Timah (D21)">Upper Bukit Timah (D21)</option><option value="s_v5,West Coast (D05)">West Coast (D05)</option><option value="s_v5,West Coast (D05)">Raffles Pl (D01)</option><option value="s_v5,West Coast (D05)">Marina (D01)</option><option value="s_v5,West Coast (D05)">Chinatown (D01)</option><option value="s_v5,West Coast (D05)">Anson (D02)</option><option value="s_v5,West Coast (D05)">Tg Pagar (D02)</option></select></span></li>
		<li><span class="arr_box"></span> 매물구분 <span id="local_sel_span3"><select name="keyfield3" onchange="user_form_sel('tmp_s_v6',this.value)"><option value="">전체</option><option value="s_v7,HDB">HDB</option><option value="s_v7,콘도">콘도</option><option value="s_v7,단독주택">단독주택</option><option value="s_v6,룸렌트">룸렌트</option><option value="s_v6,룸메이트">룸메이트</option><option value="s_v6,매매">매매</option><option value="s_v7,기타">기타</option></select></span></li>
		<li>
			<span class="arr_box"></span>
			<select name="search_key" style="width:80px">
				<option value="search_content">단어검색</option>
				<option value="mem_id">아이디검색</option>
				<option value="nickname">닉네임검색</option>
			</select>
			<input type="text" name="search_str" value="">
			<input type="image" src="/img_up/shop_pds/hankookchon/design/sub/local_search_btn.gif" align="absmiddle">
		</li>
	</ul>
	<span style="display:block; padding:10px;">
	<script type="text/javascript">
	google_map_addr('','싱가포르',290,140,10,'local_map');

	function local_search_form_smt(){
		var form = document.local_search_form;
		var myboard_code = form.local.value;
		var s_v4 = form.s_v4.value;
		var s_v5 = form.s_v5.value;
		var s_v6 = form.s_v6.value;
		var s_v7 = form.s_v7.value;
		var search_key = form.search_key.value;
		var search_str = form.search_str.value;
		if(form.local[0].checked) myboard_code = 'local1';
		else if(form.local[1].checked) myboard_code = 'local2';
		if(!myboard_code) myboard_code = 'local1';

		var str = '';
		if(s_v4){
			str += "&keyfield=s_v4&key="+s_v4;
		}
		if(s_v5){
			str += "&keyfield2=s_v5&key2="+s_v5;
		}
		if(s_v6){
			str += "&keyfield3=s_v6&key3="+s_v6;
		}
		if(s_v7){
			str += "&keyfield4=s_v7&key4="+s_v7;
		}
		if(search_key){
			str += "&search_key="+search_key;
		}
		if(search_str){
			str += "&search_str="+search_str;
		}

		location.href = "/shop_contents/myboard_list.htm?myboard_code="+myboard_code+""+str;

		return false;
	}
	</script><iframe src="/API/google_map/google_map_addr.htm?addr=싱가포르&amp;title=&amp;zoom=10" width="290" height="140" frameborder="0" scrolling="no" id="local_map" name="local_map"></iframe>
	</span>
</div>
</form>

  <section class="bg-light" id="portfolio">
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fa fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="../resources/img/p1.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>#룸렌트#콘도#홀랜드빌리지#1인실#1명#커먼룸#500$</h4>
              <p class="text-muted">홀랜드로드에 1인실 커먼룸있습니다.</p>
            </div>	
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal2">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fa fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="../resources/img/02-thumbnail.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Explore</h4>
              <p class="text-muted">Graphic Designs</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal3">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fa fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="../resources/img/03-thumbnail.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Finish</h4>
              <p class="text-muted">Identity</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal4">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fa fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="../resources/img/04-thumbnail.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Lines</h4>
              <p class="text-muted">Branding</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal5">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fa fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="../resources/img/05-thumbnail.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Southwest</h4>
              <p class="text-muted">Website Design</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal6">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fa fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="../resources/img/06-thumbnail.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Window</h4>
              <p class="text-muted">Photography</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    </main>

