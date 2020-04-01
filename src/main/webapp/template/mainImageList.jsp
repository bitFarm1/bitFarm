<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style type="text/css">
.mainImageList_image{
	width: 300px;
	height: 300px;
	cursor: pointer;
}
.bestItemSubject{
	width: 80%;
	margin: 0 auto;
	text-align: left;
}
</style>

<p style="clear: both; height: 50px;"></p>
<div class="bestItemSubject">
	<h3><strong>&emsp;B&nbsp;E&nbsp;S&nbsp;T&emsp;I&nbsp;T&nbsp;E&nbsp;M</strong></h3>
	<font style="color: grey;">&emsp;이번주의 인기상품을 한곳에서 만나보세요!</font>
</div>
<p style="clear: both; height: 10px;"></p>

<div class="bestItemSubject">
<c:set var="i" value="0" /> 
<c:set var="j" value="4" /> 
<table align="center" width="90%" cellpadding="40">
	<c:forEach var="itemDTO" items="${bestList}">
	<c:if test="${i%j == 0 }"><tr></c:if> 
		<td align="center">
			<img class="mainImageList_image" src="../storage/${itemDTO.item_main_image}" onclick="itemClick(${itemDTO.order_item_id})"><br><br>
			<strong>${itemDTO.item_name}</strong><br>
			<fmt:formatNumber pattern="#,###원">${itemDTO.item_price}</fmt:formatNumber> 
		</td> 
	<c:if test="${i%j == j-1 }"></tr></c:if> 
	<c:set var="i" value="${i+1 }" />
	</c:forEach> 
</table>
</div>

<p style="clear: both; height: 50px;"></p>
<div class="bestItemSubject">
	<h3><strong>&emsp;N&nbsp;E&nbsp;W &emsp; I&nbsp;T&nbsp;E&nbsp;M</strong></h3>
	<font style="color: grey;">&emsp;이번주의 신상품을 한곳에서 만나보세요!</font>
</div>
<p style="clear: both; height: 10px;"></p>

<div class="bestItemSubject">
<c:set var="i" value="0" /> 
<c:set var="j" value="4" /> 
<table align="center" width="90%" cellpadding="40">
	<c:forEach var="itemDTO1" items="${newList}">
	<c:if test="${i%j == 0 }"><tr></c:if> 
		<td align="center">
			<img class="mainImageList_image" src="../storage/${itemDTO1.item_main_image}" onclick="itemClick(${itemDTO1.item_id})"><br><br>
			<strong>${itemDTO1.item_name}</strong><br>
			<fmt:formatNumber pattern="#,###원">${itemDTO1.item_price}</fmt:formatNumber> 
		</td> 
	<c:if test="${i%j == j-1 }"></tr></c:if> 
	<c:set var="i" value="${i+1 }" />
	</c:forEach> 
</table>
</div>

<p style="clear: both; height: 5px;"></p>

<script type="text/javascript">
function itemClick(seq){
	location.href='/bitFarm/item/getItemView?seq='+seq;
}
</script>