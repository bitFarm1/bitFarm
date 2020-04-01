<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href= "../css/mypage.css">
<div id = "pickSellerList">찜한 판매자</div>

<form name="pickSellerListForm" id="pickSellerListForm" method="post">
<table class = "pickSellerTable" frame="hsides" rules = "rows" cellpadding="10" >
	<tr>
		<th><input type = "checkbox" id = "all" onclick = "checkAll()"></th>
		<th>판매자 정보</th>
		<th>선택</th>
	</tr>
	<c:if test="${list!=null }">
	<c:forEach var="mypagePickSellerDTO" items="${list}">
	<tr>
		<td align = "center" width="100px"><input type = "checkbox" name="check" value="${mypagePickSellerDTO.pick_seller_id }"></td>
		<td width = "80%">
			<img src = "../storage/${mypagePickSellerDTO.pick_seller_main_img}" id="pickSellerImg" style="cursor:pointer" 
			onclick="location.href='/bitFarm/sellerHome/sellerAll?sellerName=${mypagePickSellerDTO.pick_seller_name}'">
			<dl>
				<dt style="font-size: 12pt; font-weight: bold;margin-bottom: 5px;">${mypagePickSellerDTO.pick_seller_name}</dt>
			</dl>
		</td>
		<td>
			<input class = "pickSellerHomeBtn" type="button" value="판매자 홈" 
				onclick="javascript:location.href='/bitFarm/sellerHome/sellerAll?sellerName=${mypagePickSellerDTO.pick_seller_name}'" >
			<input class = "pickSellerDeleteBtn" type="button" value="삭제" name="deleteBtn" id="${mypagePickSellerDTO.pick_seller_id }">
		</td>
	</tr>
	</c:forEach>
	</c:if>
</table>
</form>

<div id = "pickSellerBlank"></div>
<input class = "pickSellerSelectDeleteBtn" type="button" value="선택삭제" >

<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

//전체 선택/해제
$('#all').click(function(){
	if($('#all').prop('checked'))
		$('input[name=check]').prop('checked', true);
	else
		$('input[name=check]').prop('checked', false);
});

//선택삭제
$('.pickSellerSelectDeleteBtn').click(function(){
	let count = $('input[name=check]:checked').length;

	if(count==0)
		alert("삭제할 항목을 선택하세요");
	else{
		if(confirm("정말로 삭제하시겠습니까")){
		//	$('#pickItemListForm').submit();
			document.pickSellerListForm.action = "/bitFarm/mypage/deleteChoicePickSeller";
			document.pickSellerListForm.submit();
		}
	}
});

//삭제
$('input[name=deleteBtn]').click(function(){
	
	var deleteId = $(this).attr('id');
	if(confirm("정말로 삭제하시겠습니까")){
		document.pickSellerListForm.action = 'deletePickSeller?deleteId='+deleteId;
		document.pickSellerListForm.submit();
	}
	
});

</script>