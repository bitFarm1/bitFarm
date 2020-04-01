<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href= "../css/item.css">

<div class="itemReviewDiv">
	<table class="itemQnaListTable1" frame="hsides" rules="rows" cellpadding="10">
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>
		<!-- list -->
	<c:if test="${reviewList!=null}">
	<c:forEach var="reviewDTO" items="${reviewList}">
	<c:set var="seq" value="${reviewDTO.review_id}"/>
		<tr>
			<td align="center" width="15%">${reviewDTO.review_id}</td>
			<td align="center" width="35%" id="${seq}" style="cursor: pointer;">${reviewDTO.review_subject }</td>
			<td align="center" width="25%">${reviewDTO.review_user_id }</td>
			<td align="center" width="25%"><fmt:formatDate pattern="yyyy년 MM월 dd일" value="${reviewDTO.review_date}"/></td>
		</tr>
		<tr id="hidden_${seq}" style="display: none; background: #f8f8f8;">
		  <c:if test="${reviewDTO.review_image!='0'}">
			<td colspan="2">
				<img src="../storage/${reviewDTO.review_image}" width="150" height="150" style="cursor: pointer;"
					onclick="location.href='../storage/${reviewDTO.review_image}'">
			</td>
			<td colspan="2">${reviewDTO.review_content}</td>
		  </c:if>
		  <c:if test="${reviewDTO.review_image=='0'}">
			<td colspan="4">${reviewDTO.review_content}</td>
		  </c:if>
		</tr>
		
		<!-- script -->
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

</div>
