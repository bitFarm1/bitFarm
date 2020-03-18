<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style type="text/css">
#cartTable td{
	/* text-align: center; */
}
div.costDiv{
	width: 22%; 
	float: left;
	height: 160px;
	text-align: center;
	border: 1px dotted gray;
}
div.calDiv{
	width: 3%; 
	float: left;
	height: 160px;
	text-align: center;
	/* border: 1px dotted blue; */
}
.smallBtn{
	width: 80pt;
	height: 30pt;
	color: #ffffff;
	border: 0;
	outline: 0;
	background-color: #5f0080;
	border-radius: 10px; 
	font-weight: bold;
	cursor: pointer;
}
.orderBtn{
	width: 250pt;
	height: 40pt;
	color: #ffffff;
	border: 0;
	outline: 0;
	background-color: #5f0080;
	border-radius: 10px;
	font-size: 13pt;
	font-weight: bold;
	cursor: pointer;
}
.qtyBtn{
	width: 20pt;
	color: #ffffff;
	border: 0;
	outline: 0;
	background-color: #5f0080;
	border-radius: 5px;
	font-size: 13pt;
	cursor: pointer;
}
#cart_item_qty{
	width: 15pt;
	border: 0;
	text-align: center;
}
</style>

<br>
<h2 align="center">장 바 구 니</h2><br>
<form>
<table id="cartTable" align="center" width="80%" border="1" cellspacing='0' cellpadding='7' frame="hsides" rules="rows">
	<tr>
		<th>
			<input type="checkbox" id="checkAll">
			전체선택
		</th>
		<th colspan="2">상품명</th>
		<th>수량</th>
		<th>금액</th>
	</tr>
	<!-- list받아서 tr 돌리기 -->
	<tr>
		<td align="center">
			<input type="checkbox" id="checkItem">
		</td>
		<td valign="middle" align="right">
			<img src="../image/berry.jpg" width="200">
		</td>
		<td align="left">
			상큼상큼한 딸긔		
		</td>
		<td class="itemQty"  align="center">
			<input type="button" id="minusBtn" value="-" class="qtyBtn">
			<input type="text" id="cart_item_qty" value="1" readOnly>
			<input type="button" id="plusBtn" value="+" class="qtyBtn">
		</td>
		<td  align="center">금액*수량</td>
	</tr>
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
		<input type="button" class="orderBtn" value="주문하기" onclick="location.href='/bitFarm/order/orderForm.do'">
</div>

<%-- script --%>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
//전체선택/해제 jQuery
$('#checkAll').click(function(){
    $('#checkItem').prop('checked', this.checked);
});
</script>