<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link rel="stylesheet" href= "../css/mypage.css">
<!-- <div id = "mypageCoupon"> -->
<!-- <div id = "couponList">쿠폰</div> -->
<h3>쿠폰</h3>
<!-- <div id = "couponDiv">
	<div id= "couponInputDiv">
	<input type = "text" style="padding: 5px;" placeholder="쿠폰을 입력해주세요"></div>
	<input class = "couponInputBtn" type="button" value="쿠폰 등록" >
	<div id = "couponInputBtn">
	<a class = "couponInput" href="#">쿠폰 등록</a></div><br><br><br>
	<div style="color: #b3130b; font-size: 10pt;">쿠폰에 하이픈("-")이 포함되어 있을경우 하이픈("-")을 반드시 입력해주세요.</div>
</div> -->

<table id = "couponTable" class="couponTable" frame="hsides" rules="rows" cellpadding="10">
	<tr>
		<th>쿠폰명</th>
		<th>기능</th>
		<th>할인/적립</th>
		<th>사용가능기간</th>
		<th>사용여부</th>
	</tr>
	<tr>
	<!--<td align="center">쿠폰명</td>
		<td align="center">기능</td>
		<td align="center">할인/적립</td>
		<td align="center">사용기능기간</td>
		<td align="center">사용여부</td> -->
	</tr>
</table>
<!-- </div> -->
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$.ajax({
		type: 'post',
		url: '/bitFarm/mypage/getCouponList',
		dataType:'json',
		success : function(data){
		//	alert(JSON.stringify(data));
			$.each(data.list, function(index, items){
				$('<tr/>').append($('<td/>',{ align : 'center', text: items.coupon_name }))
						  .append($('<td/>',{ align : 'center', text: items.coupon_content }))
						  .append($('<td/>',{ align : 'center', text: items.coupon_SA }))
						  .append($('<td/>',{ align : 'center', text: items.coupon_Ap }))
						  .append($('<td/>',{ align : 'center', text: items.coupon_use }))
						  .appendTo($('#couponTable'));
			});
		}
		
	});
});

</script>