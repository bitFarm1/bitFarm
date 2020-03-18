<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href= "../css/mypage.css">

<div id = "mypagePurchaseDetail">
<div id = "purchaseDetailListA">주문 내역 상세</div>
<div>
<div id = "purchaseDetailDiv">주문번호 1234567891011</div>
<div id = "purchaseDetailBlankDiv" style = "width: 60%; height: 10px; float: left;"></div><!-- css에서 삭제후 수정  -->
<div style="float: left; font-size: 10pt; color: gray;">배송 또는 상품에 문제가 있나요?</div>
<div style="width: 10px; height: 10px; float:left;"></div>
<div style="float: left; margin-top: -3px;"><a class = "purchaseDetailQnA" href = "#">1:1 문의하기></a></div>

</div>

<table class = "purchaseDetailTable" frame="hsides" rules = "rows" cellpadding="10" >
	<tr>
		<td width = "75%"><!-- width = "650" -> 75% -->
		<div style="width: 50px; height: 10px; float:left;"></div><!-- width: 50px -> 100px -->
		<div style="float:left;">
		<img src = "../image/neodrinking.gif" id = "purchaseDetailImg"
		style="cursor:pointer" onclick="location.href='#'"></div>
		<div style="width: 15px; height: 10px; float:left;"></div>
		<div style="float: left;">
		<dl>
			<dt style="font-size: 12pt; font-weight: bold; margin-bottom: 5px;"><a href = "#" class = "purchaseDetailItem">[판매자] 판매물품</a></dt>
			<dd style="font-size: 10pt; float: left; font-weight: bold; margin-left: 0px; ">11,800원</dd>
			<dd style="font-size: 8pt; color: gray; margin-bottom: -10px; margin-top: 8px;">1개 구매</dd>
		</dl>
		</div>
		</td>
		<td style="color:#5f0080; font-weight: bold; ">배송완료</td>
		<td>
			<input class = "purchaseDetailBasketBtn" type="button" value="장바구니" onclick="javascript:location.href='/bitFarm/cart/cartForm.do'" >
			<!-- <div id = "purchaseDetailBasketBtnDiv">
				<a class = "purchaseDetailBasketA" href="#">장바구니</a>
			</div> -->
		</td>
	</tr>
</table>

<div style="width: 35%; height: 10px; float:left;"></div><!-- width: 300px; -> 35%-->
<!-- <div id = "purchaseDetailAllOrderBtnDiv">
	<a class = "purchaseDetailAllOrderA" href="#">전체 상품 다시 담기</a>
</div> -->
<input class = "purchaseDetailAllOrderBtn" type="button" value="전체 상품 다시 담기">
<div style="width: 40px; height: 10px; float:left;"></div>
<!-- <div id = "purchaseDetailAllDeleteBtnDiv">
	<a class = "purchaseDetailAllDeleteA" href="#">전체 상품 주문 취소</a>
</div> -->
<input class = "purchaseDetailAllDeleteBtn" type="button" value="전체 상품 주문 취소">
<!-- <div style=" border : solid red; width: 230px; height: 10px; float:left;"></div> -->

<div id = "purchaseDetailPayDiv">결제 정보</div>

<table class = "purchaseDetailPayTable" frame="hsides" rules = "rows" cellpadding="10" >
	<tr>
		<td width = "200">총주문금액</td>
		<td>26,900원</td>
	</tr>
	<tr>
		<td>상품할인</td>
		<td>-830원</td>
	</tr>
	<tr>
		<td>쿠폰할인</td>
		<td>-7,000원</td>
	</tr>
	<tr>
		<td>적립금 사용</td>
		<td>-70원</td>
	</tr>
	<tr>
		<td>배송비</td>
		<td>0원</td>
	</tr>
	<tr>
		<td>결제금액</td>
		<td>19,000원</td>
	</tr>
	<tr>
		<td>결제방법</td>
		<td>네이버페이</td>
	</tr>
</table>

<div id = "purchaseDetailOrderDiv">주문 정보</div>

<table class = "purchaseDetailOrderTable" frame="hsides" rules = "rows" cellpadding="10" >
	<tr>
		<td width = "200">주문 번호</td>
		<td>12345678910</td>
	</tr>
	<tr>
		<td>주문자명</td>
		<td>홍길동</td>
	</tr>
	<tr>
		<td>결제일시</td>
		<td>2020-01-01 03:30:00</td>
	</tr>
	<tr>
		<td>주문 처리상태</td>
		<td>배송완료</td>
	</tr>
</table>

<div id = "purchaseDetailDeliveryDiv">배송 정보</div>

<table class = "purchaseDetailDeliveryTable" frame="hsides" rules = "rows" cellpadding="10" >
	<tr>
		<td width = "200">받는 분</td>
		<td>홍길동</td>
	</tr>
	<tr>
		<td>받는 분 핸드폰</td>
		<td>010-0000-0000</td>
	</tr>
	<tr>
		<td>우편번호</td>
		<td>12345</td>
	</tr>
	<tr>
		<td>주소</td>
		<td>서울특별시 강남구</td>
	</tr>
	<tr>
		<td>배송 요청사항</td>
		<td>빠른 배송 부탁드려요</td>
	</tr>
</table>
</div>
