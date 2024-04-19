<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path0" value="<%=request.getContextPath()%>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title}</title>
<%@ include file="/head.jsp"%>
<script src="${path0}/js/jquery.dataTables.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Song+Myung&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Song+Myung&family=Yeon+Sung&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="${path0}/css/jquery.dataTables.css">
<style>
/* Global styles */
.song-myung-regular {
	font-family: "Song Myung", serif;
	font-weight: 400;
	font-style: normal;
	font-size: 30px;
}

.yeon-sung-regular {
	font-family: "Yeon Sung", system-ui;
	font-weight: 400;
	font-style: normal;
	font-size: 30px;
}

.container {
	width: 1400px;
}

.page {
	clear: both;
}

.page_title {
	font-size: 36px;
	padding-top: 2em;
	text-align: center;
}
#quick { width: 200px; height: 200px; background-color:yellow; 
    border-radius:20px 20px 0px 0px; position:scroll; top:100px; 
    right:40px; z-index:9999; }
    #quick ul { clear:both; }
    #quick ul li { text-align: center; line-height: 40px; }
    #quick ul li.q_tit { font-weight: 800; font-size:30px; line-height: 65px; }
    #quick ul li a { color:#fff; }

/* Sidebar styles */
#sidebar {
	width: 200px;
	height: 300px;
	background-color: yellow;
	border-radius:20px 20px 20px 20px; 
	top:250px; 
	left:20px;
	position: fixed;
	overflow: auto;
	z-index:9999;
}
#sidebar ul { clear:both;   list-style-type: none;margin: 0;
  padding: 0;}
    #sidebar ul li { text-align: center; line-height: 40px; }
    #sidebar ul li.q_tit { font-weight: 800; font-size:30px; line-height: 100px; }
    #sidebar ul li a { color:blue; }

    .sidebar-active {
        border-left: 5px solid #b1a0ff;
        color: #b1a0ff;
        background: #474747;
    }
/* Sidebar links */



/* Content styles */
.content {
	margin-top: 100px;
	margin-left: 240px; /* Sidebar width + some margin */
}

/* Individual section styles */
.section {
	display: none;
}

/* Show active section */
.section:target {
	display: block;
}
</style>
</head>
<body>
	<div id="header">
		<%@ include file="/header.jsp"%>
	</div>
	<nav class="yeon-sung-regular " id="sidebar">
		<ul>
		<li><a href="">명소 소개</a></li>
			<li><a href="#bank">은행나무</a></li>
			<li><a href="#market">도깨비 시장</a></li>
			<li><a href="#tomb">연산군 묘</a></li>
			<li><a href="#museum">김수영 문학관</a></li>
			<li><a href="#park">발바닥 공원</a></li>
			<li><a href="#oldhouse">간송 옛집</a></li>
		</ul>
	</nav>
	<!--  
	<nav id="quick">
        <ul>
            <li><span class="q_tit">QUICK</span></li>
            <li><a href="">메뉴1</a></li>
            <li><a href="">메뉴2</a></li>
            <li><a href="">메뉴3</a></li>
        </ul>
    </nav>
    -->
	<div class="content" style="padding-left: 40px;">
		<div id="" class ="section">
			<h2>
				<b>은행나무</b>
			</h2>
		</div>
		
		
		<div id="bank" class="section">
			<!-- Content for 은행나무 -->
			<h2>
				<b>은행나무</b>
			</h2>
			<div class="row" style="padding-bottom: 40px;">
				<div class="col">
					<img src="${hpath}/images/bigTree.jpg" alt="tree"
						style="height: 400px">
				</div>
				
			</div>
			<div class="col-sm-9">


				<h5>주소: 서울 도봉구 도당로13다길 30</h5>
				<h5>관람시간 : 08:00~21:30</h5>
				<h5>휴 관 일 : 연중무휴</h5>
				<h5>관람요금 : 없음</h5>
				<h5>문의사항 : 02-954-1225</h5>
				<p class="yeon-sung-regular ">방학동 은행나무(放學洞 銀杏나무)는 서울특별시 지정보호수
					제1호(1968.2.26.) 및 서울특별시 기념물 제33호(2013.3.28.) 문화재로 지정되었으며, 나무의 높이는
					24m, 둘레는 9.6m, 수령은 600년으로 서울특별시에서 최고령 그룹에 속하는 은행나무다. 이 은행나무는 그 모습이
					매우 고상하고 아름다우며 예부터 많은 사람들이 신성시하였고, 이 곳에 불이 날 때마다 나라에 큰 변이 생겼다고 하는
					일화가 지금까지도 전해지고 있다. 박정희 전 대통령이 서거하기 일년 전에도 불이 나서 소방차가 동원되어 진화했다고 한다.
					도봉구에서는 은행나무의 생육환경을 조성하기 위해 인근 아파트 단지가 조성될 때 나무의 생육에 지장을 주지 않도록 아파트
					구조를 변경하였으며, 그 후 은행나무 인근에 다세대주택으로 인해 나무가 가지를 뻗지 못하는 등 생육환경이 문제가 되자
					주택을 매입하여 생육환경 조성을 위한 공원조성사업을 추진하여 녹지 공간 및 주민쉼터를 확보하였다.</p>


			</div>
			<div class="col">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3158.507702108531!2d127.01795478943437!3d37.6607764465706!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cbea34b34c435%3A0x9b1ecfd881c9fe92!2z7ISc7Jq4IOuwqe2VmeuPmSDsnYDtlonrgpjrrLQ!5e0!3m2!1sko!2skr!4v1713340458967!5m2!1sko!2skr"
						width="600" height="400" style="border: 0;" allowfullscreen=""
						loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
				</div>
		</div>
		<div id="market" class="section">
			<!-- Content for 도깨비 시장 -->
			<h2>
				<b>도깨비 시장</b>
			</h2>
			<div class="row" style="padding-bottom: 40px;">
				<div class="col">
					<img src="${hpath}/images/market.jpg" alt="market"
						style="height: 400px">
				</div>
				<div class="col">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3158.3085875508204!2d127.03190337631773!3d37.665456155347215!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cbeb5f64bf5d1%3A0xca77219992d93fe5!2z67Cp7ZWZ64-Z64-E6rmo67mE7Iuc7J6l!5e0!3m2!1sko!2skr!4v1713261766631!5m2!1sko!2skr"
						width="600" height="400" style="border: 0;" allowfullscreen=""
						loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
				</div>
			</div>
			<div class="col-sm-9">


				<h5>주소: 서울 도봉구 도당로13다길 30</h5>
				<h5>관람시간 : 08:00~21:30</h5>
				<h5>휴 관 일 : 연중무휴</h5>
				<h5>관람요금 : 없음</h5>
				<h5>문의사항 : 02-954-1225</h5>
				<p>방학동 도깨비 시장은 1980년대 형성된 전형적인 골목형 재래시장으로서 90년대부터 대규모유통 할인마트가
					생겨나면서 자연히 침체되었으나, 2003년 도봉구에서 시장의 시설 현대화를 위해 「재래시장 환경개선사업 대상」으로 방학동
					도깨비 시장을 선정하였고, 이후 2004년 환경개선사업을 통해 새로운 모습으로 변모하였다. 또한 도봉구와 상인들의
					지속적인 노력으로 재래시장 활성화를 성공적으로 이루어낸 혁신적인 성공사례로 손꼽히는 시장이 되었다. 그리하여 서울시
					320여 개의 재래시장 중 ‘우수재래시장 8곳’에 선정되기도 하였으며, 현재는 전국 각지에서 방학동 도깨비 시장의
					성공사례를 벤치마킹하기 위해 방문하고 있다. 현재는 방문객들의 편의를 위해 주차장을 완공하여 시장 이용의 편리성을
					향상시켰다.</p>



			</div>
		</div>
		<div id="tomb" class="section">

			<h2>
				<b>연산군 묘</b>
			</h2>
			<div class="row" style="padding-bottom: 40px;">
				<div class="col">
					<img src="${hpath}/images/tomb.jpg" alt="kingtomb"
						style="height: 400px">
				</div>
				<div class="col">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3158.507702108531!2d127.01795478943437!3d37.6607764465706!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cbebcc828ebef%3A0x54ca58d59772f410!2z7Jew7IKw6rWw66yYKOeHleWxseWQm-Wikyk!5e0!3m2!1sko!2skr!4v1713342154709!5m2!1sko!2skr"
						width="600" height="400" style="border: 0;" allowfullscreen=""
						loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
				</div>
			</div>
			<div class="col-sm-9">

				<br>
				<h5>주소: 서울시 도봉구 방학동 산77번지</h5>
				<h5>관람시간 : 하절기(3월~10월) 09:00~18:30 / 동절기(11월~2월) 09:00~17:30</h5>
				<h5>휴 관 일 : 매주 월요일</h5>
				<h5>관람요금 : 무료</h5>
				<h5>문의사항 : 연산군묘 관리소 (02) 3494-0370</h5>
				<p>조선시대 제10대 임금인 연산군(1476~1506년)과 왕비였던 거창군부인 신씨의 묘로 왕릉보다는 간소하나
					조선시대 전기 능묘석물의 조형이 잘 남아있다. 연산군은 성종 7년(1476) 성종의 큰 아들로 태어났으며, 어머니는 폐비
					윤씨이다. 1494년 왕위에 올랐으나 1506년 왕직을 박탈당하고 강화 교동으로 추방되었다가 그 해에 죽었다. 부인
					신씨가 연산군 무덤을 강화에서 현재의 이곳으로 옮겨 달라 청하여 정덕8년(1513) 옮기에 되었고, 부인 신씨의 묘,
					연산군의 딸과 사위의 무덤이 있으며, 혼유석·장명등·향로석 등 석물이 서 있다. 연산군은 비록 왕을 지냈으나 그 지위가
					군으로 강봉되었기에 무덤을 묘라 하였다.</p>
			</div>
		</div>

		<div id="museum" class="section">
			<!-- Content for 김수영 문학관 -->
			<h2>
				<b>김수영 문학관</b>
			</h2>
			<div class="row" style="padding-bottom: 40px;">
				<div class="col">
					<img src="${hpath}/images/museum.jpg" alt="museum"
						style="height: 400px">
				</div>
				<div class="col">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3158.545364847952!2d127.02124007643346!3d37.6598912187686!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cbea357911e21%3A0x62639df063a2d03f!2z6rmA7IiY7JiBIOusuO2Vmeq0gA!5e0!3m2!1sko!2skr!4v1713342557501!5m2!1sko!2skr"
						width="600" height="400" style="border: 0;" allowfullscreen=""
						loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
				</div>
			</div>
			<div class="col-sm-9">

				<br>
				<h5>주소: 서울시 도봉구 해등로32길 80</h5>
				<h5>관람시간 :09:00∼18:00</h5>
				<h5>휴 관 일 :매주 월요일(월요일이 공휴일인 경우 그 다음날), 1월 1일, 설날 및 추석 연휴</h5>
				<h5>관람요금 : 무료</h5>
				<h5>문의사항 :02-3494-1127또는 02-3494-1128</h5>
				<p>한국문학의 대표적 자유시인인 김수영 시인이 생전에 시작(詩作) 생활을 하였던 도봉구에는 그의 본가와 묘,
					시비가 있습니다. 이에 김수영 시인을 기림과 아울러 600년 동안 마르지 않고 흐르는 원당샘 공원, 연산군과 정의공주
					묘, 그리고 도봉산으로 이어지는 북한산 둘레길과 더불어 자연과 문학이 어우러지는 문화공간을 제공하고자 도봉구에서
					김수영문학관을 건립하여 2013년 11월 27일에 개관하였습니다.</p>
			</div>
		</div>
		<div id="park" class="section">
			<!-- Content for 발바닥 공원 -->
			<h2>
				<b>발바닥 공원</b>
			</h2>
			<div class="row" style="padding-bottom: 40px;">
				<div class="col">
					<img src="${hpath}/images/footPark.jpg" alt="feetPark"
						style="height: 400px">
				</div>
				<div class="col">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3158.5691262970754!2d127.02687097643363!3d37.659332718800655!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cbeb0548ddf5f%3A0xf2a526d530e2526!2z67Cc67CU64ulIOyDne2DnOqzteybkA!5e0!3m2!1sko!2skr!4v1713342596518!5m2!1sko!2skr"
						width="600" height="400" style="border: 0;" allowfullscreen=""
						loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
				</div>
			</div>
			<div class="col-sm-9">
				<br>
				<h5>주소: 서울시 도봉구</h5>
				<h5>관람시간 :</h5>
				<h5>휴 관 일 :</h5>
				<h5>관람요금 :</h5>
				<h5>문의사항 :</h5>
				<p>면적 1만 5520㎡의 도봉구 발바닥공원은 마른하천인 방학천을 따라 방학3동 270-1번지 일대에 조성된
					생태공원이다. 1960년대 중반 형성되기 시작한 무허가 판자촌 130여동을 헐어내고 4년여간의 공사 끝에 2002년 5월
					문을 열었다. 쓰레기와 오물 악취가 풍기는 기피 장소였던 방학천 일대가 구민들의 사랑을 독차지하는 쉼터로 재탄생하게 된
					것이다. 왜 하필 발바닥 공원일까. 지저분한 판자촌에서 녹색 공원으로 변신한 운명과 닮아서다. 평소 하찮게 여기다 최근
					중요성을 인정받고 있는 우리몸의 발바닥과 비슷하다고 해서 붙여졌다.</p>
			</div>
		</div>
		<div id="oldhouse" class="section">
			<!-- Content for 간송 옛집 -->
			<h2>
				<b>간송 옛집</b>
			</h2>
			<div class="row" style="padding-bottom: 40px;">
				<div class="col">
					<img src="${hpath}/images/gansong.png" alt="gansong"
						style="height: 400px">
				</div>
				<div class="col">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3158.3361308295994!2d127.0232966894354!3d37.66480884633629!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cbeb9c13d4959%3A0xee67f34ea4d71f02!2z6rCE7Iah7Jib7KeR!5e0!3m2!1sko!2skr!4v1713342627446!5m2!1sko!2skr"
						width="600" height="400" style="border: 0;" allowfullscreen=""
						loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
				</div>
			</div>
			<div class="col-sm-9">

				<br>
				<h5>주소: 서울시 도봉구</h5>
				<h5>관람시간 :</h5>
				<h5>휴 관 일 :</h5>
				<h5>관람요금 :</h5>
				<h5>문의사항 :</h5>
				<p>간송옛집은 우리 문화재 수호에 큰 공을 세운 간송의 자취가 남아 있는 100여 년 역사의 전통한옥으로 간송 전형필(1906~1962)의 묘소와 어우러져 자리하고 있다.
옛집은 19세기 말 그의 양부 전명기(1870~1919)가 인근에 자리한 농장 및 경기 북부, 황해도에서 오는 소출 관리를 목적으로 지은 것으로,
부친의 사망 이후 한옥 부근에 묘소를 꾸미고 제사나 차례를 지낼 때 필요한 제구를 보관하며, 일기가 좋지 않으면 본 한옥의 대청마루에서 제사를 지내는 등 재실로도 사용되었다.
간송은 양주군의 농장을 방문할 때나 부친의 제사를 모실 때 자주 이곳에 들러 생활하였다.
한국전쟁 당시 대문과 담장 일부 및 건물이 피해를 입었고, 전쟁 이후 종로구 본가 및 보화각의 피해 복구로 이곳의 수리가 지연되다가 1962년 간송이 세상을 떠나고
종로의 본가가 철거되면서 나온 자재를 활용하여 부분적 수리가 이루어졌다.</p>
			</div>
		</div>
	</div>
	

	<div id="footer">
		<%@ include file="/footer.jsp"%>
	</div>
</body>
</html>