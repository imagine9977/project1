<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="header">
		<%@ include file="/header.jsp"%>
	</div>
	<!-- Blog entry -->
	<div class="w3-card-4 w3-margin w3-white">
		<img src="${hpath }/images/tomb.jpg" alt="kingtomb" style="width: 30%">
		<div class="w3-container">
			<h3>
				<b>연산군묘</b>
			</h3>
			<h5>주소: 서울시 도봉구 방학동 산77번지</h5>
			<h5>관람시간 : 하절기(3월~10월) 09:00~18:30 / 동절기(11월~2월) 09:00~17:30</h5>
			<h5>휴 관 일 : 매주 월요일</h5>
			<h5>관람요금 : 무료</h5>
			<h5>문의사항 : 연산군묘 관리소 (02) 3494-0370</h5>
		</div>

		<div class="w3-container">
			<p>조선시대 제10대 임금인 연산군(1476~1506년)과 왕비였던 거창군부인 신씨의 묘로 왕릉보다는 간소하나
				조선시대 전기 능묘석물의 조형이 잘 남아있다. 연산군은 성종 7년(1476) 성종의 큰 아들로 태어났으며, 어머니는 폐비
				윤씨이다. 1494년 왕위에 올랐으나 1506년 왕직을 박탈당하고 강화 교동으로 추방되었다가 그 해에 죽었다. 부인 신씨가
				연산군 무덤을 강화에서 현재의 이곳으로 옮겨 달라 청하여 정덕8년(1513) 옮기에 되었고, 부인 신씨의 묘, 연산군의
				딸과 사위의 무덤이 있으며, 혼유석·장명등·향로석 등 석물이 서 있다. 연산군은 비록 왕을 지냈으나 그 지위가 군으로
				강봉되었기에 무덤을 묘라 하였다.</p>
			<div class="w3-row">
				<div class="w3-col m8 s12"></div>

			</div>
		</div>
	</div>
	<div id="footer">
		<%@ include file="/footer.jsp"%>
	</div>
</body>
</html>