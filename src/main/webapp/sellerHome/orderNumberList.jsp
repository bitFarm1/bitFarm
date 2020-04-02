<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
.orderNumberListTable{
	text-align: center;
	border-collapse: collapse;
	width: 90%;
	border-top: 2px solid #5f0080;
	border-bottom: 2px solid gray;
	width: 100%;
	frame: void;
	rules: rows;
}
.orderNumberListTable th{
	background: #F7F5F8;
}
</style>

<br>
<div style="width : 80%; margin: 0 auto; text-align: center;">
<h3 align="center">상세 주문내역</h3>
<c:forEach var="orderSellerHomeDTO" items="${orderNumberList}">
<table class="orderNumberListTable" cellpadding="20">
		<tr>
			<th>주문번호</th>
			<td>${orderSellerHomeDTO.order_id}</td>
		</tr>
		<tr>
			<th>주문자</th>
			<td>${orderSellerHomeDTO.order_user_id}</td>
		</tr>
		<tr>
			<th>상품명</th>
			<td>${orderSellerHomeDTO.order_seller_item}</td>
		</tr>
		<tr>
			<th>이미지</th>
			<td><img src="../storage/${orderSellerHomeDTO.order_item_main_image}" width="200"></td>
		</tr>
		<tr>
			<th>가격</th>
			<td>${orderSellerHomeDTO.order_item_price}</td>
		</tr>
		<tr>
			<th>수량</th>
			<td>${orderSellerHomeDTO.order_item_qty}</td>
		</tr>
		<tr>
			<th>주문상태</th>
			<td>${orderSellerHomeDTO.order_state}</td>
		</tr>
		<tr>
			<th>총 가격</th>
			<td>${orderSellerHomeDTO.order_total_price}</td>
		</tr>
		<tr>
			<th>결제방식</th>
			<td>${orderSellerHomeDTO.order_pay}</td>
		</tr>
		<tr>
			<th>결제일</th>
			<td><fmt:formatDate pattern="yyyy년 MM월 dd일 HH시 mm분" value="${orderSellerHomeDTO.order_date}"/></td>
		</tr>
</table>
<br>
</c:forEach>
</div>