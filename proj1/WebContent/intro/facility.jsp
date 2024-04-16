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
<link rel="stylesheet" href="${path0}/css/jquery.dataTables.css">
<style>
/* Global styles */
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

/* Sidebar styles */
.sidebar {
	width: 200px;
	background-color: #ffd966;
	padding: 20px;
	float: left;
	margin-top: 80px;
	position: fixed;
	height: 100%;
	overflow: auto;
}

/* Sidebar links */
.sidebar a {
	display: block;
	color: black;
	padding: 16px;
	text-decoration: none;
}

/* Active/current link */
.sidebar a.active {
	background-color: #04AA6D;
	color: white;
}

/* Links on mouse-over */
.sidebar

 

a


:hover


:not

 

(
.active

 

)
{
background-color


:

 

#555


;
color


:

 

white


;
}

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
	<div class="sidebar">
		<ul class="location">
			<li><a href="#bank">은행나무</a></li>
			<li><a href="#market">도깨비 시장</a></li>
			<li><a href="#tomb">연산군 묘</a></li>
			<li><a href="#museum">김수영 문학관</a></li>
			<li><a href="#park">발바닥 공원</a></li>
			<li><a href="#oldhouse">간송 옛집</a></li>
		</ul>
	</div>

	<div class="content">
		<div id="bank" class="section">
			<!-- Content for 은행나무 -->
			<h2>
				<b>은행나무</b>
			</h2>
			<img src="${hpath}/images/bigTree.jpg" alt="tree" style="width: 30%">

			<h5>주소: 서울시 도봉구 방학제3동 546</h5>
			<h5>관람시간 : 완전 개방</h5>
			<h5>휴 관 일 : 완전 개방</h5>
			<h5>관람요금 : 없음</h5>

			<p>방학동 은행나무(放學洞 銀杏나무)는 서울특별시 지정보호수 제1호(1968.2.26.) 및 서울특별시 기념물
				제33호(2013.3.28.) 문화재로 지정되었으며, 나무의 높이는 24m, 둘레는 9.6m, 수령은 600년으로
				서울특별시에서 최고령 그룹에 속하는 은행나무다. 이 은행나무는 그 모습이 매우 고상하고 아름다우며 예부터 많은 사람들이
				신성시하였고, 이 곳에 불이 날 때마다 나라에 큰 변이 생겼다고 하는 일화가 지금까지도 전해지고 있다. 박정희 전 대통령이
				서거하기 일년 전에도 불이 나서 소방차가 동원되어 진화했다고 한다. 도봉구에서는 은행나무의 생육환경을 조성하기 위해 인근
				아파트 단지가 조성될 때 나무의 생육에 지장을 주지 않도록 아파트 구조를 변경하였으며, 그 후 은행나무 인근에
				다세대주택으로 인해 나무가 가지를 뻗지 못하는 등 생육환경이 문제가 되자 주택을 매입하여 생육환경 조성을 위한
				공원조성사업을 추진하여 녹지 공간 및 주민쉼터를 확보하였다.</p>
		</div>
		<div id="market" class="section">
			<!-- Content for 도깨비 시장 -->
			<h2>
				<b>도깨비 시장</b>
			</h2>
			<div class="row" style="padding-bottom: 40px;">		<div class="col">	<img src="${hpath}/images/market.jpg" alt="market" style="height: 400px">
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
					<p>방학동 도깨비 시장은 1980년대 형성된 전형적인 골목형 재래시장으로서 90년대부터 대규모유통 할인마트가 생겨나면서 자연히 침체되었으나, 2003년 도봉구에서 시장의 시설 현대화를 위해 「재래시장 환경개선사업 대상」으로 방학동 도깨비 시장을 선정하였고, 이후 2004년 환경개선사업을 통해 새로운 모습으로 변모하였다. 또한 도봉구와 상인들의 지속적인 노력으로 재래시장 활성화를 성공적으로 이루어낸 혁신적인 성공사례로 손꼽히는 시장이 되었다. 그리하여 서울시 320여 개의 재래시장 중 ‘우수재래시장 8곳’에 선정되기도 하였으며, 현재는 전국 각지에서 방학동 도깨비 시장의 성공사례를 벤치마킹하기 위해 방문하고 있다. 현재는 방문객들의 편의를 위해 주차장을 완공하여 시장 이용의 편리성을 향상시켰다.</p>
				

				
			</div>
		</div>
		<div id="tomb" class="section">

			<h2>
				<b>연산군 묘</b>
			</h2>
			<img src="${hpath}/images/tomb.jpg" alt="kingtomb" style="width: 30%">
			<br>
			<h5>주소: 서울시 도봉구 방학동 산77번지</h5>
			<h5>관람시간 : 하절기(3월~10월) 09:00~18:30 / 동절기(11월~2월) 09:00~17:30</h5>
			<h5>휴 관 일 : 매주 월요일</h5>
			<h5>관람요금 : 무료</h5>
			<h5>문의사항 : 연산군묘 관리소 (02) 3494-0370</h5>
			<p>조선시대 제10대 임금인 연산군(1476~1506년)과 왕비였던 거창군부인 신씨의 묘로 왕릉보다는 간소하나
				조선시대 전기 능묘석물의 조형이 잘 남아있다. 연산군은 성종 7년(1476) 성종의 큰 아들로 태어났으며, 어머니는 폐비
				윤씨이다. 1494년 왕위에 올랐으나 1506년 왕직을 박탈당하고 강화 교동으로 추방되었다가 그 해에 죽었다. 부인 신씨가
				연산군 무덤을 강화에서 현재의 이곳으로 옮겨 달라 청하여 정덕8년(1513) 옮기에 되었고, 부인 신씨의 묘, 연산군의
				딸과 사위의 무덤이 있으며, 혼유석·장명등·향로석 등 석물이 서 있다. 연산군은 비록 왕을 지냈으나 그 지위가 군으로
				강봉되었기에 무덤을 묘라 하였다.</p>
		</div>
		<div id="museum" class="section">
			<!-- Content for 김수영 문학관 -->
			<h2>
				<b>김수영 문학관</b>
			</h2>
			<img src="${hpath}/images/museum.jpg" alt="museum" style="width: 20%">
			<br>
			<h5>주소: 서울시 도봉구</h5>
			<h5>관람시간 :</h5>
			<h5>휴 관 일 :</h5>
			<h5>관람요금 :</h5>
			<h5>문의사항 :</h5>
			<p></p>
		</div>
		<div id="park" class="section">
			<!-- Content for 발바닥 공원 -->
			<h2>
				<b>발바닥 공원</b>
			</h2>
			<img src="${hpath}/images/footPark.jpg" alt="feetPark"
				style="width: 30%"> <br>
			<h5>주소: 서울시 도봉구</h5>
			<h5>관람시간 :</h5>
			<h5>휴 관 일 :</h5>
			<h5>관람요금 :</h5>
			<h5>문의사항 :</h5>
			<p></p>
		</div>
		<div id="oldhouse" class="section">
			<!-- Content for 간송 옛집 -->
			<h2>
				<b>간송 옛집</b>
			</h2>
			<img src="${hpath}/images/tomb.jpg" alt="kingtomb" style="width: 30%">
			<br>
			<h5>주소: 서울시 도봉구</h5>
			<h5>관람시간 :</h5>
			<h5>휴 관 일 :</h5>
			<h5>관람요금 :</h5>
			<h5>문의사항 :</h5>
			<p></p>
		</div>
	</div>


	<div id="footer">
		<%@ include file="/footer.jsp"%>
	</div>
</body>
</html>