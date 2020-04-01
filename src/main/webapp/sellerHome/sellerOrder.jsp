<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" href= "../css/mypage.css">
<style>
.sellerStatTable{
	text-align: center;
	border-collapse: collapse;
	width: 90%;
	border-top: 2px solid #5f0080;
	border-bottom: 2px solid gray;
	width: 100%;
	frame: void;
	rules: rows;
	 
}
</style>


<div style="width : 90%; margin: 0 auto;">
	<!-- 판매상품 & 주문현황 Title -->
	<h2 align="center">판매상품 주문현황</h2>
	<div style="text-align: center;">판매상품 주문현황입니다.</div>
	<br><br>
	<table class="sellerStatTable" cellpadding="15" frame="hsides" rules="rows">
		<tr>
			<th>주문번호</th>	
			<th>주문상태</th>
			<th>총금액</th>		
			<th>결제일</th>
		</tr>
		<c:if test="${list!=null}">
		<c:forEach var="orderSellerHomeDTO" items="${list}"> 
		<tr>
			<td>${orderSellerHomeDTO.order_id}</td>
			<td>${orderSellerHomeDTO.order_state}</td>
			<td>${orderSellerHomeDTO.order_total_price}</td>
			<td><fmt:formatDate pattern="yyyy년 MM월 dd일" value="${orderSellerHomeDTO.order_date}"/> </td>
		</tr>
		</c:forEach>
		</c:if>
	</table>
</div>	
<p style="clear: both; height: 20px;"></p>
