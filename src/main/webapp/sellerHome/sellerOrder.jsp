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
	<!-- �ǸŻ�ǰ & �ֹ���Ȳ Title -->
	<h2 align="center">�ǸŻ�ǰ �ֹ���Ȳ</h2>
	<div style="text-align: center;">�ǸŻ�ǰ �ֹ���Ȳ�Դϴ�.</div>
	<br><br>
	<table class="sellerStatTable" cellpadding="15" frame="hsides" rules="rows">
		<tr>
			<th>�ֹ���ȣ</th>	
			<th>�ֹ�����</th>
			<th>�ѱݾ�</th>		
			<th>������</th>
		</tr>
		<c:if test="${list!=null}">
		<c:forEach var="orderSellerHomeDTO" items="${list}"> 
		<tr>
			<td>${orderSellerHomeDTO.order_id}</td>
			<td>${orderSellerHomeDTO.order_state}</td>
			<td>${orderSellerHomeDTO.order_total_price}</td>
			<td><fmt:formatDate pattern="yyyy�� MM�� dd��" value="${orderSellerHomeDTO.order_date}"/> </td>
		</tr>
		</c:forEach>
		</c:if>
	</table>
</div>	
<p style="clear: both; height: 20px;"></p>
