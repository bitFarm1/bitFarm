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
<c:set var = "review_id" value = "${myReviewDTO.review_id }"/>
<c:set var = "review_subject" value = "${myReviewDTO.review_subject }"/>
<c:set var = "review_content" value = "${myReviewDTO.review_content }"/>
<c:set var = "review_image" value = "${myReviewDTO.review_image }"/>
<c:set var = "review_date" value = "${myReviewDTO.review_date }"/>
<tr>
	<td align = "center">${review_id}</td>
	<td id = "reviewBtn" align = "center" style = "cursor: pointer;">${review_subject }</td>
	<td align = "center">
	<fmt:formatDate value="${review_date }" pattern="yyyy.MM.dd"/>
	</td>
</tr>
</c:forEach>
</tbody>

</table>
<p style="clear: both; height: 10px;"></p>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	$.ajax({
		type: 'post',
		url: '/bitFarm/mypage/getMyReviewList',
		dataType:'json',
		success : function(data){
		//	alert(JSON.stringify(data));
			 $.each(data.list, function(index, items){
				$('<tr/>').append($('<td/>',{ align : 'center', text: items.review_id }))
						  .append($('<td/>',{ align : 'center', text: items.review_subject , style : 'cursor: pointer;', class : items.review_id+""  }))
						  .append($('<td/>',{ align : 'center', text: items.review_date }))
						  .appendTo($('#myReviewListTable'));
				
				//눌러서 내용 상세보기
				$('.'+items.review_id).click(function(){
						
				}); 
			 
			 });//each
		
		}//success
		
	});
});


$('#reviewBtn'}).click(function(){
	alert('짠');
}); 

</script>