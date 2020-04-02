<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

<div style="width : 90%; margin: 0 auto;">
	<!-- 상품등록페이지 Title -->
	<h2 align="center">판매상품 매출현황</h2>
	<div style="text-align: center;">판매상품 매출현황입니다.</div>
	<br><br>
	<table class="sellerStatTable" cellpadding="15" frame="hsides" rules="rows">
		<tr>
			<th>상품번호</th>
			<th>상품이미지</th>	
			<th>상품명</th>		
			<th>판매자</th>
			<th>상품가격</th>
			<th>총판매개수</th>
			<th>총판매금액</th>
			<th>통계자료</th>	
				
		</tr>
	<c:forEach var="dto" items="${list }">
		<!-- 홍길동 주문내역 -->   
		<tr>      
			<td>${dto.item_id }</td> 
			<td><img src="../storage/${dto.item_main_image }" width="100" height="100"></td>	<!-- 계좌이체 -->
			<td>${dto.item }</td>			<!-- 주문자 --> 
			<td>${dto.seller_name }</td> 	<!-- 주문합계 -->    
			<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${dto.item_price }"/></td> 		<!-- 무통장 --> 
			<td>${dto.qty }</td>	<!-- 주문번호 -->			  
			<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${dto.qty*dto.item_price }"/></td> 
			   
			 
			<td >통계 그래프<br><input type="button" onclick="location.href='sellerSellDetail?item_id=${dto.item_id}'" value="그래프"></td><!-- 주문번호 -->	
			
		</tr>	
	</c:forEach>
	</table>
</div>	
<p style="clear: both; height: 7px;"></p>
