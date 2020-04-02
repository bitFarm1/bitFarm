<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href= "../css/mypage.css">
<div id = "mypagePurchaseList" style="margin-bottom: 110px;">
<div id = "purchaseList">주문내역</div>
<div style="width:80%; height: 10px; float: left;"></div>
<form id = "purchaseListForm" name = "purchaseListForm">
<input type="hidden" name="pg" id="pg" value="${pg }">

<p style="clear: both; height: 5px;"></p>

<c:if test="${list!=null}">
<c:forEach var="orderListDTO" items="${list}">
<table class="purchaseListTable" cellpadding="10">

	<tr>
		<th colspan="3" align="left">
			<a href = "mypagePurchaseDetail?order_id=${orderListDTO.order_id}" class = "purchaseListDetailItemA">[주문번호] ${orderListDTO.order_id}</a>
		</th>
	</tr>
	<tr> 
		<td width = "80px"><img src = "../storage/${orderListDTO.order_item_main_image}" id = "purchaseListImg" 
		style="cursor:pointer" onclick="itemClick(${orderListDTO.order_item_id})">
		</td> 
		<td>
			<div style="height: 75px; width: 300px; float: left; margin-top: 5px;">
				<dl style="margin: 0px; padding: 0px;">
					<dt style="float: left; font-size: 10pt;">구매일자</dt>
					<dd style="float: left; font-weight: bold; font-size: 10pt;"><fmt:formatDate type = "date" value="${orderListDTO.order_date}" pattern="yyyy년MM월dd일 HH시 mm분"/></dd>
				</dl>
				<br>
				<dl style="margin: 0px; padding: 0px;">
					<dt style="float: left; font-size: 10pt;">결제금액</dt>
					<dd style="float: left; font-weight: bold; font-size: 10pt;"><fmt:formatNumber pattern="#,###">${orderListDTO.order_total_price}</fmt:formatNumber>원</dd>
				</dl>
				<br>
				<dl style="margin: 0px; padding: 0px;">
					<dt style="float: left; font-size: 10pt;">주문상태</dt>
					<dd style="float: left; font-weight: bold; font-size: 10pt;">${orderListDTO.order_state}</dd>
				</dl>	
			</div>
			</td>
		<td width="200px" align="center">
			<input class = "purchaseListQnABtn" type="button" value="1:1문의" onclick="location.href='/bitFarm/mypage/mypageInfoQnABoard?order_id='+${orderListDTO.order_id}" >
		</td>
	</tr>
</table>
<br><br>
</c:forEach>
</c:if>
<div id="orderListPagingDiv" style="text-align: center;">${orderListPaging.pagingHTML}</div>
</form>
</div>

<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
function itemClick(seq){
	location.href='/bitFarm/item/getItemView?seq='+seq;
}
function orderListPaging(pg){
	location.href="mypagePurchaseList?pg="+pg;
} 

</script>

