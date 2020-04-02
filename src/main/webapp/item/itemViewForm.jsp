<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href= "../css/item.css">

<!-- 상품 상세페이지 메인화면 -->
<form name="itemViewForm" method="post">
<div class="itemView">
	<div class="itemMainImageDiv">
		<img src="../storage/${itemDTO.item_main_image}" width="470">
	</div>
	<div class="itemTempDiv">
		&emsp;
	</div>
	<div class="itemCartDiv">
		<p style="font-size: 1.7em; font-weight: bold;">
			[${itemDTO.seller_name}]&nbsp;${itemDTO.item_name}&nbsp;
			<img src="../storage/sellerhome.png" width="30" height="30" style="cursor: pointer;" class="goSellerHomeBtn">
		</p>
		<font color="gray">${itemDTO.item_explain}</font>
		<br><br>
		<p style="font-size: 1.7em;">
			<strong><span id="itemPrice">
				<fmt:formatNumber type="number" maxFractionDigits="3" value="${itemDTO.item_price}"/>
			</span></strong>원
		</p>
		<!-- <font color="#5f0080">로그인 후, 회원할인가와 적립혜택이 제공됩니다.</font> -->
		<br><br><br><br><br><br><br><br><br>
		<span class="count">
			<font color="gray">구매수량</font>&emsp;
			<input type="button" id="minusBtn" value="-" class="qtyBtn" onclick="topchange(-1);">
			<input type="text" name="item_qty" id="item_qty" value="1" size="1" style="text-align: center;" readOnly>
			<input type="button" id="plusBtn" value="+" class="qtyBtn" onclick="topchange(1);">
		</span>
		<br><br>
		<p style="float: right;">총 상품금액 : 
			<span style="font-size: 1.7em; font-weight: bold;" id="itemAllPrice">
				<fmt:formatNumber type="number" maxFractionDigits="3">${itemDTO.item_price}</fmt:formatNumber>
			</span>원
		</p>
		<br><br><br>
		<p style="text-align: right;">
			<input type="button" id = "goPickItemBtn" class="goPickItemBtn" value="찜하기">&emsp;<!-- 200325 김소중 추가  id = "goPickItemBtn"-->
			<input type="button" id="mainCartBtn" class="goCartBtn" value="장바구니 담기">
		</p>
		<br>
	</div>
</div>
</form>

<!-- 상품상세/리뷰/문의 -->
<div class="itemViewDisplay">
	<p style="clear: both; height: 5px;"></p>
	<div class="itemMenu">
		<ul>
			<li class="itemDetailLi" id="itemDetailLi"><h4>상품설명</h4></li>
			<li class="itemReviewLi"><h4>고객후기</h4></li>
			<!-- <li class="itemQnaLi"><h4>상품문의</h4></li> -->
		</ul>
	</div>
	<p style="clear: both; height: 5px;"></p>
	
	<div class="itemDetailDiv">
		<img src="../storage/${itemDTO.item_detail_image}" class="itemViewDetailImage">
	</div>
	<p style="clear: both; height: 100px;"></p>
	
	
	<div class="itemMenu">
		<ul>
			<li class="itemDetailLi"><h4>상품설명</h4></li>
			<li class="itemReviewLi" id="itemReviewLi"><h4>고객후기</h4></li>
			<!-- <li class="itemQnaLi"><h4>상품문의</h4></li> -->
		</ul>
	</div>
	<p style="clear: both; height: 10px;"></p>

	<!-- 리뷰div 따로 파일 뺌 -->
	<jsp:include page="itemViewReview.jsp" />
	<p style="clear: both; height: 1px;"></p>
	<div class="itemBtnDiv">
		<input type="button" class="itemViewReviewWriteBtn" value="후기작성하기">
	</div>
	
	<!-- 문의 -->
<!-- 	<p style="clear: both; height: 100px;"></p>
	<div class="itemMenu">
		<ul>
			<li class="itemDetailLi"><h4>상품설명</h4></li>
			<li class="itemReviewLi"><h4>고객후기</h4></li>
			<li class="itemQnaLi" id="itemQnaLi"><h4>상품문의</h4></li>
		</ul>
	</div>
	<p style="clear: both; height: 5px;"></p>
	<div class="itemBtnDiv">
		<input type="button" class="itemViewSellerQnaBtn" value="문의하러가기">
	</div> -->
</div>
<p style="clear: both; height: 10px;"></p>

<!-- 스크롤 -->
<!-- 스크롤시 하단에 뜨는 div -->
<form name="itemViewScrollDiv">
<div id="miniCartDivTool" class="miniCartDivTool_small_visible">
	<div class="miniCartDiv_small_updownBtnDiv">
		<input type="button" value="상품 선택" class="miniCartDiv_small_updownBtn">
	</div>
	<div class="miniCartDiv_small_visible">
		
	</div>
</div>
<div class="miniCartDivTool_visible">
	<div class="miniCartDiv_updownBtnDiv">
		<input type="button" value="상품 선택" class="miniCartDiv_updownBtn">
	</div>
	<div class="miniCartDiv_visible">
		<br>
		<div class="miniCartDiv_visible_itemInfo">
			<span style="width: 39.99%; height: 30px;  float: left; background: #f8f8f8;">
				[${itemDTO.seller_name}]&nbsp;${itemDTO.item_name}
			</span>
			<span style="width: 60%; height: 30px; float: right; background: #f8f8f8;">
				<span style="width:20%; float: center;">
					<input type="button" id="minusBtn" value="-" class="botqtyBtn" onclick="botchange(-1);">
					<input type="text" name="item_qty1" id="item_qty1" value="1" size="1" style="text-align: center;" readOnly>
					<input type="button" id="plusBtn" value="+" class="botqtyBtn" onclick="botchange(1);">
				</span>
				<span id="itemPrice" style="width:30%; float: right;" id="itemAllPrice">
					<fmt:formatNumber type="number" maxFractionDigits="3" value="${itemDTO.item_price}"/>
				</span>
			</span>
		</div>
		<p style="clear: both; height: 10px;"></p>
		<div class="miniCartDiv_visible_qty">
			<span style="width:30%; float: right;">
				총 상품금액 : 
				<span id="itemAllPrice" style="font-size: 2em; font-weight: bold;">
					<fmt:formatNumber type="number" maxFractionDigits="3" value="${itemDTO.item_price}"/>
				</span>원
			</span><br>
		</div>
		<p style="clear: both; height: 2px;"></p>
		<div class="miniCartDiv_visible_btnGroup">
			<input type="button" class="goPickItemBtn" value="찜하기">&emsp;
			<input type="button" id="scrollCartBtn" class="goCartBtn" value="장바구니 담기">
		</div>
	</div>
</div>
</form>
<p style="clear: both; height: 10px;"></p>

<%-- script --%>
<script type="text/javascript">
function topchange(num){
	var x = Number(item_qty.value) + num;
	
	if(x<1) x = 1;
	itemViewForm.item_qty.value = x;
}

function botchange(num){
	var y = Number(item_qty1.value) + num;
	
	if(y<1) y = 1;
	itemViewScrollDiv.item_qty1.value = y;
}
</script>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.number.min.js"></script>
<script type="text/javascript" src="../js/itemViewForm.js"></script>
<script type="text/javascript">

//수량 조절에 따라 금액변동
$('.qtyBtn').click(function(){
	let itemPrice = ${itemDTO.item_price};
	let itemQty = $('#item_qty').val();
	$('#item_qty1').val(itemQty);

	itemQty *= 1;
	
	itemAllPrice = itemQty * itemPrice;
	$('span[id=itemAllPrice]').text($.number(itemAllPrice, 0));
});

//수량 조절에 따라 금액변동
$('.botqtyBtn').click(function(){
	let itemPrice = ${itemDTO.item_price};
	let itemQty = $('#item_qty1').val();
	$('#item_qty').val(itemQty);

	itemQty *= 1;
	
	itemAllPrice = itemQty * itemPrice;
	$('span[id=itemAllPrice]').text($.number(itemAllPrice, 0));
});

//장바구니로 가튼 버튼
$('#mainCartBtn').click(function(){
	let item_id = ${itemDTO.item_id};
	let item_qty = $('#item_qty').val();
	//alert(item_qty);
	let itemAllPrice = $('#itemAllPrice').text();
	
	$.ajax({
		type : 'POST',
		url : '/bitFarm/cart/cartAdd',
		data : 'item_id=' + item_id + '&item_qty=' + item_qty + '&itemAllPrice=' + itemAllPrice,
		dataType : 'text',
		success: function(data){
			//alert(data);
			if(data=='true'){
				location.href = '/bitFarm/cart/cartForm';
			}else{
				alert('회원 로그인 후 사용해주세요');
				//location.href = '/bitFarm/member/loginForm';
			}
		}
	});
});

//장바구니로 가튼 버튼
$('#scrollCartBtn').click(function(){
	let item_id = ${itemDTO.item_id};
	let item_qty = $('#item_qty1').val();
	let itemAllPrice = $('#itemAllPrice').text();
	
	$.ajax({
		type : 'POST',
		url : '/bitFarm/cart/cartAdd',
		data : 'item_id=' + item_id + '&item_qty=' + item_qty + '&itemAllPrice=' + itemAllPrice,
		dataType : 'text',
		success: function(data){
			//alert(data);
			if(data=='true'){
				location.href = '/bitFarm/cart/cartForm';
			}else{
				alert('회원 로그인 후 사용해주세요');
				//location.href = '/bitFarm/member/loginForm';
			}
		}
	});
});

//후기작성하는 버튼
$('.itemViewReviewWriteBtn').click(function(){
	let id = '${memberId}';
	let sid = '${sellerId}';
	//alert(id);
	
	if(id=='' || id==null){
		alert('회원만 후기를 작성할 수 있습니다.');
	} else {
		let itemId = '${itemDTO.item_id}';
		
		$.ajax({
			type : 'get',
			url : '/bitFarm/review/reviewConfirm',
			data : 'item_id=' + itemId,
			dataType : 'text',
			success : function(data){
				//alert(data);
				if(data=='false'){
					alert('주문하신 상품에 대해서만 리뷰 작성이 가능합니다.');
				}else{
					location.href="/bitFarm/review/reviewWriteForm?item_id="+itemId;
				}
			}
		});
		
	}
});

//문의작성하러 가는 버튼
$('.itemViewSellerQnaBtn').click(function(){
	let id = '${memberId}';
	//alert(id);
	
	if(id=='' || id==null){
		alert('회원만 문의를 작성할 수 있습니다.');
	}else {
		location.href="/bitFarm/information/infoQnABoard?item_id="+${itemDTO.item_id};	//주소 변경해야함 -> 판매자홈left 왼쪽에 두고 폼 만들기
	}
});

//상품 찜하기 하는 버튼
$('.goPickItemBtn').click(function(){
	let item_id = ${itemDTO.item_id};
	let seller_name = '${itemDTO.seller_name}';
	let item_name = '${itemDTO.item_name}';
	let item_main_image = '${itemDTO.item_main_image}';
	let item_price = ${itemDTO.item_price};
	
	$.ajax({
		type : 'POST',
		url : '/bitFarm/mypage/goPickItem',
		data : 'item_id=' + item_id + '&seller_name=' + seller_name + '&item_name=' + item_name + '&item_main_image=' + item_main_image + '&item_price=' + item_price,
		dataType:'json',
		success : function(data){
		//	alert(JSON.stringify(data));
			if(data){
				alert("이미 존재합니다");
			}else{
				alert("찜하기 성공");
				if(confirm("찜한 물품 페이지로 이동하시겠습니까?")){
					location.href = '/bitFarm/mypage/mypagePickItem';
				}
			}
	
		},error : function() {
			alert("회원 로그인 후 사용해주세요");
			//location.href = '/bitFarm/member/loginForm';
		}
	}); 
});

//판매자홈으로 가는 버튼
$('.goSellerHomeBtn').click(function(){
	let sName = '${itemDTO.seller_name}';
	let sid = '${sellerId}';
	let id = '${memberId}';
	
	if(sName=='${sellerName}'){	//판매자 : 내가 해당 상품을 파는 판매자 본인일떄
		location.href='/bitFarm/sellerHome/sellerHomeMain?sellerName=' + sName;
	}else if(id!=null || id!=''){
		location.href='/bitFarm/sellerHome/sellerHomeMain?sellerName=' + sName;
	}else if(sName!='${sellerName}'){	//판매자 : 내가 해당상품을 파는 판매자가 아닐때
		alert('회원 계정으로만 판매자 홈으로 이동 할 수 있습니다.');
	}
	else{
		location.href='/bitFarm/sellerHome/sellerHomeMain?sellerName=' + sName;
	}
});		

</script>