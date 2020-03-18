<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
 
<!-- 내용참고 : https://ycart.kr/bbs/board.php?bo_table=admmanual&wr_id=36&sst=wr_datetime&sod=desc&sop=and&page=3 -->
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

	<!-- 상품등록페이지 Title -->
	<h2 align="center">판매상품 매출현황</h2>
	<div style="text-align: center;">판매상품 매출현황입니다.</div>
	<br><br><br><br>
	
	<h3 align="left">판매상품 매출현황</h3>
	<table class="sellerStatTable" cellpadding="15" frame="hsides" rules="rows">
		<tr>
			<th>상품번호</th>
			<th>상품명</th>		
			<th>상품별 금액</th>
			<th>월별 판매 총 량</th>
			<th>월별 판매 총 액</th>		
			<th>통계자료</th>	
				
		</tr>
		
		<!-- 홍길동 주문내역 -->
		<tr>
			<td>item01gp11</td>	<!-- 주문번호 -->			
			<td>포도</td>			<!-- 주문자 -->
			<td>120,000</td> 	<!-- 주문합계 -->
			<td>200박스</td> 		<!-- 무통장 -->
			<td>2,780,000</td>	<!-- 계좌이체 -->
			<td >6개월간 판매량<br><input type="button" onclick="location.href='sellerSellDetail.do'" value="그래프"></td><!-- 주문번호 -->	
			
		</tr>	
		<!-- 김자바 주문내역 -->
		<tr>
			<td>item01gp12</td>	<!-- 주문번호 -->	
			<td>포도잼</td>		<!-- 주문자 -->
			<td>30,000</td>		<!-- 주문합계 -->
			<td>10개</td> 			<!-- 무통장 -->
			<td>780,000</td>			<!-- 계좌이체 -->	
			<td >6개월간 판매량<br><input type="button" onclick="location.href='sellerSellDetail.do'" value="그래프"></td><!-- 주문번호 -->			
		</tr>
		<!-- 신짱구 주문내역 -->
		<tr>
			<td>item01gp13</td>	<!-- 주문번호 -->	
			<td>포도쥬스</td>		<!-- 주문자 -->
			<td>19,100</td> 	<!-- 주문합계 -->
			<td>5개</td> 			<!-- 무통장 -->
			<td>450,000</td>			<!-- 계좌이체 -->	
			<td >6개월간 판매량<br><input type="button" onclick="location.href='sellerSellDetail.do'" value="그래프"></td><!-- 주문번호 -->		
		</tr>	
	</table>
</div>	
<p style="clear: both; height: 7px;"></p>
