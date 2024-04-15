<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<c:set var="path0" value="<%=request.getContextPath() %>" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
<script src="${path0 }/js/jquery.dataTables.js"></script>
<link rel="stylesheet" href="${path0 }/css/jquery.dataTables.css" >
<style>
.container { width:1400px; }
.page { clear:both;  }
#page1 { background-color:#ececec; min-height:200vh; }
#page2 { background-color:#42bcf5; }
.page_title { font-size:36px; padding-top:2em; text-align:center; }
th.item1 { width:8%; }
th.item2 { width:50%; }
th.item3 { width:15%; }
th.item4 { width:15%; }
.tour { list-style:none; display:none; }
.tour_no { font-size:36px; }
.tour:target { display:block; }
.fg img { display:block; width:600px; height:auto; margin:10px auto;}
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page" id="page1">
		<div style="width:1400px; margin:0 auto;">
			<nav aria-label="breadcrumb" style="text-align:right">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="#">Home</a></li>
			    <li class="breadcrumb-item"><a href="#">지역 소개</a></li>
			    <li class="breadcrumb-item active" aria-current="page">유래 안내</li>
			  </ol>
			</nav>
			<hr>
		</div>
		<div>
		<p>도봉구 중앙에 위치하고 있다.

동쪽은 한천(漢川)을 사이에 두고 상계동과 이웃하고, 서쪽은 우이동, 남쪽은 창동·쌍문동, 북쪽은 도봉동과 접해있다. 동명 유래에 관해서는 조선시대에 왕이 도봉서원의 터를 정하기 위해 도봉산 중턱에 앉아 중다리를 내려다보다가 학이 평화롭게 노는 모습을 보고, 이 마을을 ‘방학굴(골)’이라 칭하였다는 설이 있으며, 또 하나는 이곳 지형이 학이 알을 품고 있는 것 같다고 하여 ‘방학(放鶴)’으로 칭하였다는 설이 있다.

1963년 성북구에 편입되면서 방학동이 되었고, 1973년 도봉구 관할로 편입되었다. 1975년 도봉동에서 분동하였으며, 1980년 방학1·2동으로 분동, 1988년 2동이 다시 2·3동으로 분동되었다.

교통은 방학로가 마을의 중심을 지나며, 성북구에서 의정부시로 나가는 도봉로가 동쪽을 지나고 있다. 예로부터 도심에서 멀지 않은 지역이어서 북한산 자락에 왕실과 귀족들의 묘소가 많이 있었다. 문화재로는 방학로 변에 연산군 묘와 그의 부인 거창 신씨의 묘, 양효공 안맹담과 정의공주 묘역가 있다. 그 밖에 연산군 묘역이 있는 산기슭 앞에는 1,000년 된 은행나무(서울특별시 지정보호수 제1호)가 있다.</p>
		</div>
	</section>	
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>