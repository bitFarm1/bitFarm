<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style type="text/css">
.imageList_image{
	width: 300px;
	height: 300px;
	cursor: pointer;
}
.imageListDiv{
	width: 80%;
	margin: 0 auto;
	text-align: left;
}
</style>

<p style="clear: both; height: 5px;"></p>
<div class="imageListDiv">
<c:set var="i" value="0" /> 
<c:set var="j" value="4" />
<strong>&emsp;&emsp;&emsp;&emsp;"${searchT}"</strong><font style="color:grey;">에 대한 검색 결과입니다.</font><br>
<c:if test="${list!=null}">
<table align="center" width="90%" cellpadding="40">
	<c:forEach var="itemDTO" items="${list}">
	<c:if test="${i%j == 0 }"><tr></c:if> 
		<td align="center">
			<img class="imageList_image" src="../storage/${itemDTO.item_main_image}" onclick="itemClick(${itemDTO.item_id})"><br><br>
			<strong>${itemDTO.item_name}</strong><br>
			<fmt:formatNumber pattern="#,###원">${itemDTO.item_price}</fmt:formatNumber> 
		</td> 
	<c:if test="${i%j == j-1 }"></tr></c:if> 
	<c:set var="i" value="${i+1 }" />
	</c:forEach> 
</table>
</c:if>
</div>
<p style="clear: both; height: 5px;"></p>

<!-- script -->
<script type="text/javascript">
function itemClick(seq){
	location.href='/bitFarm/item/getItemView?seq='+seq;
}
</script>
