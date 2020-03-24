<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<h3>나의 후기 모아보기</h3>
<table class="purchaseListTable" frame="hsides" rules="rows" cellpadding="10">
	<tr>
		<th>글번호</th>
		<th>제목</th>
		<th>작성일</th>
	</tr>
	<!-- list로 돌리기 -->
	<tr>
		<td align="center">1<div id = "testDiv1" style="display:none; border:solid red;"></div></td>
		<td align="center" style="cursor:pointer;" id = "testTd">상품 질 좋은가요<div id = "testDiv" style="display:none; border:solid;">맛있는 딸기가 먹고싶어요</div></td>
		<td align="center">2020-03-20<div id = "testDiv2" style="display:none; border:solid blue;"></div></td>
	</tr>
	<tr></tr>
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
<p style="clear: both; height: 10px;"></p>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$('#testTd').click(function(){

	if($('#testDiv').is(":visible")){
	//	$('#testDiv').show();
		$('#testDiv').css("display","none");
		$('#testDiv1').css("display","none");
		$('#testDiv2').css("display","none");
	}
	else{
	//	$('#testDiv').hide();
		$('#testDiv').css("display","block");
		$('#testDiv1').css("display","block");
		$('#testDiv2').css("display","block");
	}
});

</script>