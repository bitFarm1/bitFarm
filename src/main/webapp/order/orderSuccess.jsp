<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
.orderSuccessDiv{
	width: 80%; 
	margin: 0 auto; 
	/* background: #f8f8f8; */
	text-align: center;
	height: 500px;
}
.goMypageBtn{
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
.goShopping{
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
<div class="orderSuccessDiv">
	<br><br><br><br>
	<h1 style="font-color: red;">주문을 완료하였습니다</h1>
	<font style="color: gray;">또 다른 상품을 둘러보세요!</font>
	<br><br><br><br><br><br>
	<input type="button" class="goMypageBtn" value="주문내역보기" onclick="location.href='/bitFarm/mypage/mypagePurchaseList?pg=1'">
	&emsp;&emsp;&emsp;
	<input type="button" class="goShopping" value="쇼핑계속하기" onclick="location.href='/bitFarm/main/main'">
</div>
