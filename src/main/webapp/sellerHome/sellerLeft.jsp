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
			<td><a class="sellerA" href="/bitFarm/sellerHome/sellerStore?sellerName=${sellerName}">오프라인 매장</a></td><!-- sellerName=${sellerName}추가 -->
		</tr>
	  <c:if test="${memberId==null && sellerId == sellerDTO.seller_id}">
		<tr>
			<td><a class="sellerA" href="/bitFarm/sellerHome/sellerOrder?pg=1">주문 현황</a></td>
		</tr>
		<tr>
			<td><a class="sellerA" href="/bitFarm/sellerHome/sellerSell">매출 현황</a></td>
		</tr>
	  </c:if>
	</table>
</div>

<!-- script -->
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$('.pickSellerBtn').click(function(){
	let id = '${memberId}';
	if(id!=''){
		$.ajax({
			type : 'post',
			url : '/bitFarm/mypage/mypagePickSellerAdd',
			data : 'sellerName=${sellerName}',
			success: function(){
				alert("찜하기 성공");
				if(confirm("찜한 판매자 페이지로 이동하시겠습니까?")){
					location.href = '/bitFarm/mypage/mypagePickSeller';
				}
			}
		});
	}else{
		alert('회원 계정으로만 찜하기 기능을 이용 할 수 있습니다.');
	}

});
</script>