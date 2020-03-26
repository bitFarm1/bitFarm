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
<div style="width: 68%; text-align: center; padding: 50px 0px 50px 390px;">

	<!-- 판매상품 매출현황 Title -->
	<h2 align="center">판매상품 매출현황</h2>
	<div style="text-align: center;">판매상품 매출현황입니다.</div>
	<br><br><br><br>
	<table class="sellerStatTable" cellpadding="15" frame="hsides" rules="rows">
		<tr>
			<th>주문번호</th>
			<th>주문자</th>		
			<th>주문합계</th>
			<th>무통장</th>
			<th>계좌이체</th>		
			<th>카드입금</th>
			<th>포인트입금</th>
			<th>쿠폰</th>
			<th>주문취소</th>		
			<th>미수금</th>	
		</tr>
		
		<!-- 홍길동 주문내역 -->
		<tr>
			<td>202011111
			<br>
			<input type="button"  value="상세보기">
			</td>				<!-- 주문번호 -->			
			<td>홍길동</td>		<!-- 주문자 -->
			<td>120,000</td> 	<!-- 주문합계 -->
			<td>120,000</td> 	<!-- 무통장 -->
			<td>0</td>			<!-- 계좌이체 -->
			<td>0</td>			<!-- 카드입금 -->
			<td>0</td>			<!-- 포인트입금 -->
			<td>0</td>			<!-- 쿠폰 -->
			<td>0</td>			<!-- 주문취소 -->
			<td>0</td>			<!-- 미수금 -->
		</tr>	
		<!-- 김자바 주문내역 -->
		<tr>
			<td>202011112
			<br>
			<input type="button"  value="상세보기">
			</td>				<!-- 주문번호 -->
			<td>김자바</td>		<!-- 주문자 -->
			<td>30,000</td>		<!-- 주문합계 -->
			<td>0</td> 			<!-- 무통장 -->
			<td>0</td>			<!-- 계좌이체 -->
			<td>0</td>			<!-- 카드입금 -->
			<td>20,000</td>		<!-- 포인트입금 -->
			<td>0</td>			<!-- 쿠폰 -->
			<td>0</td>			<!-- 주문취소 -->
			<td>10,000</td>		<!-- 미수금 -->
		</tr>
		<!-- 신짱구 주문내역 -->
		<tr>
			<td>202011113
			<br>
			<input type="button"  value="상세보기">
			</td>				<!-- 주문번호 -->
			<td>신짱구</td>		<!-- 주문자 -->
			<td>19,100</td> 	<!-- 주문합계 -->
			<td>0</td> 			<!-- 무통장 -->
			<td>0</td>			<!-- 계좌이체 -->
			<td>19,100</td>		<!-- 카드입금 -->
			<td>0</td>			<!-- 포인트입금 -->
			<td>0</td>			<!-- 쿠폰 -->
			<td>0</td>			<!-- 주문취소 -->
			<td>0</td>			<!-- 미수금 -->
		</tr>	
	</table>
</div>	
<p style="clear: both; height: 7px;"></p>
<!-- 등록하기 버튼 -->	
<div style="width: 85%; margin: 0 auto; text-align: center;">
	<input type="button" value="▽ 판매통계 자료 ▽" style="width: 400pt; height: 50pt; font-size: 25px; background-color: #5f0080; color: #ffffff;">
</div>

<div>
	<img src="../image/statusUI.JPG">
</div>