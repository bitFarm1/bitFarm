<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href= "../css/cart.css">

<br><h2 align="center">장 바 구 니</h2><br>
<form name="cartListForm" method="post" action="/bitFarm/cart/cartChoiceDelete">
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
		<c:forEach var="cartListDTO" items="${list}">
		<c:set var="list" value="${list}"/>
		<c:set var="seq" value="${cartListDTO.item_id}"/>
		<c:set var="item_price" value="${cartListDTO.item_all_price/cartListDTO.item_qty}" />
		
		<tr>
			<td width="20%" align="center">
				<input type="checkbox" name="check" value="${cartListDTO.item_id}" class="checkItem">
			</td>
			<td width="20%" valign="middle" align="right">
				<img src="../storage/${cartListDTO.item_main_image}" width="200" 
						onclick="location.href='/bitFarm/item/getItemView?seq=${cartListDTO.item_id}'" style="cursor: pointer;">
			</td>
			<td width="30%" align="center">
				${cartListDTO.item_name}
			</td>
			<td width="20%" class="itemQty"  align="center">
				<input type="button" id="${seq}Btn" value="-" class="qtyBtn">
				<input type="text" name="cart_item_qty" id="${seq}" class="cart_item_qty" value="${cartListDTO.item_qty}" readOnly>
				<input type="button" id="${seq}" value="+" class="qtyBtn">
			</td>
			<td width="30%" align="center">
				<span id="item_all_price" class="allprice${seq}">${cartListDTO.item_all_price}</span>
			</td>
		</tr>
		</c:forEach>
		<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
		<script type="text/javascript" src="../js/cartQty.js"></script>
	</c:if>
</table>
</form><br>
<form name="cartOrderForm" method="post" action="/bitFarm/order/orderForm">
	<input type="hidden" value="${list}" name="list" id="listabc" size="200">
</form>

<!-- 항목 삭제버튼 div -->
<div style="width: 80%; margin:0 auto;">
	<input type="button" class="smallBtn" id="choiceDeleteBtn" value="선택삭제">
	<br><br>
	<p style="clear: both; height: 10px;"></p>
</div>

<!-- 하단 상품금액 합계 div -->
<div style="width: 80%; margin:0 auto; text-align: right;">
	상품 총액 : <font size="5"><strong><span id="totalMoney"><fmt:formatNumber pattern="#,###원">${totalMoney}</fmt:formatNumber></span></strong></font><br><br>
	<font style="color: grey;">배송비 3,000원이 별도로 부과됩니다.</font>
</div>
<p style="clear: both; height: 20px;"></p>

<!-- 주문하기 버튼 div -->
<div style="width: 85%; margin: 0 auto; text-align: center;">
	<input type="button" class="orderBtn" value="주문하기">
</div>

<!-- script -->
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
//전체선택/해제 jQuery
$('#checkAll').click(function(){
    $('.checkItem').prop('checked', this.checked);
});

//삭제 submit
$('#choiceDeleteBtn').click(function(){
	let count = $('input[name=check]:checked').length;
	//alert(count);
	
	if(count==0){
		alert('삭제 할 상품을 선택하세요.');
	}else {
		if(confirm('정말로 삭제하시겠습니까?')){
			$('form[name=cartListForm]').submit();
		}
	}
});

//주문하기 누르면 주문폼으로 이동 cartList는 세션에 있음
$('.orderBtn').click(function(){
	location.href = '/bitFarm/order/orderForm';
});
</script>