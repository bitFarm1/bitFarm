<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
.sellerAllTable{
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
<jsp:include page="sellerLeft.jsp" />
<div style="width: 68%; text-align: center; padding: 50px 0px 50px 420px;">


	<h2 align="center">판매상품 모아보기</h2>
	<div style="text-align: center;">판매자의 판매중인 상품입니다</div>
	<br><br><br><br>
	
	<h3 align="left">판매상품 모아보기</h3>
	<table class="sellerAllTable" cellpadding="10" frame="hsides" rules="rows">
		<tr>
			<th>상품번호 : GP010020 <br> 싱싱포도 1kg</th>
			<th>상품번호 : GP010021 <br> 수제 포도 쨈 500g</th>
			<th>상품번호 : GP010022 <br> 포도쥬스800ml</th>
			<th>상품번호 : GP010023 <br> 포도쥬스800ml </th>
		</tr>
	
	
		<tr>
			<td>
				<img src="../image/grape.jpg" height="150" width="150">
				<br><br>
				<input type="button"  onclick="location.href='sellerSellDetail.do'" value="판매현황">					<%-- 이 버튼은 판매자한테만 보이게하면 될거같아여ㅕㅕㅕ --%>
				<input type="button" value="판매중단">
			</td>
			<td>
				<img src="../image/grapeJam.jpg" height="150">
				<br><br>
				<input type="button" value="판매현황">
				<input type="button" value="판매중단">
			</td>
			<td>
				<img src="../image/grapejuice.JPG" height="150">
				<br><br> 
				<input type="button" value="판매현황">
				<input type="button" value="판매중단">
			</td>
			<td>
				<img src="../image/grapejuice.JPG" height="150">
				<br><br> 
				<input type="button" value="판매현황">
				<input type="button" value="판매중단">
			</td>
		</tr>
		
	</table>
</div>
</div>
<br><br><br><br>