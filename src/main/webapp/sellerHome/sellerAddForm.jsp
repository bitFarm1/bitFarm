<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
.sellerAddTable{
	text-align: center;
	border-collapse: collapse;
	width: 100%;
	border-top: 2px solid #5f0080;
	border-bottom: 2px solid gray;
}
.sellerAddText{
	width: 500px;
	height: 50px;
	line-height: 20px;   
    border-radius: 3px; 
    background: #fff;
    border: 1px solid grey;
    outline: none; 
    color: #5f0080; 
    padding: 0 15px;
}
#itemAddBtn{
	width: 200pt;
	height: 40pt;
	color: #ffffff;
	border: 0;
	outline: none; 
	background-color: #5f0080;
	border-radius: 10px; 
	font-weight: bold;
	font-size: 17px;
	cursor: pointer;
}
</style>

<div style="width : 90%; margin: 0 auto;">
	<h2 align="center">판매상품 등록하기</h2>
	<div style="text-align: center;">판매하실 상품을 등록해 주세요.</div>
	<br><br>
	<form name="sellerAddForm" enctype="multipart/form-data" method="post" action="/bitFarm/item/itemAdd">
	<table class="sellerAddTable" cellpadding="20" cellspacing="100" frame="hsides" rules="rows">
		<tr>
			<th width="30%">상품 이름</th>
			<td>
				<input class="sellerAddText" type="text" name="item_name" id="item_name" placeholder="상품 이름을 입력해주세요.">
				<div id="item_name_div"></div>
			</td>
		</tr>
		<tr>
			<th>상품 가격</th>
			<td>
				<input class="sellerAddText" type="text" name="item_price" id="item_price" placeholder="상품 가격을 입력해주세요.">
				<div id="item_price_div"></div>
			</td>
		</tr>
		<tr>
			<th>상품 메인 이미지</th>
			<td style="height:50;">
				<input type="file" name="img" id="image_main_image" placeholder="상품 이미지를 등록해주세요.">
				<div id="item_main_image_div"></div>
			</td>
		</tr>
		<tr>
			<th>상품 상세 이미지</th>
			<td style="height:50;">
				<input type="file" name="img" id="image_detail_image" placeholder="상품 이미지를 등록해주세요." >
				<div id="item_detail_image_div"></div>
			</td>
		</tr>
		<tr>
			<th>상품 설명</th>
			<td>
				<input class="sellerAddText" type="text" name="item_explain" id="image_explain" placeholder="상품의 간단한 설명을 입력해주세요.">
				<div id="item_explain_div"></div>
			</td>
		</tr>
		<tr>
			<th>상품 카테고리</th>
			<td>
				<select name="item_category_name" style="width: 500px; height: 30px;">
					<option value="과일/과일즙">과일/과일즙
					<option value="축산/유정란">축산/유정란
					<option value="쌀/잡곡/견과류">쌀/잡곡/견과류
					<option value="고구마/감자/채소/버섯">고구마/감자/채소/버섯
					<option value="장류/김치">장류/김치
				</select>
			</td>
		</tr>
		<tr>
			<th>상품 재고 수량</th>
			<td>
				<input class="sellerAddText" type="text" name="item_amount" id="item_amount" placeholder="상품 재고수량을 입력해주세요.">
				<div id="item_amount_div"></div>
			</td>
		</tr>
		<tr>
			<th>상품 주문여부</th>
			<td>
				<input class="sellerAddText" type="text" name="item_order_able" id="item_order_able" value="1" readOnly>
			</td>
		</tr>
	</table>
	</form>
	<br><br>
	<div style="text-align: center;"><input type="button" value="상품 등록하기" id="itemAddBtn"></div>
	
</div>
<p style="clear: both; height: 10px;"></p>

<!-- script -->
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$('#itemAddBtn').click(function(){
	$('#item_name_div').empty();
	$('#item_price_div').empty();
	$('#item_main_image_div').empty();
	$('#item_detail_image_div').empty();
	$('#item_explain_div').empty();
	$('#item_amount_div').empty();
	
	if($('#item_name').val()==''){
		$('#item_name_div').text('상품 이름을 입력하세요');
		$('#item_name_div').css('color', 'red');
		$('#item_name_div').css('font-size', '10pt');
	}else if($('#item_price').val()==''){
		$('#item_price_div').text('상품 가격을 입력하세요');
		$('#item_price_div').css('color', 'red');
		$('#item_price_div').css('font-size', '10pt');
	}else if($('#image_main_image').val()==''){
		$('#item_main_image_div').text('상품 메인이미지를 등록하세요');
		$('#item_main_image_div').css('color', 'red');
		$('#item_main_image_div').css('font-size', '10pt');
	}else if($('#image_detail_image').val()==''){
		$('#item_detail_image_div').text('상품 상세이미지를 등록하세요');
		$('#item_detail_image_div').css('color', 'red');
		$('#item_detail_image_div').css('font-size', '10pt');
	}else if($('#image_explain').val()==''){
		$('#item_explain_div').text('상품의 간단한 설명을 등록하세요');
		$('#item_explain_div').css('color', 'red');
		$('#item_explain_div').css('font-size', '10pt');
	}else if($('#image_amount').val()==''){
		$('#item_amount_div').text('상품의 재고수량을 등록하세요');
		$('#item_amount_div').css('color', 'red');
		$('#item_amount_div').css('font-size', '10pt');
	}else {
		$('form[name=sellerAddForm]').submit();
	}
});
</script>