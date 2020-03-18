<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href= "../css/mypage.css">
<div id = "mypagePurchaseList" style="margin-bottom: 110px;">
<div id = "purchaseList">주문내역</div>
<div id = "purchaseListA">지난 3년간의 주문 내역 조회가 가능합니다 </div>
<div style="width:80%; height: 10px; float: left;"></div><!-- width : 570px -> 85%  -->
<div>
	<select name = "purchaseYear" id = "purchaseYear">
		<option value  = "all">전체기간</option>
		<option value = "2020">2020</option>
		<option value = "2019">2019</option>
		<option value = "2018">2018</option>
	</select>	
</div>

<p style="clear: both; height: 5px;"></p>
<table class="purchaseListTable" frame="hsides" rules="rows" cellpadding="10">
	<tr>
		<th colspan="3" align="left">
			<a href = "mypagePurchaseDetail.do" class = "purchaseListDetailItemA">[판매자] 판매물품 외 개수</a>
		</th>
	</tr>
	<tr>
		<td width = "80px"><img src = "../image/neodrinking.gif" id = "purchaseListImg"
			style="cursor:pointer" onclick="location.href='#'">
		</td>
		<td>
			<div style="height: 75px; width: 300px; float: left; margin-top: 5px;">
				<dl style="margin: 0px; padding: 0px;">
					<dt style="float: left; font-size: 10pt;">주문번호</dt>
					<dd style="float: left; font-weight: bold; font-size: 10pt;">12345678</dd>
				</dl>
				<br>
				<dl style="margin: 0px; padding: 0px;">
					<dt style="float: left; font-size: 10pt;">결제금액</dt>
					<dd style="float: left; font-weight: bold; font-size: 10pt;">20,000원</dd>
				</dl>
				<br>
				<dl style="margin: 0px; padding: 0px;">
					<dt style="float: left; font-size: 10pt;">주문상태</dt>
					<dd style="float: left; font-weight: bold; font-size: 10pt;">배송완료</dd>
				</dl>	
			</div>
			</td>
		<td width="200px" align="center">
			<!-- <div id = "purchaseListQnABtnDiv"><a class = "purchaseListQnA" href="#">1:1 문의</a></div> -->
			<input class = "purchaseListQnABtn" type="button" value="1:1문의" onclick="javascript:location.href='/bitFarm/information/infoQnABoard.do'" >
		</td>
	</tr>
</table>
</div>