<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
hr.orderHr{
	width: 80%; height: 1px; background-color: #5f0080;
}
.defalutLeftDiv h2{
	margin-bottom: 0;
    padding-bottom: 17px;
    font-weight: 700;
    font-size: 20px;
    line-height: 29px;
    color: #808080;
}
.defalutLeftDiv{
	width: 80%;	
	margin:0 auto; 
	text-align: left;
}
.orderH2{
	margin-bottom: 0;
    padding-bottom: 17px;
    font-weight: 700;
    font-size: 20px;
    line-height: 29px;
    color: #808080;
}
.defalutCenterDiv{
	width: 80%;	
	margin:0 auto; 
	text-align: center;
}
.itemInfo60{
	width: 68%; float: left; text-align: right;
}
.itemInfo30{
	width: 30%; float: left; text-align: center;
}
.shipAddBtn{
	width: 80pt;
	height: 27pt;
	color: #ffffff;
	border: 0;
	outline: 0;
	background-color: #5f0080;
	border-radius: 5px; 
	cursor: pointer;
}
.orderBtn{
	width: 400pt;
	height: 50pt;
	color: #ffffff;
	border: 0;
	outline: 0;
	font-size: 30px;
	background-color: #5f0080;
	border-radius: 10px; 
	font-weight: bold;
	cursor: pointer;
}
.orderTable,
.orderItemTable,
.orderTable_tdLeft{
	border-top: 2px solid #5f0080;
	border-bottom: 2px solid #ddd;
	width: 100%;
}
.orderTable,
.orderTable_tdLeft th{
	width: 30%;
}
.orderTable_tdLeft td{
	text-align: left;
}
.shipInfoText{
	height: 30px;
	border-radius: 3px;
	border: 1px solid #ccc;
    outline: none; 
}
</style>
<br><br>
<h2 align="center">주 문 서</h2>	
<div class="defalutCenterDiv">주문하실 상품명 및 수량을 정확하게 확인해주세요</div>
<br><br>
<div class="defalutLeftDiv"><h2>&emsp;&emsp;상품 정보</h2></div>
<div class="defalutCenterDiv">
	<table class="orderItemTable" frame="hsides" rules="rows" cellpadding="20">
		<tr>
			<th width="50%">상품이미지</th>
			<th width="30%">상품명</th>
			<th width="20%">가격</th>
		</tr>
		<tr>
			<td><img src="../image/berry.jpg" width="200px"></td>
			<td>상큼상큼 딸긔</td>
			<td>7,900원</td>
		</tr>
		<tr>
			<td><img src="../image/berry.jpg" width="200px"></td>
			<td>상큼상큼 딸긔</td>
			<td>7,900원</td>
		</tr>
	</table>
</div>
<br><br>
<div class="defalutLeftDiv"><h2>&emsp;&emsp;주문자 정보</h2></div>
<div class="defalutCenterDiv">
	<table class="orderTable_tdLeft" frame="hsides" rules="rows" cellpadding="20">
		<tr>
			<th>보내는분</th>
			<td>김아무개</td>
		</tr>
		<tr>
			<th>핸드폰번호</th>
			<td>010-1234-1234</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td>bitcamp@naver.com</td>
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
				<input class="shipInfoText" type="text" name="post" placeholder="우편번호" readOnly>
				<input class="shipAddBtn" type="button" value="배송지추가">
			</td>
		</tr>
		<tr>
			<td><input class="shipInfoText" type="text" name="addr" size="70" placeholder="기본주소" readOnly></td>
		</tr>
		<tr>
			<td><input class="shipInfoText" type="text" name="addr" size="70" placeholder="상세주소"></td>
		</tr>
		<tr>
			<th>수령인</th>
			<td><input class="shipInfoText" type="text" name="name"></td>
		</tr>
		<tr>
			<th>휴대폰</th>
			<td>
				<input class="shipInfoText" type="text" name="phoneNumber" size="3"> -
				<input class="shipInfoText" type="text" name="phoneNumber" size="4"> -
				<input class="shipInfoText" type="text" name="phoneNumber" size="4">
			</td>
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
			<td>사용 가능한 쿠폰이 없습니다.</td>
		</tr>
		<tr>
			<th>적립금 사용</th>
			<td>사용 가능한 적립금이 없습니다.</td>
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
				<input type="radio">신용카드&emsp;&emsp;&emsp;&emsp;
				<input type="radio">휴대폰
			</td>
		</tr>
		<tr>
			<th>네이버페이 결제</th>
			<td>
				<input type="radio">신용카드&emsp;
				<img src="../image/naver.jpg" width="50">
			</td>
		</tr>
		<tr>
			<th>카카오페이 결제</th>
			<td>
				<input type="radio">신용카드&emsp;
				<img src="../image/kakao.jpg" width="50">
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
			<td>17,900원</td>
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
			<td>20,900원</td>
		</tr>
	</table>
</div>
<br><br>
<div style="width: 40%; margin: 0 auto; text-align: center;">
	<input type="button" class="orderBtn" value="주문하기"><br><br>
	<font style="color: grey;">* 주문 취소는 <strong>'입금확인'</strong> 상태일 경우에만 가능합니다.</font>
</div>
<p style="clear: both; height: 10px;"></p>