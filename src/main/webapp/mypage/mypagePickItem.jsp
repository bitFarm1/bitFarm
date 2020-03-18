<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href= "../css/mypage.css">
<div id = "pickItemList">찜한 상품</div>

<table class = "pickItemTable" frame="hsides" rules = "rows" cellpadding="10" >
	<tr>
		<th><input type = "checkbox" id = "all" onclick = "checkAll()"></th>
		<th>상품 정보</th>
		<th>선택</th>
	</tr>
	<tr>
		<td align = "center" width="100px"><input type = "checkbox" name = "check"></td>
		<td width = "80%"><img src = "../image/neodrinking.gif" id = "pickItemImg"
		style="cursor:pointer" onclick="location.href='#'"><!-- width = "700px" - > width = "80%" -->
		<dl>
			<dt style="font-size: 12pt; font-weight: bold;margin-bottom: 5px;"><a href = "#" class = "pickItemDetailA">[판매자] 판매물품</a></dt>
			<dd style="font-size: 10pt;">11,800원</dd>
		</dl>
		</td>
		<td>
			<input class = "pickItemBasketBtn" type="button" value="장바구니" onclick="javascript:location.href='/bitFarm/cart/cartForm.do'">
			<input class = "pickItemDeleteBtn" type="button" value="삭      제" >
		
			<!-- <div id = "pickItemBasketBtnDiv">
				<a class = "pickItemBasketA" href="#">장바구니</a>
			</div>
			<div id = "pickItemDeleteBtnDiv">
				<a class = "pickItemDeleteA" href="#">삭      제</a>
			</div>	 -->
		</td>
	</tr>
</table>

<div id = "pickItemBlank"></div>
<!-- <div id = "pickItemSelectDeleteBtnDiv">
	<a class = "pickItemSelectDeleteA" href="#">선택삭제</a>
</div> -->
<input class = "pickItemSelectDeleteBtn" type="button" value="선택삭제" >	
<div id = "pickItemBlank2"></div>
<!-- <div id = "pickItemAllOrderBtnDiv">
	<a class = "pickItemAllOrderA" href="#">전체주문</a>
</div> -->
<input class = "pickItemAllOrderBtn" type="button" value="전체주문" >