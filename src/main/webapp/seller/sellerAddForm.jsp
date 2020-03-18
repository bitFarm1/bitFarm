<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
.sellerAddTable{
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


	<h2 align="center">판매상품 등록하기</h2>
	<div style="text-align: center;">판매하실 상품을 등록해 주세요.</div>
	<br><br><br><br>
	
	<h3 align="left">판매상품 메인 이미지 등록하기</h3>
	<table class="sellerAddTable" cellpadding="10" frame="hsides" rules="rows">
		<tr>
			<th align="left"><form><input type="file" name="upload_file" accept="image/*" value="사진첨부"></form></th>
		</tr>	
		<tr>
			<td>
				<img src="../image/grape.jpg" align="left" height="200" width="200">
				<br><br>
				
			</td>			
		</tr>		
	</table>
	
	<br><br><br><br>
	
	<h3 align="left">판매상품 상세 정보 등록하기</h3>
	<table class="sellerAddTable" cellpadding="10" frame="hsides" rules="rows">
		<tr>
			<th>카테고리 <select class="category1">
  				<option value=""  align="center">전체</option>
 			</select> 
 			
 			<select class="category2">
  				<option value="">전체</option>
 			</select>
 			</th>
		</td>
	</tr>

	<tr>
		<td>상품명</td>
		<td><input type="text" name="productName"></td>
	</tr>

	<tr>
		<td>판매가격</td>
		<td><input type="text" name="price"></td>
	</tr>

	<tr>
		<td>판매수량재고수량</td>
		<td><input type="text" name="number"></td>
	</tr>

	<tr>
		<td>상품상세설명</td> 이미지
		<td><input type="text" name="aboutProduct">
		<td>상품상세이미지 첨부</td>
		<td><input type="file" name="upload_file" accept="image/*" value="사진첨부"></td>
	</tr>
	</table>
	
</div>
</div>
<br><br><br><br>