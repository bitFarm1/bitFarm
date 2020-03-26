<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href= "../css/order.css">

<h2 align="center">주 문 서</h2>	
<div class="defalutCenterDiv">주문하실 상품명 및 수량을 정확하게 확인해주세요</div>
<br><br>
<div class="defalutLeftDiv"><h2>&emsp;&emsp;상품 정보</h2></div>
<div class="defalutCenterDiv">
	<table class="orderItemTable" frame="hsides" rules="rows" cellpadding="20">
		<tr>
			<th width="40%">상품이미지</th>
			<th width="25%">상품명</th>
			<th width="15%">수량</th>
			<th width="20%">가격</th>
		</tr>
		<c:if test="${list!=null}">
			<c:forEach var="cartListDTO" items="${list}">
			<tr>
				<td><img src="../storage/${cartListDTO.item_main_image}" width="200px"></td>
				<td>${cartListDTO.item_name}</td>
				<td>${cartListDTO.item_qty}</td>
				<td>${cartListDTO.item_all_price}</td>
			</tr>
			</c:forEach>
		</c:if>
	</table>
</div>
<br><br>
<div class="defalutLeftDiv"><h2>&emsp;&emsp;주문자 정보</h2></div>
<div class="defalutCenterDiv">
	<table class="orderTable_tdLeft" frame="hsides" rules="rows" cellpadding="20">
		<tr>
			<th>보내는분</th>
			<td>${memberDTO.member_name}</td>
		</tr>
		<tr>
			<th>핸드폰번호</th>
			<td>${memberDTO.member_phone}</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td>${memberDTO.member_email}</td>
		</tr>
	</table>
</div>
<br><br>
<div class="defalutLeftDiv"><h2>&emsp;&emsp;배송 정보</h2></div>
<div class="defalutCenterDiv">
	<table class="orderTable_tdLeft" frame="hsides" rules="rows" cellpadding="20">
		<tr>
			<th rowspan="3">주소</th>
			<td>
				<input class="shipInfoText" type="text" name="zipcode" value="우편번호" readOnly>
				<input class="shipAddBtn" type="button" value="배송지 변경">
			</td>
		</tr>
		<tr>
			<td><input class="shipInfoText" type="text" name="addr1" size="70" value="${memberDTO.member_address1}" readOnly></td>
		</tr>
		<tr>
			<td><input class="shipInfoText" type="text" name="addr2" size="70" value="${memberDTO.member_address2}"></td>
		</tr>
		<tr>
			<th>수령인</th>
			<td><input class="shipInfoText" type="text" name="name" value="${memberDTO.member_name}"></td>
		</tr>
		<tr>
			<th>휴대폰</th>
			<td><input class="shipInfoText" type="text" name="phoneNumber" value="${memberDTO.member_phone}"></td>
		</tr>
		<tr>
			<th>배송요청사항</th>
			<td><input class="shipInfoText" type="text" name="ps" size="100" ></td>
		</tr>
	</table>
</div>
<br><br>
<div class="defalutLeftDiv"><h2>&emsp;&emsp;쿠폰/적립금</h2></div>
<div class="defalutCenterDiv">
	<table class="orderTable_tdLeft" frame="hsides" rules="rows" cellpadding="20">
		<tr>
			<th>쿠폰 사용</th>
			<td>
				<select style="height: 30px; width: 500px;">
					<option>사용 가능한 쿠폰이 없습니다.
					<option>쿠폰1
				</select>
			</td>
		</tr>
		<tr>
			<th>사용 가능 적립금&nbsp;&nbsp;<span>${memberDTO.member_point}</span>원</th>
			<td>
				<input class="shipInfoText" type="text" size="10" name="usePoint" style="text-align: right;" value="0">&nbsp;&nbsp;원 사용하기
			</td>
		</tr>
	</table>
</div>
<br><br>
<div class="defalutLeftDiv"><h2>&emsp;&emsp;결제수단</h2></div>
<div class="defalutCenterDiv">
	<table class="orderTable_tdLeft" frame="hsides" rules="rows" cellpadding="20">
		<tr>
			<th>일반 결제</th>
			<td>
				<input type="radio" class="payment">신용카드&emsp;&emsp;&emsp;&emsp;
				<input type="radio" class="payment">휴대폰
			</td>
		</tr>
		<tr>
			<th>카카오페이 결제</th>
			<td>
				<input type="radio" class="payment">&emsp;<img src="../image/kakao.jpg" width="50">
			</td>
		</tr>
	</table>
</div>
<br><br>
<div class="defalutLeftDiv"><h2>&emsp;&emsp;결제금액</h2></div>
<div class="defalutCenterDiv">
	<table class="orderTable_tdLeft" frame="hsides" rules="rows" cellpadding="20">
		<tr>
			<th>총 상품금액</th>
			<td><fmt:formatNumber pattern="#,###원" value="${totalMoney}"/></td>
		</tr>
		<tr>
			<th>할인 금액</th>
			<td>0원</td>
		</tr>
		<tr>
			<th>배송비</th>
			<td>3,000원</td>
		</tr>
		<tr>
			<th>쿠폰 사용</th>
			<td>0원</td>
		</tr>
		<tr>
			<th>적립금 사용</th>
			<td>0원</td>
		</tr>
		<tr>
			<th>최종 결제 금액</th>
			<td><strong><fmt:formatNumber pattern="#,###원" value="${totalMoney+3000}"/></strong></td>
		</tr>
	</table>
</div>
<br><br>
<div style="width: 40%; margin: 0 auto; text-align: center;">
	<input type="button" class="orderBtn" value="주문하기"><br><br>
	<font style="color: grey;">* 주문 취소는 <strong>'입금확인'</strong> 상태일 경우에만 가능합니다.</font>
</div>
<p style="clear: both; height: 10px;"></p>

<!-- script -->
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$('.orderBtn').click(function(){
	
});
</script>