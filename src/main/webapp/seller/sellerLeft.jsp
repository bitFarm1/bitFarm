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
</style>


<div style = "padding: 5px 0px 0px 200px;">
<div class="sellerLeftDiv" >
	<a class="sellerA" href="/bitFarm/seller/sellerAll"><h2>판매자 홈</h2></a>
	<br>
	<img src="../image/user.png" width="90px">
	<h3>ㅇㅇ님</h3>
	<br><br><br><br>
	<table width="100%" height="300px"> 
		<tr>
			<td><a class="sellerA" href="/bitFarm/seller/sellerAddForm">판매상품 등록하기</a></td>
		</tr>
		<tr>
			<td><a class="sellerA" href="/bitFarm/seller/sellerAll">판매상품 모아보기</a></td>
		</tr>
		<tr>
			<td><a class="sellerA" href="/bitFarm/seller/sellerStore">오프라인 매장</a></td>
		</tr>
		<tr>
			<td><a class="sellerA" href="/bitFarm/seller/sellerQnABoard">문의게시판</a></td>
		</tr>
		<tr>
			<td><a class="sellerA" href="/bitFarm/seller/sellerOrder">주문현황</a></td>
		</tr>
		<tr>
			<td><a class="sellerA" href="/bitFarm/seller/sellerSell">매출현황</a></td>
		</tr>
	</table>
</div>
</div>