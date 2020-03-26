<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style type="text/css">
.mainImageList_image{
	width: 300px;
	cursor: pointer;
	
}
.bestItemSubject{
	width: 80%;
	margin: 0 auto;
	text-align: left;
}
</style>

<p style="clear: both; height: 50px;"></p>
<div class="bestItemSubject">
	<h3><strong>&emsp;B&nbsp;E&nbsp;S&nbsp;T&emsp;I&nbsp;T&nbsp;E&nbsp;M</strong></h3>
	<font style="color: grey;">&emsp;이번주의 인기상품을 한곳에서 만나보세요!</font>
</div>
<p style="clear: both; height: 10px;"></p>
<table align="center" width="80%" cellpadding="40">
	<tr>
		<td align="center">
			<img class="mainImageList_image" src="../storage/abocadoMain.JPG" onclick="itemClick(14)"><br><br>
			<h5><strong>아보카도</strong></h5><br>
		</td>
		<td align="center">
			<img class="mainImageList_image" src="../storage/lemonMain.JPG" onclick="itemClick(15)"><br><br>
			<h5><strong>레몬</strong></h5><br>
		</td>
		<td align="center">
			<img class="mainImageList_image" src="../storage/didvkwmqMain.JPG" onclick="itemClick(21)"><br><br>
			<h5><strong>양파즙</strong></h5><br>
		</td>
	</tr>
</table>
<p style="clear: both; height: 5px;"></p>

<script type="text/javascript">
function itemClick(seq){
	location.href='/bitFarm/item/getItemView?seq='+seq;
}
</script>