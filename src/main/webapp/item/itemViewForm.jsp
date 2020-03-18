<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href= "../css/itemViewForm.css">
<div class="itemView">
	<div class="itemMainImageDiv">
		<img src="../image/berry.jpg" width="470">
	</div>
	<div class="itemTempDiv">
		&emsp;
	</div>
	<div class="itemCartDiv">
		<p style="font-size: 1.7em; font-weight: bold;">[비트네 딸기농장]&nbsp;상큼한 딸기</p>
		<font color="gray">상큼하고 단 신선한 딸기</font>
		<br><br>
		<p style="font-size: 1.7em;"><strong>7,900</strong>원</p>
		<font color="#5f0080">로그인 후, 회원할인가와 적립혜택이 제공됩니다.</font>
		<br><br><br><br><br><br><br><br>
		<span class="count">
			<font color="gray">구매수량</font>&emsp;
			<button class="btn_downup">-</button>
			<input type="text" readonly="readonly" value="1" size="2" style="text-align: center;">
			<button class="btn_downup">+</button>
		</span>
		<br><br>
		<p style="float: right;">총 상품금액 : <span style="font-size: 1.7em;"><strong>24,500</strong>원</span></p>
		<br><br><br>
		<p style="text-align: right;">
			<button class="goPickItemBtn">찜하기</button>&emsp;
			<button class="goCartBtn">장바구니 담기</button>
		</p>
		<br>
	</div>
</div>


<div class="itemViewDisplay">
	<p style="clear: both; height: 5px;"></p>
	<div class="itemMenu">
		<ul>
			<li class="itemDetailLi" id="itemDetailLi"><h4>상품설명</h4></li>
			<li class="itemReviewLi"><h4>고객후기</h4></li>
			<li class="itemQnaLi"><h4>상품문의</h4></li>
		</ul>
	</div>
	<p style="clear: both; height: 5px;"></p>
	
	<div class="itemDetailDiv">
		<img src="../image/lemonDetail.JPG" class="itemViewDetailImage">
	</div>
	
	<p style="clear: both; height: 100px;"></p>
	<div class="itemMenu">
		<ul>
			<li class="itemDetailLi"><h4>상품설명</h4></li>
			<li class="itemReviewLi" id="itemReviewLi"><h4>고객후기</h4></li>
			<li class="itemQnaLi"><h4>상품문의</h4></li>
		</ul>
	</div>
	<p style="clear: both; height: 10px;"></p>
	
	<div class="itemReviewDiv">
		<table class="itemQnaListTable" frame="hsides" rules="rows" cellpadding="10">
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성일</th>
			</tr>
			<!-- list로 돌리기 -->
			<tr>
				<td align="center">1</td>
				<td align="center">딸기 개존맛입니다</td>
				<td align="center">2020-03-20</td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">딸기 개존맛입니다</td>
				<td align="center">2020-03-20</td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">딸기 개존맛입니다</td>
				<td align="center">2020-03-20</td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center">딸기 개존맛입니다</td>
				<td align="center">2020-03-20</td>
			</tr>
		</table>
	</div>
	
	<p style="clear: both; height: 100px;"></p>
	<div class="itemMenu">
		<ul>
			<li class="itemDetailLi"><h4>상품설명</h4></li>
			<li class="itemReviewLi"><h4>고객후기</h4></li>
			<li class="itemQnaLi" id="itemQnaLi"><h4>상품문의</h4></li>
		</ul>
	</div>
	<p style="clear: both; height: 5px;"></p>
	
	<div class="itemQnaDiv">
		<table class="itemQnaListTable" frame="hsides" rules = "rows" cellpadding="10">
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성일</th>
			</tr>
			<!-- list로 돌리기 -->
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
			<tr>
				<td align="center">1</td>
				<td align="center">상품 질 좋은가요</td>
				<td align="center">2020-03-20</td>
			</tr>
		</table>
	</div>
	
</div>
<p style="clear: both; height: 10px;"></p>

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
				[판매자농장] 판매상품이름
			</span>
			<span style="width: 60%; height: 30px; float: right; background: #f8f8f8;">
				<span style="width:20%; float: center;">
					<button class="btn_downup"><strong>-</strong></button>
					<input type="text" readonly="readonly" value="1" size="2" style="text-align: center;">
					<button class="btn_downup"><strong>+</strong></button>
				</span>
				<span style="width:30%; float: right;">
					2,500원
				</span>
			</span>
		</div>
		<p style="clear: both; height: 10px;"></p>
		<div class="miniCartDiv_visible_qty">
			<span style="width:30%; float: right;">
				총 상품금액 : <span style="font-size: 2em;"><strong>2,500</strong></span>원
			</span><br>
		</div>
		<p style="clear: both; height: 2px;"></p>
		<div class="miniCartDiv_visible_btnGroup">
			<button class="goPickItemBtn">찜하기</button>&emsp;
			<button class="goCartBtn">장바구니 담기</button>
		</div>
	</div>
</div>

<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var itemDetailDiv = $('.itemDetailDiv').offset();
	var itemReviewDiv = $('.itemReviewDiv').offset();
	var itemQnaDiv = $('.itemQnaDiv').offset();
	
	$('.miniCartDivTool_small_visible').css('visibility', 'hidden');
	$('.miniCartDivTool_visible').css('visibility', 'hidden');
	
	$(window).scroll(function(){
		var height = $(document).scrollTop();
		var itemDetailDiv = $('.itemDetailDiv').offset();
		if(height > itemDetailDiv.top){
			$('#miniCartDivTool').css('visibility', 'visible');
		}else{
			$('#miniCartDivTool').css('visibility', 'hidden');
		}
	});
	
	$('.miniCartDiv_small_updownBtn').click(function(){
		$('.miniCartDivTool_small_visible').css('visibility', 'hidden');
		$('.miniCartDivTool_visible').css('visibility', 'visible');
	});
	$('.miniCartDiv_updownBtn').click(function(){
		$('.miniCartDivTool_small_visible').css('visibility', 'visible');
		$('.miniCartDivTool_visible').css('visibility', 'hidden');
	});
	
	//offset으로 좌표구해서 해당 div top으로 이동하기
	$('.itemDetailLi').click(function(){
		$('body,html').animate({scrollTop:itemDetailDiv.top-200});
	});
	$('.itemReviewLi').click(function(){
		$('body,html').animate({scrollTop:itemReviewDiv.top-200});
	});
	$('.itemQnaLi').click(function(){
		$('body,html').animate({scrollTop:itemQnaDiv.top-200});
	});

});
</script>