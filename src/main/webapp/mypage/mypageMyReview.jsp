<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h3>나의 후기 모아보기</h3>
<table class="myReviewListTable" id="myReviewListTable" frame="hsides" rules="rows" cellpadding="10">
	<tr>
		<th>글번호</th>
		<th>상품명</th>
		<th>제목</th>
		<th>작성일</th>
	</tr>
	<c:if test="${list!=null }">
	<c:forEach var="myReviewListDTO" items="${list}">
	<c:set var="seq" value="${myReviewListDTO.review_id}"/>
	<tr>
		<td align="center">${myReviewListDTO.review_id} </td>
		<td align="center">${myReviewListDTO.item_name} </td>
		<td align="center" id="${seq}" style="cursor: pointer;">${myReviewListDTO.review_subject}</td>
		<td align="center">${myReviewListDTO.review_date}</td>
	</tr>
	<tr id="hidden_${seq}" style="display: none;">
	  <c:if test="${myReviewListDTO.review_image!='0'}">
		<td align="center" colspan="2">
			<img src="../storage/${myReviewListDTO.review_image}" width="150" height="150" style="cursor: pointer;"
				onclick="location.href='../storage/${myReviewListDTO.review_image}'">
		</td>
		<td align="center" colspan="2">${myReviewListDTO.review_content}</td>
	  </c:if>
	  <c:if test="${myReviewListDTO.review_image=='0'}">
		<td align="center" colspan="4">${myReviewListDTO.review_content}</td>
	  </c:if>
	</tr>
	<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript">
	var ishidden = false;
	
	$('#${seq}').click(function(){
		ishidden = !ishidden;   
		if(ishidden){
			$('#hidden_${seq}').css("display", "table-row");
		}else{  
			$('#hidden_${seq}').css("display", "none"); 
		}
	});
	</script>
	
	</c:forEach>
	</c:if>
</table>
<p style="clear: both; height: 10px;"></p>

			