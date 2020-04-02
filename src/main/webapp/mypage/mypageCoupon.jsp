<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link rel="stylesheet" href= "../css/mypage.css">
<h3>쿠폰</h3>


<table id = "couponTable" class="couponTable" frame="hsides" rules="rows" cellpadding="10">
	<tr>
		<th>쿠폰명</th>
		<th>기능</th>
		<th>할인/적립</th>
		<th>사용가능기간</th>
		<th>사용여부</th>
	</tr>
	<tr>
	
	</tr>
</table>

<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$.ajax({
		type: 'post',
		url: '/bitFarm/mypage/getCouponList',
		dataType:'json',
		success : function(data){
	
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