<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href= "../css/mypage.css">

<div id = "mypagePurchaseDetail">
<div id = "purchaseDetailListA">주문 내역 상세</div>
<div>
<div id = "purchaseDetailDiv">주문번호 ${orderDTO.order_id}</div>
<div id = "purchaseDetailBlankDiv" style = "width: 60%; height: 10px; float: left;"></div><!-- css에서 삭제후 수정  -->
<div style="float: left; font-size: 10pt; color: gray;">배송 또는 상품에 문제가 있나요?</div>
<div style="width: 10px; height: 10px; float:left;"></div>
<div style="float: left; margin-top: -3px;"><a class = "purchaseDetailQnA" href = "/bitFarm/mypage/mypageInfoQnABoard?order_id=${orderDTO.order_id}">1:1 문의하기></a></div>

</div>
<c:if test="${imageList!=null}">

<table class = "purchaseDetailTable" frame="hsides" rules = "rows" cellpadding="10" >
<c:forEach var="orderImageDTO" items="${imageList}">
	<tr>
	
		<td width = "75%"><!-- width = "650" -> 75% -->
		<div style="width: 50px; height: 10px; float:left;"></div><!-- width: 50px -> 100px -->
		<div style="float:left;">
		<img src = "../storage/${orderImageDTO.order_item_main_image}" id = "purchaseDetailImg"
		style="cursor:pointer" onclick="itemClick(${orderImageDTO.order_item_id})"></div>
		<div style="width: 15px; height: 10px; float:left;"></div>
		<div style="float: left;">
		<dl>
			<dt style="font-size: 12pt; font-weight: bold; margin-bottom: 5px;"><a href = "#" class = "purchaseDetailItem">[${orderImageDTO.order_seller_name}] ${orderImageDTO.order_seller_item}</a></dt>
			<dd style="font-size: 10pt; float: left; font-weight: bold; margin-left: 0px; "><fmt:formatNumber pattern="#,###">${orderImageDTO.order_item_price}</fmt:formatNumber>원</dd>
			<dd style="font-size: 8pt; color: gray; margin-bottom: -10px; margin-top: 8px;">${orderImageDTO.order_item_qty}개 구매</dd>
		</dl>
		</div>
		</td>
		
		<td  style="color:#5f0080; font-weight: bold; ">${orderDTO.order_state}</td>
	
	</tr>
	</c:forEach>
</table>
<br><br>

</c:if>
<div style="width: 35%; height: 10px; float:left;"></div>

<div id = "purchaseDetailPayDiv">결제 정보</div>

<table class = "purchaseDetailPayTable" frame="hsides" rules = "rows" cellpadding="10" >
	<tr>
		<td width = "200">총주문금액</td>
		<td><fmt:formatNumber pattern="#,###">${orderDTO.order_before_price}</fmt:formatNumber>원</td>
	</tr>
	<tr>
		<td>쿠폰할인</td>
		<td>-<fmt:formatNumber pattern="#,###">${orderDTO.order_coupon}</fmt:formatNumber>원</td>
	</tr>
	<tr>
		<td>적립금 사용</td>
		<td>-<fmt:formatNumber pattern="#,###">${orderDTO.order_point}</fmt:formatNumber>원</td>
	</tr>
	<tr>
		<td>배송비</td>
		<td>+3,000원</td>
	</tr>
	<tr>
		<td>결제금액</td>
		<td><fmt:formatNumber pattern="#,###">${orderDTO.order_total_price}</fmt:formatNumber>원</td>
	</tr>
 	<tr>
		<td>결제방법</td>
		<td>${orderDTO.order_pay}</td>
	</tr>
</table>

<div id = "purchaseDetailOrderDiv">주문 정보</div>

<table class = "purchaseDetailOrderTable" frame="hsides" rules = "rows" cellpadding="10" >
	<tr>
		<td width = "200">주문 번호</td>
		<td>${orderDTO.order_id}</td>
	</tr>
	<tr>
		<td>주문자명</td>
		<td>${orderDTO.order_user_name}</td>
	</tr>
	<tr>
		<td>결제일시</td>
		<td><fmt:formatDate value="${orderDTO.order_date}" pattern="yyyy년MM월dd일 HH시mm분ss초"/></td>
	</tr>
	<tr>
		<td>주문 처리상태</td>
		<td>${orderDTO.order_state}</td>
	</tr>
</table>

<div id = "purchaseDetailDeliveryDiv">배송 정보</div>

<table class = "purchaseDetailDeliveryTable" frame="hsides" rules = "rows" cellpadding="10" >
	<tr>
		<td width = "200">받는 분</td>
		<td>${orderDTO.order_name}</td>
	</tr>
	<tr>
		<td>받는 분 핸드폰</td>
		<td>${orderDTO.order_phone}</td>
	</tr>
	
	<tr>
		<td>주소</td>
		<td>${orderDTO.order_addr1} ${orderDTO.order_addr2}</td>
	</tr>
	<tr>
		<td>배송 요청사항</td>
		<td>${orderDTO.order_ps}</td>
	</tr>
</table>
</div>
<script type="text/javascript">
function itemClick(seq){
	location.href='/bitFarm/item/getItemView?seq='+seq;
}
</script>

