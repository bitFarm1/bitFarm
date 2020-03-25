<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href= "../css/mypage.css">

<!-- <div id = "pickItemList">찜한 상품</div> -->
<h3>찜한 상품</h3>
<table class = "pickItemTable" frame="hsides" rules = "rows" cellpadding="10" >
<thead>
	<tr>
		<th><input type = "checkbox" id = "all" onclick = "checkAll()"></th>
		<th>상품 정보</th>
		<th>선택</th>
	</tr>
</thead>
<tbody>
<c:forEach var="myPickItemDTO" items="${list }">
<c:set var = "item_id" value = "${myPickItemDTO.pick_item_id }"/>
<c:set var = "item_img" value = "${myPickItemDTO.pick_item_main_img }"/>
<c:set var = "item_seller" value = "${myPickItemDTO.pick_item_seller_name }"/>
<c:set var = "item_name" value = "${myPickItemDTO.pick_item_name }"/>
<c:set var = "item_price" value = "${myPickItemDTO.pick_item_price }"/>
	<tr>
		<td align = "center" width="100px"><input type = "checkbox" name = "check"></td>
		<td width = "80%"><img src="../storage/${item_img}" id = "pickItemImg"
		style="cursor:pointer" onclick="location.href='#'">
		<dl>
			<dt style="font-size: 12pt; font-weight: bold;margin-bottom: 5px;"><a href = "#" class = "pickItemDetailA">[${item_seller}] ${item_name }</a></dt>
			<dd style="font-size: 10pt;">
			<fmt:formatNumber pattern="#,###원">
				${item_price}
			</fmt:formatNumber>
			</dd>
		</dl>
		</td>
		<td>
			<input class = "pickItemBasketBtn" type="button" value="장바구니" onclick="javascript:location.href='/bitFarm/cart/cartForm.do'">
			<input class = "pickItemDeleteBtn" type="button" value="삭      제" >
		
		</td>
	</tr>
</c:forEach>
</tbody>
</table>
<div id = "pickItemBlank"></div>
<input class = "pickItemSelectDeleteBtn" type="button" value="선택삭제" >	
<div id = "pickItemBlank2"></div>
<input class = "pickItemAllOrderBtn" type="button" value="전체주문" >