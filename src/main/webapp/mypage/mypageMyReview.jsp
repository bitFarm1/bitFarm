<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<c:forEach var="myReviewDTO"





</tbody>
	<!-- list로 돌리기 -->
<!-- 	<tr>
		<td align="center">1<div id = "testDiv1" style="display:none; border:solid red;"></div></td>
		<td align="center" style="cursor:pointer;" id = "testTd">상품 질 좋은가요<div id = "testDiv" style="display:none; border:solid;">맛있는 딸기가 먹고싶어요</div></td>
		<td align="center">2020-03-20<div id = "testDiv2" style="display:none; border:solid blue;"></div></td> 
		<td align="center">1</td>
		<td align="center" style="cursor:pointer;" id = "testTd">상품 질 좋은가요</td>
		<td align="center">2020-03-20</td>
	</tr>-->
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


</script>