<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href= "../css/itemViewForm.css">

<!-- 상품 상세페이지 메인화면 -->
<form name="itemViewForm" method="post">
<div class="itemView">
	<div class="itemMainImageDiv">
		<img src="../image/berry.jpg" width="470">
	</div>
	<div class="itemTempDiv">
		&emsp;
	</div>
	<div class="itemCartDiv">
		<p style="font-size: 1.7em; font-weight: bold;">[${seller_name}]&nbsp;${item_name}</p>
		<font color="gray">${item_explain}</font>
		<br><br>
		<p style="font-size: 1.7em;">
			<strong><span id="itemPrice">
				<fmt:formatNumber type="number" maxFractionDigits="3" value="${item_price}"/>
			</span></strong>원
		</p>
		<font color="#5f0080">로그인 후, 회원할인가와 적립혜택이 제공됩니다.</font>
		<br><br><br><br><br><br><br><br>
		<span class="count">
			<font color="gray">구매수량</font>&emsp;
			<input type="button" id="minusBtn" value="-" class="qtyBtn" onclick="topchange(-1);">
			<input type="text" name="item_qty" id="item_qty" value="1" size="1" style="text-align: center;" readOnly>
			<input type="button" id="plusBtn" value="+" class="qtyBtn" onclick="topchange(1);">
		</span>
		<br><br>
		<p style="float: right;">총 상품금액 : 
			<span style="font-size: 1.7em; font-weight: bold;" id="itemAllPrice">
				<fmt:formatNumber type="number" maxFractionDigits="3" value="${item_price}"/>
				<input type="hidden" value="${item_price}" id="item_price">
			</span>원
		</p>
		<br><br><br>
		<p style="text-align: right;">
			<input type="button" class="goPickItemBtn" value="찜하기">&emsp;
			<input type="button" id="mainCartBtn" class="goCartBtn" value="장바구니 담기">
		</p>
		<br>
	</div>
</div>
</form>

<!-- 상품상세/리뷰/문의 -->
<div class="itemViewDisplay">
	<p style="clear: both; height: 5px;"></p>
	<div class="itemMenu">
		<ul>
			<li class="itemDetailLi" id="itemDetailLi"><h4>상품설명</h4></li>
			<li class="itemReviewLi"><h4>고객후기</h4></li>
			<li class="itemQnaLi"><h4>상품문의</h4></li>
		</ul>
	</div>
	<p style="clear: both; height: 5px;"></p>
	
	<div class="itemDetailDiv">
		<img src="../image/lemonDetail.JPG" class="itemViewDetailImage">
	</div>
	
	<p style="clear: both; height: 100px;"></p>
	<div class="itemMenu">
		<ul>
			<li class="itemDetailLi"><h4>상품설명</h4></li>
			<li class="itemReviewLi" id="itemReviewLi"><h4>고객후기</h4></li>
			<li class="itemQnaLi"><h4>상품문의</h4></li>
		</ul>
	</div>
	<p style="clear: both; height: 10px;"></p>
	
	<div class="itemReviewDiv">
		<table class="itemQnaListTable" frame="hsides" rules="rows" cellpadding="10">
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성일</th>
			</tr>
			<!-- list로 돌리기 -->
			<tr>
				<td align="center">1</td>
				<td align="center">딸기 개존맛입니다</td>
				<td align="center">2020-03-20</td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">딸기 개존맛입니다</td>
				<td align="center">2020-03-20</td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">딸기 개존맛입니다</td>
				<td align="center">2020-03-20</td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">딸기 개존맛입니다</td>
				<td align="center">2020-03-20</td>
			</tr>
		</table>
	</div>
	<p style="clear: both; height: 1px;"></p>
	<div class="itemBtnDiv">
		<input type="button" class="itemViewReviewWriteBtn" value="후기 작성하기" onclick="location.href='/bitFarm/review/reviewWriteForm'">
	</div>
	
	<p style="clear: both; height: 100px;"></p>
	<div class="itemMenu">
		<ul>
			<li class="itemDetailLi"><h4>상품설명</h4></li>
			<li class="itemReviewLi"><h4>고객후기</h4></li>
			<li class="itemQnaLi" id="itemQnaLi"><h4>상품문의</h4></li>
		</ul>
	</div>
	<p style="clear: both; height: 5px;"></p>
	
	<div class="itemQnaDiv">
		<table class="itemQnaListTable" frame="hsides" rules = "rows" cellpadding="10">
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성일</th>
			</tr>
			<!-- list로 돌리기 -->
			<tr>
				<td align="center">1</td>
				<td align="center">상품 질 좋은가요</td>
				<td align="center">2020-03-20</td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">상품 질 좋은가요</td>
				<td align="center">2020-03-20</td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">상품 질 좋은가요</td>
				<td align="center">2020-03-20</td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">상품 질 좋은가요</td>
				<td align="center">2020-03-20</td>
			</tr>
		</table>
	</div>
	<p style="clear: both; height: 1px;"></p>
	<div class="itemBtnDiv">
		<input type="button" class="itemViewSellerQnaBtn" value="판매자에게 문의하기" onclick="location.href='/bitFarm/information/infoQnABoard'">
	</div>
</div>
<p style="clear: both; height: 10px;"></p>

<!-- 스크롤 -->
<!-- 스크롤시 하단에 뜨는 div -->
<form name="itemViewScrollDiv">
<div id="miniCartDivTool" class="miniCartDivTool_small_visible">
	<div class="miniCartDiv_small_updownBtnDiv">
		<input type="button" value="상품 선택" class="miniCartDiv_small_updownBtn">
	</div>
	<div class="miniCartDiv_small_visible">
		
	</div>
</div>
<div class="miniCartDivTool_visible">
	<div class="miniCartDiv_updownBtnDiv">
		<input type="button" value="상품 선택" class="miniCartDiv_updownBtn">
	</div>
	<div class="miniCartDiv_visible">
		<br>
		<div class="miniCartDiv_visible_itemInfo">
			<span style="width: 39.99%; height: 30px;  float: left; background: #f8f8f8;">
				[${seller_name}] ${item_name}
			</span>
			<span style="width: 60%; height: 30px; float: right; background: #f8f8f8;">
				<span style="width:20%; float: center;">
					<input type="button" id="minusBtn" value="-" class="botqtyBtn" onclick="botchange(-1);">
					<input type="text" name="item_qty1" id="item_qty1" value="1" size="1" style="text-align: center;" readOnly>
					<input type="button" id="plusBtn" value="+" class="botqtyBtn" onclick="botchange(1);">
				</span>
				<span id="itemPrice" style="width:30%; float: right;" id="itemAllPrice">
					<fmt:formatNumber type="number" maxFractionDigits="3" value="${item_price}"/>
				</span>
			</span>
		</div>
		<p style="clear: both; height: 10px;"></p>
		<div class="miniCartDiv_visible_qty">
			<span style="width:30%; float: right;">
				총 상품금액 : 
				<span id="itemAllPrice" style="font-size: 2em; font-weight: bold;">
					<fmt:formatNumber type="number" maxFractionDigits="3" value="${item_price}"/>
				</span>원
			</span><br>
		</div>
		<p style="clear: both; height: 2px;"></p>
		<div class="miniCartDiv_visible_btnGroup">
			<input type="button" class="goPickItemBtn" value="찜하기">&emsp;
			<input type="button" id="scrollCartBtn" class="goCartBtn" value="장바구니 담기">
		</div>
	</div>
</div>
</form>
<p style="clear: both; height: 10px;"></p>

<%-- script --%>
<script type="text/javascript">
function topchange(num){
	var x = Number(item_qty.value) + num;
	
	if(x<1) x = 1;
	itemViewForm.item_qty.value = x;
}

function botchange(num){
	var y = Number(item_qty1.value) + num;
	
	if(y<1) y = 1;
	itemViewScrollDiv.item_qty1.value = y;
}
</script>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.number.min.js"></script>
<script type="text/javascript" src="../js/itemViewForm.js"></script>
<script type="text/javascript">
$('.qtyBtn').click(function(){
	let itemPrice = ${item_price};
	let itemQty = $('#item_qty').val();
	$('#item_qty1').val(itemQty);

	itemQty *= 1;
	
	itemAllPrice = itemQty * itemPrice;
	$('span[id=itemAllPrice]').text($.number(itemAllPrice, 0));
});

$('.botqtyBtn').click(function(){
	let itemPrice = ${item_price};
	let itemQty = $('#item_qty1').val();
	$('#item_qty').val(itemQty);

	itemQty *= 1;
	
	itemAllPrice = itemQty * itemPrice;
	$('span[id=itemAllPrice]').text($.number(itemAllPrice, 0));
});

$('#mainCartBtn').click(function(){
	let price = $('#item_price').val();
	let qty = $('#item_qty').val();
	alert(price*qty);
	/* $.ajax({
		type : 'POST',
		url : '/bitFarm/cart/cartAdd',
		data : 'item_price'+$('#item_price').val(),
		success: function(){
			alert('카트로 이동');
		}
	}); */
});

$('#scrollCartBtn').click(function(){
	window.location.href = '/bitFarm/cart/cartForm';
});
</script>