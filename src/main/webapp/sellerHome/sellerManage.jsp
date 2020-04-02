<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style type="text/css">
.sellerAllTable{
	text-align: center;
	border-collapse: collapse;
	width: 100%;
	border-top: 2px solid #5f0080;
	border-bottom: 2px solid gray;
	width: 100%;
	frame: void;
	rules: rows;
}
.mainImageList_image{
	width: 300px;
	height: 300px;
	cursor: pointer;
}
</style>


<div style="width : 90%; margin: 0 auto;">
	<h2 align="center">품절상품 관리하기</h2>
	<div style="text-align: center;">재입고 된 상품을 등록해 주세요.</div>
	<br><br>
	<c:set var="i" value="0" /> 
	<c:set var="j" value="3" /> 
	<table align="center" width="100%" cellpadding="40">
		<c:forEach var="itemDTO" items="${soldoutList}">
		<c:if test="${i%j == 0}"><tr></c:if> 
			<td align="center">
				<img class="mainImageList_image" src="../storage/${itemDTO.item_main_image}" onclick="itemUpdate(${itemDTO.item_id})"><br><br>
				<strong>${itemDTO.item_name}</strong><br>
				<fmt:formatNumber pattern="#,###원">${itemDTO.item_price}</fmt:formatNumber> 
			</td> 
		<c:if test="${i%j == j-1 }"></tr></c:if> 
		<c:set var="i" value="${i+1 }" />
		</c:forEach> 
	</table>
</div>

<!-- script -->
<script type="text/javascript">
function itemUpdate(seq){
	location.href='/bitFarm/sellerHome/sellerItemUpdateForm?seq='+seq;
}
</script>
