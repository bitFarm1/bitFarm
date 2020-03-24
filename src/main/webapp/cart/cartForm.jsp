<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href= "../css/cart.css">
<br>
<h2 align="center">장 바 구 니</h2><br>
<form name="cartForm">
<table class="cartTable" id="cartTable" align="center" width="80%" border="1" cellspacing='0' cellpadding='7' frame="hsides" rules="rows">
	<tr>
		<th>
			<input type="checkbox" id="checkAll">전체선택
		</th>
		<th colspan="2">상품명</th>
		<th>수량</th>
		<th>금액</th>
	</tr>
	<!-- list받아서 tr 돌리기 -->
	<c:if test="${list!=null}">
		<c:forEach var="cartDTO" items="${list}">
		<tr>
			<td width="20%" align="center">
				<input type="checkbox" id="checkItem">
			</td>
			<td width="20%" valign="middle" align="right">
				<img src="../image/berry.jpg" width="200">
			</td>
			<td width="30%" align="center">
				${cartDTO.item_id}
			</td>
			<td width="20%" class="itemQty"  align="center">
				<input type="button" id="minusBtn" value="-" class="qtyBtn" onclick="change(-1);">
				<input type="text" name="cart_item_qty" id="cart_item_qty" value="${cartDTO.item_qty}" readOnly>
				<input type="button" id="plusBtn" value="+" class="qtyBtn" onclick="change(1);">
			</td>
			<td width="30%" align="center">${cartDTO.item_all_price}</td>
		</tr>
		</c:forEach>
		</c:if>
</table>
</form>
<br>
<div style="width: 80%; margin:0 auto;">
	<input type="button" class="smallBtn" value="선택삭제">
	<input type="button" class="smallBtn" value="품절항목삭제">
	<br><br>
	<p style="clear: both; height: 10px;"></p>
</div>
<div align="center" style="width: 80%; margin:0 auto;">
	<div class="costDiv">
		<br><br>상품 금액<br><br>
		9,900원
	</div>
	<div class="calDiv">
		<br><br><br><strong>ㅡ</strong>
	</div>
	<div class="costDiv">
		<br><br>할인 금액<br><br>
		0원
	</div>
	<div class="calDiv">
		<br><br><br><strong>+</strong>
	</div>
	<div class="costDiv">
		<br><br>배송비<br><br>
		3,000원
	</div>
	<div class="calDiv">
		<br><br><br><strong>=</strong>
	</div>
	<div class="costDiv">
		<br><br>총 금액<br><br>
		12,900원
	</div>
</div>
<p style="clear: both; height: 10px;"></p>
<div style="width: 85%; margin: 0 auto; text-align: center;">
		<input type="button" class="orderBtn" value="주문하기" onclick="location.href='/bitFarm/order/orderForm'">
</div>

<%-- script --%>
<script type="text/javascript">
function change(num){
	var x = cartForm;
	var y = Number(cart_item_qty.value) + num;
	
	if(y<1) y = 1;
	x.cart_item_qty.value = y;
}
</script>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
//전체선택/해제 jQuery
$('#checkAll').click(function(){
    $('#checkItem').prop('checked', this.checked);
});
</script>