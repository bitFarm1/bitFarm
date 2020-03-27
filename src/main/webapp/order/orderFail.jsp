<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
.orderFailDiv{
	width: 80%; 
	margin: 0 auto; 
	/* background: #f8f8f8; */
	text-align: center;
	height: 500px;
}
.goItemBtn{
	width: 200pt;
	height: 40pt;
	color: #000000;
	background-color: #ffffff;
	border-radius: 10px; 
	line-height: 20px;  
    border: 1px solid #ccc;
    outline: none; 
	font-weight: bold;
	font-size: 17px;
	cursor: pointer;
}
.goCartBtn{
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

<div class="orderFailDiv">
	<br><br><br><br>
	<h1 style="font-color: red;">결제가 취소되었습니다.</h1>
	<font style="color: gray;">다른 상품을 더 둘러보세요!</font>
	<br><br><br><br><br><br>
	<input type="button" class="goItemBtn" value="다른 상품 둘러보기" onclick="location.href='/bitFarm/main/main'">
	&emsp;&emsp;&emsp;
	<input type="button" class="goCartBtn" value="장바구니로 돌아가기" onclick="location.href='/bitFarm/cart/cartForm'">
</div>
