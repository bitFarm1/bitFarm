<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
.itemAddSuccessDiv{
	width: 80%; 
	margin: 0 auto; 
	/* background: #f8f8f8; */
	text-align: center;
	height: 500px;
}
.goitemListBtn{
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
.goitemAddBtn{
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
<div class="itemAddSuccessDiv">
	<br><br><br><br>
	<h1 style="font-color: red;">상품 등록을 완료했습니다.</h1>
	<font style="color: gray;">판매자님의 상품이 비트농장에서 많은 사랑을 받길 바랍니다!</font>
	<br><br><br><br><br><br>
	<input type="button" class="goitemListBtn" value="상품리스트 확인하기" onclick="location.href='/bitFarm/sellerHome/sellerAll'">
	&emsp;&emsp;&emsp;
	<input type="button" class="goitemAddBtn" value="또 다른 상품 등록하기" onclick="location.href='/bitFarm/sellerHome/sellerAddForm'">
</div>
