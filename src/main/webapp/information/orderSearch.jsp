<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<p>
<table>
<tr><td style="font-weight: bold;">
주문번호 : <select id="orderNumList" style="height: 30px; width: 200px;">  
		<option value = "">선택 안함</option>    
	<c:forEach var="purchase" items="${list }">  
			<option name = "${purchase }" value = "${purchase }">${purchase }</option>	 
	</c:forEach> 
</select>   
 
<input type="button" id="oderSearchBtn" value="확인" style="height: 30px;">    
</td></tr>
</table>

<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$('#oderSearchBtn').click(function(){ 
	opener.document.forms[0].infoQnA_orderNum.value = $('#orderNumList option:selected').val();
	window.close(); 
});
</script>
