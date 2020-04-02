<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link rel="stylesheet" href= "../css/mypage.css">

<div id="profile">
	&emsp;&emsp;<img src = "../image/person.svg" width="70px">
	&emsp;<strong>${memberName}님</strong>  
</div>  
<div id="blank"></div>
<div id="point">
	&emsp;&emsp;적립금<br><br>
	&emsp;&emsp;&emsp;<a href="/bitFarm/mypage/mypagePoint" class="pointDetail"><span id = "pointTotal"></span>원</a>
</div>
<div id="blank"></div>
<div id="coupon">
	&emsp;&emsp;쿠폰<br><br>
	&emsp;&emsp;&emsp;<a href="/bitFarm/mypage/mypageCoupon" class="couponDetail"><span id = "couponTotal"></span>개</a>
</div>

<script type="text/javascript">
$(document).ready(function(){
	$.ajax({
		type: 'get',
		url: '/bitFarm/mypage/getTopTotal',
		dataType:'json',
		success : function(data){
			$('#pointTotal').text(data.pointTotal);
			$('#couponTotal').text(data.couponTotal);	
		}
	});
});

</script>
