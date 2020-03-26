<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<style type="text/css">
.sellerStoreHr{
	text-align: left;
	border-collapse: collapse;
	margin
	width: 100%;
	border-top: 2px solid #5f0080;
	border-bottom: 2px solid gray;
	width: 100%;
	frame: void;
	rules: rows;	
}
</style> 


<jsp:include page="sellerLeft.jsp"/>
<div style="width: 68%; text-align: center; padding: 50px 0px 50px 420px;">

	<!-- 상품등록페이지 Title -->
	<h2 align="center">오프라인 매장</h2>
	<div style="text-align: center;">판매자 오프라인매장 여기 왜 들어가있지.</div>
	<br><br><br><br>
	
	<h3 align="left">판매자 매장 지도</h3>
	<table class="sellerStoreHr" cellpadding="15" frame="hsides" rules="rows">
	
	<tr><th>매장 주소 : 서울특별시 서초구 강남대로 459- 비트빌딩 103호</th></tr>
	<table class="sellerStoreHr" cellpadding="15" frame="hsides" rules="rows">
	
	</table>
	<!-- 지도 image -->
	<!-- <tr><td><img src="../image/map.JPG" width="1290"></td></tr> -->
	<div id="map" style="width:1300px;height:300px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2c1ef5e207ff379d73296383f7e8dd32"></script>
	<div class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div> 
    <!-- 지도타입 컨트롤 div 입니다 -->
   

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2c1ef5e207ff379d73296383f7e8dd32"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng(37.502998, 127.024198), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
var mapTypeControl = new kakao.maps.MapTypeControl();

//지도에 컨트롤을 추가해야 지도위에 표시됩니다
//kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

//지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
</script>
	</table>	
</div>
</div>