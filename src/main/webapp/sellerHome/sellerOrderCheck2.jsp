<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
 
<!-- 내용참고 : https://ycart.kr/bbs/board.php?bo_table=admmanual&wr_id=36&sst=wr_datetime&sod=desc&sop=and&page=3 -->
<style>
.sellerStatTable{
	text-align: center;
	border-collapse: collapse;
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
	<h2 align="center">판매상품 주문상세</h2>
	<div style="text-align: center;">최딸기 님의 주문상세 내용입니다.</div>
	<br><br><br><br>
	
	<h3 align="left">주문 상품 상세 </h3>
	<table class="sellerStatTable" cellpadding="15" frame="hsides" rules="rows">
		<tr>
			<th>주문일자</th>
			<th>주문번호</th>
			<th>상품정보</th>
			<th>상품수량</th>									
		</tr>
		
		<!-- 최딸기 주문내역 -->
		<tr>
			<td>2020-03-01</td> <!-- 주문일자 -->
			<td>202011112</td> <!-- 주문번호 -->
			<td>포도잼</td> <!-- 상품정보 -->
			<td>2개</td> <!-- 상품수량 -->			
		</tr>	
		<tr>
			<td></td> <!-- 주문일자 -->
			<td></td> <!-- 주문번호 -->
			<td>포도주스</td> <!-- 상품정보 -->
			<td>1개</td> <!-- 상품수량 -->			
		</tr>		
	</table>
	<h4 align="right">총 수량 : 3개 </h4>
	
	
	<br><br><br>
	
	<h3 align="left">결제 상세 </h3>
	<table class="sellerStatTable" cellpadding="15" frame="hsides" rules="rows">
		<tr>
			<th>상품명</th>
			<th>상품금액</th>
			<th>배송비</th>		
			<th>총 결제금액</th>
			<th>포인트</th>
			<th>쿠폰</th>
			<th>주문취소</th>	
			<th>결제현황</th>			
		</tr>
		
		<!-- 홍길동 주문내역 -->
		<tr>
			<td>포도잼</td> <!-- 상품명 -->
			<td>7,500원</td> <!-- 상품금액 -->
			<td>2,500원</td> <!-- 배송비 -->
			<td>50,000원</td> <!-- 총 결제금액 -->
			<td>-</td> <!-- 포인트 -->
			<td>-</td> <!-- 쿠폰 -->
			<td>-</td> <!-- 주문취소 -->
			<td>결제완료</td> <!-- 결제현황 -->
					
		</tr>			
	</table>
	
	
</div>	
<p style="clear: both; height: 7px;"></p>
