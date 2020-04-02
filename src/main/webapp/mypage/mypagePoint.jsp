<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href= "../css/mypage.css">
<div id = "mypagePoint">
<div id = "pointList">적립금<div id="pointListA">보유하고 계신 적립금의 내역을 한 눈에 확인 하실수 있습니다. </div></div>

<table id = "pointTable" class = "pointTable" frame="hsides" rules = "rows" cellpadding="10" >
	<tr>
		<th>날짜</th>
		<th>내용</th>
		<th>유효기간</th>
		<th>금액</th>
	</tr>
</table>
</div>

<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$.ajax({
		type: 'post',
		url: '/bitFarm/mypage/getPointList',
		dataType:'json',
		success : function(data){
		//	alert(JSON.stringify(data));
			$.each(data.list, function(index, items){
				$('<tr/>').append($('<td/>',{ align : 'center', text: items.point_date }))
						  .append($('<td/>',{ align : 'center', text: items.point_content }))
						  .append($('<td/>',{ align : 'center', text: items.point_validity }))
						  .append($('<td/>',{ align : 'center', text: items.point_price + "원" }))
						  .appendTo($('#pointTable'));
			});
		}
		
	});
});

</script>