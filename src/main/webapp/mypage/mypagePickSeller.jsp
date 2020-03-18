<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href= "../css/mypage.css">
<div id = "pickSellerList">찜한 판매자</div>

<table class = "pickSellerTable" frame="hsides" rules = "rows" cellpadding="10" >
	<tr>
		<th><input type = "checkbox" id = "all" onclick = "checkAll()"></th>
		<th>판매자 정보</th>
		<th>선택</th>
	</tr>
	<tr>
		<td align = "center" width="100px"><input type = "checkbox" name = "check"></td>
		<td width = "80%"><img src = "../image/neodrinking.gif" id = "pickSellerImg"
		style="cursor:pointer" onclick="location.href='#'"><!-- width = "700px" - > width = "80%" -->
		<dl>
			<dt style="font-size: 12pt; font-weight: bold;margin-bottom: 5px;"><a href = "#" class = "pickSellerDetailA">판매자</a></dt>
		</dl>
		</td>
		<td>
		<input class = "pickSellerHomeBtn" type="button" value="판매자 홈" onclick="javascript:location.href='/bitFarm/seller/sellerAll.do'" >
		<input class = "pickSellerDeleteBtn" type="button" value="삭제" >
		<!-- <div id = "pickSellerHomeBtnDiv">
			<a class = "pickSellerHomeA" href="#">판매자 홈</a>
		</div>
		<div id = "pickSellerDeleteBtnDiv">
			<a class = "pickSellerDeleteA" href="#">삭제</a>
		</div> -->
		</td>
	</tr>
</table>

<div id = "pickSellerBlank"></div>
<!-- <div id = "pickSellerSelectDeleteBtnDiv">
	<a class = "pickSellerSelectDeleteA" href="#">선택삭제</a>
</div> -->
<input class = "pickSellerSelectDeleteBtn" type="button" value="선택삭제" >