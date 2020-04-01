<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style type="text/css">
a.sellerA {color:blak; text-decoration: none;}
a.sellerA:link {color: black; text-decoration: none;}
a.sellerA:visited {color: black; text-decoration: none;}
a.sellerA:hover {color: #5f0080; text-decoration: none; font-weight: bolder;}
a.sellerA:active {color: black; text-decoration: none;}

.sellerLeftDiv{	
	float: left; 
	text-align: center;
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

<div class="sellerLeftDiv" >
	<c:set value="${sellerName}" var="seller" />
	<input type="hidden" name="seller_id" value="${sellerDTO.seller_id}">
	<h2><a class="sellerA" href="/bitFarm/sellerHome/sellerAll?sellerName=${sellerName}">판매자 홈</a></h2>&nbsp;
	<br>
	<img src="../storage/${sellerDTO.seller_profileImage}" width="90px">
	<h3>${seller}</h3><br>
	<input type="button" value="판매자 찜하기" class="pickSellerBtn">
	<br><br>
	<table width="100%" height="300px">
	  <c:if test="${memberId==null && sellerId == sellerDTO.seller_id}">
		<tr>
			<td><a class="sellerA" href="/bitFarm/sellerHome/sellerAddForm">판매상품 등록하기</a></td>
		</tr>
		<tr>
			<td><a class="sellerA" href="/bitFarm/sellerHome/sellerManage">품절 상품 관리하기</a></td>
		</tr>
	  </c:if>
		<tr>
			<td><a class="sellerA" href="/bitFarm/sellerHome/sellerAll?sellerName=${sellerName}">상품 모아보기</a></td>
		</tr>
		<tr>
			<td><a class="sellerA" href="/bitFarm/sellerHome/sellerStore">오프라인 매장</a></td>
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

<!-- script -->
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$('.pickSellerBtn').click(function(){
	if(${sellerId!=null}){
		alert('판매자는 찜하기 기능을 이용 할 수 없습니다.');
	}
	
	$.ajax({
		type : 'post',
		url : '/bitFarm/mypage/mypagePickSellerAdd',
		data : 'sellerName=${sellerName}',
		success: function(){
			alert("찜하기 성공");
			if(confirm("찜한 물품 페이지로 이동하시겠습니까?")){
				location.href = '/bitFarm/mypage/mypagePickSeller';
			}
		}
	});
});
</script>