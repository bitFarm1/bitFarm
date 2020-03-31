<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href= "../css/mypage.css">
<div id = "mypagePurchaseList" style="margin-bottom: 110px;">
<div id = "purchaseList">주문내역</div>
<div id = "purchaseListA">지난 3년간의 주문 내역 조회가 가능합니다 </div>
<div style="width:80%; height: 10px; float: left;"></div><!-- width : 570px -> 85%  -->
<div>
	<select name = "purchaseYear" id = "purchaseYear">
		<option value  = "all">전체기간</option>
		<option value = "2020">2020</option>
		<option value = "2019">2019</option>
		<option value = "2018">2018</option>
	</select>	
</div>

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
			style="cursor:pointer" onclick="location.href='#'">
		</td> 
		<td>
			<div style="height: 75px; width: 300px; float: left; margin-top: 5px;">
				<dl style="margin: 0px; padding: 0px;">
					<dt style="float: left; font-size: 10pt;">구매일자</dt>
					<dd style="float: left; font-weight: bold; font-size: 10pt;"><fmt:formatDate value="${orderListDTO.order_date}" pattern="yyyy년MM월dd일 HH시mm분"/></dd>
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
			<!-- <div id = "purchaseListQnABtnDiv"><a class = "purchaseListQnA" href="#">1:1 문의</a></div> -->
			<input class = "purchaseListQnABtn" type="button" value="1:1문의" onclick="javascript:location.href='/bitFarm/information/infoQnABoard?order_id ='+${orderListDTO.order_user_id}" >
		</td>
	</tr>
</table>
<br><br>
</c:forEach>
</c:if>
</div>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">


</script>

