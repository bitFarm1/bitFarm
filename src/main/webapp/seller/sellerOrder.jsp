<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
 

<link rel="stylesheet" href= "../css/mypage.css">
<style>
.sellerStatTable{
	text-align: center;
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
	
	<!-- 판매상품 & 주문현황 Title -->
	<h2 align="center">판매상품 주문현황</h2>
	<div style="text-align: center;">판매상품 주문현황입니다.</div>
	<br><br><br><br>
	
	<h3 align="left">판매상품 주문현황</h3>
	<table class="sellerStatTable" cellpadding="15" frame="hsides" rules="rows">
		<tr>
			<th>주문번호</th>	
			<th>이름</th>
			<th>연락처</th>
			<th>주소</th>		
			<th>주문품목</th>
			<th>개수</th>
			<th>주문일자</th>
			<th>배송요청사항</th>
			<th>운송장번호</th>					
		</tr>
		
		<!-- 홍길동 주문내역 -->
		<tr>
			<td>202011111
			<br>
			<input type="button" onclick="location.href='sellerOrderCheck1.do'" value="주문상세">
			</td>				<!-- 주문번호 -->		
				
			
			
			<td>최비트</td> 	<!-- 이름 -->
			<td>010-7878-5914</td> 	<!-- 연락처 -->
			<td>서울특별시 강남구 서초대로456-7</td>			<!-- 주소 -->
			<td>포도</td>			<!-- 주문품목 -->
			<td>2 Box</td>			<!-- 개수 -->
			<td>2020-02-29</td>			<!-- 주문일자 -->
			<td>문 앞</td>			<!-- 배송요청사항 -->	
			
			<td>CJ20201111
			<br>
			<input type="button"  value="배송현황">
			</td>				<!-- 운송장번호 -->		
		</tr>	
		<!-- 김자바 주문내역 -->
		<tr>
			<td>202011112
			<br>
			<input type="button" onclick="location.href='sellerOrderCheck2.do'" value="주문상세">
			</td>				<!-- 주문번호 -->
			
			
			<td>최딸기</td> 	<!-- 이름 -->
			<td>010-4848-5914</td> 	<!-- 연락처 -->
			<td>서울특별시 강남구 서초대로456-7</td>			<!-- 주소 -->
			<td>포도 잼 외 1개</td>			<!-- 주문품목 -->
			<td>2개 외</td>			<!-- 개수 -->
			<td>2020-03-05</td>			<!-- 주문일자 -->
			<td>배송 전 연락</td>			<!-- 배송요청사항 -->
			
			<td>CJ20201112
			<br>
			<input type="button"  value="배송현황">
			</td>				<!-- 운송장번호 -->
				
		</tr>
		<!-- 신짱구 주문내역 -->
		<tr>
			<td>202011113
			<br>
			<input type="button" onclick="location.href='sellerOrderCheck3.do'" value="주문상세">
			</td>				<!-- 주문번호 -->
			
			
			<td>이사과</td> 	<!-- 이름 -->
			<td>010-4877-1661</td> 	<!-- 연락처 -->
			<td>강원도 속초시 강릉강릉 74-3</td>			<!-- 주소 -->
			<td>포도쥬스</td>			<!-- 주문품목 -->
			<td>2개</td>			<!-- 개수 -->
			<td>2020-03-10</td>			<!-- 주문일자 -->
			<td>문 앞</td>			<!-- 배송요청사항 -->	
			
			<td>LT20201111
			<br>
			<input type="button"  value="배송현황">
			</td>				<!-- 운송장번호 -->
			
		</tr>	
	</table>
</div>	
</div>
<p style="clear: both; height: 7px;"></p>
