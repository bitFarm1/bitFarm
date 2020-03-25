<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<h3>나의 후기 모아보기</h3>
<table class="myReviewListTable"  id = "myReviewListTable" frame="hsides" rules="rows" cellpadding="10">
<thead>
	<tr>
		<th>글번호</th>
		<th>제목</th>
		<th>작성일</th>
	</tr>
</thead>
<tbody>
<c:forEach var="myReviewDTO" items="${list }">
<c:set var = "seq" value = "${myReviewDTO.review_id }"/>
<c:set var = "review_subject" value = "${myReviewDTO.review_subject }"/>
<c:set var = "review_content" value = "${myReviewDTO.review_content }"/>
<c:set var = "review_image" value = "${myReviewDTO.review_image }"/>
<c:set var = "review_date" value = "${myReviewDTO.review_date }"/>
<tr>
	<td align = "center">${seq }</td>
	<td id = "${seq }" class = "reviewDetail" align = "center" style = "cursor: pointer;">
	${review_subject }</td>
	<td align = "center">
	<fmt:formatDate value="${review_date }" pattern="yyyy/MM/dd"/>
	</td>
</tr>
<tr name = "trtr"><td colspan = "3"><div id = "${seq }Div" style = "display:none;">${review_content }</div></td></tr>
</c:forEach>
</tbody>
</table>
<p style="clear: both; height: 10px;"></p>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$(document).on("click",".reviewDetail",function(){
		var seq = $(this).prev().text();
		var seqDiv = $(this).attr('id');
		if(seq == seqDiv){
			alert(seq+','+seqDiv);
			if(a.style.display=='none'){
				alert('none');
			}else{
				alert('block');
			}
		}
	});//click
	
});//ready

</script>