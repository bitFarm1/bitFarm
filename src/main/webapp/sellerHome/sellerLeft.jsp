<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
a.sellerA {color:blak; text-decoration: none;}
a.sellerA:link {color: black; text-decoration: none;}
a.sellerA:visited {color: black; text-decoration: none;}
a.sellerA:hover {color: #5f0080; text-decoration: none; font-weight: bolder;}
a.sellerA:active {color: black; text-decoration: none;}

.sellerLeftDiv{	
	margin
	width: 20%; 
	float: left; 
	text-align: center;
	/* border: 1px dotted red; */
}
.pickSellerBtn{
	width: 150pt;
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
</style>


<div style = "padding: 5px 0px 0px 200px;">
<div class="sellerLeftDiv" >
	<h2><a class="sellerA" href="/bitFarm/sellerHome/sellerAll">판매자 홈</a>&nbsp;
		<img src="../storage/sellerhome.png" width="30" height="30" style="cursor: pointer;" onclick="location.href='/bitFarm/sellerHome/sellerAll'"></h2>
	<br>
	<img src="../image/user.png" width="90px" >
	<h3>ㅇㅇ님</h3><br>
	<input type="button" value="판매자 찜하기" class="pickSellerBtn">
	<br><br>
	<table width="100%" height="300px"> 
		<tr>
			<td><a class="sellerA" href="/bitFarm/sellerHome/sellerAddForm">판매상품 등록하기</a></td>
		</tr>
		<tr>
			<td><a class="sellerA" href="/bitFarm/sellerHome/sellerAll">판매상품 모아보기</a></td>
		</tr>
		<tr>
			<td><a class="sellerA" href="/bitFarm/sellerHome/sellerStore">오프라인 매장</a></td>
		</tr>
		<tr>
			<td><a class="sellerA" href="/bitFarm/sellerHome/sellerQnABoard">문의게시판</a></td>
		</tr>
		<tr>
			<td><a class="sellerA" href="/bitFarm/sellerHome/sellerOrder">(보류)주문현황</a></td>
		</tr>
		<tr>
			<td><a class="sellerA" href="/bitFarm/sellerHome/sellerSell">(보류)매출현황</a></td>
		</tr>
	</table>
</div>
</div>