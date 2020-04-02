<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href= "../css/mypage.css">


<h3>찜한 상품</h3>

<form name = "pickItemListForm" id="pickItemListForm" method="post">
<table class = "pickItemTable" frame="hsides" rules = "rows" cellpadding="10" >
<thead>
	<tr>
		<th><input type = "checkbox" id = "all" onclick = "checkAll()"></th>
		<th>상품 정보</th>
		<th>선택</th>
	</tr>
</thead>
<tbody>
<c:forEach var="myPickItemDTO" items="${list}">
<c:set var = "item_id" value = "${myPickItemDTO.pick_item_id }"/>
<c:set var = "item_img" value = "${myPickItemDTO.pick_item_main_img }"/>
<c:set var = "item_seller" value = "${myPickItemDTO.pick_item_seller_name }"/>
<c:set var = "item_name" value = "${myPickItemDTO.pick_item_name }"/>
<c:set var = "item_price" value = "${myPickItemDTO.pick_item_price }"/>
	<tr>
		<td align = "center" width="100px"><input type = "checkbox" name = "check" value = "${item_id }"></td>
		<td width = "80%"><img src="../storage/${item_img}" id = "pickItemImg" style="cursor:pointer" onclick="itemClick(${myPickItemDTO.pick_item_id})">
		<dl>
			<dt style="font-size: 12pt; font-weight: bold;margin-bottom: 5px;"><a style="cursor:pointer" onclick="itemClick(${myPickItemDTO.pick_item_id})" class = "pickItemDetailA">[${item_seller}] ${item_name }</a></dt>
			<dd style="font-size: 10pt;">
			<fmt:formatNumber pattern="#,###원">${item_sprice}</fmt:formatNumber>
			</dd>
		</dl>
		</td>
		<td>
			<input class = "pickItemBasketBtn" type="button" value="장바구니">
			<input class = "pickItemDeleteBtn" type="button" name = "deleteBtn" id = "${item_id }" value="삭      제" >
		
		</td>
	</tr>
</c:forEach>
</tbody>
</table>
</form>
<div id = "pickItemBlank"></div>
<input class = "pickItemSelectDeleteBtn" id = "choiceDeleteBtn" type="button" value="선택삭제" >	

<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
//전체 선택/해제
$('#all').click(function(){
	if($('#all').prop('checked'))
		$('input[name=check]').prop('checked', true);
	else
		$('input[name=check]').prop('checked', false);
});

//선택 삭제
$('#choiceDeleteBtn').click(function(){
	let count = $('input[name=check]:checked').length;

	if(count==0)
		alert("삭제할 항목을 선택하세요");
	else{
		if(confirm("정말로 삭제하시겠습니까")){
			document.pickItemListForm.action = "/bitFarm/mypage/deleteChoicePickItem";
			document.pickItemListForm.submit();
		}
	}
});

//삭제
$('input[name=deleteBtn]').click(function(){
	
	var deleteId = $(this).attr('id');
	if(confirm("정말로 삭제하시겠습니까")){
		document.pickItemListForm.action = 'deletePickItem?deleteId='+deleteId;
		document.pickItemListForm.submit();
	}
	
});

//장바구니 담기
$('.pickItemBasketBtn').click(function(){
	let item_id = ${item_id};
	let item_price = ${item_price};
	
	if(confirm("장바구니에 상품을 담으시겠습니까?")){
		$.ajax({
			type : 'POST',
			url : '/bitFarm/cart/cartAdd',
			data : 'item_id=' + item_id + '&item_qty=' + 1 + '&itemAllPrice=' + item_price,
			dataType : 'text',
			success: function(data){
				if(data=='true'){
					location.href = '/bitFarm/cart/cartForm';
				}else{
					alert('로그인 후 사용해주세요');
					location.href = '/bitFarm/member/loginForm';
				}
			}
		});
	}
});

function itemClick(seq){
	location.href='/bitFarm/item/getItemView?seq='+seq;
}

</script>