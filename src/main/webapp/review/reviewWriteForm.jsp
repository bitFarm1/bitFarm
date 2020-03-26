<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
#reviewWriteTable th{
	background-color: #F7F5F8;
}
.reviewDiv{
	width: 60%;
	text-align: center;
	margin: 0 auto;
}
.reviewBtn{
	width: 400pt;
	height: 50pt;
	color: #ffffff;
	border: 0;
	outline: 0;
	font-size: 30px;
	background-color: #5f0080;
	border-radius: 10px; 
	font-weight: bold;
	cursor: pointer;
}
#review_subject{
	height: 30px; 
	outline: none;
	border-radius: 3px; 
	border: 1px solid #ccc; 
}
#reviewContent{
	font-size: 15px;
	outline: none;
	border-radius: 3px; 
	border: 1px solid #ccc; 
}
</style>

<div class="reviewDiv">
	<h3>리뷰 작성</h3>
	고객님의 소중한 리뷰를 작성해주세요.
</div>
<p style="clear: both; height: 7px;"></p>
<div style="width: 60%; margin: 0 auto;">
<form name="reviewWriteForm" method="post" enctype="multipart/form-data" action="/bitFarm/review/reviewWrite">
	<table id="reviewWriteTable" cellspacing="0" align="center" width="100%" height="600">
		<tr height="10%">
			<th width="30%">제목</th>
			<td>
				&emsp;<input type="text" id="review_subject" name="review_subject" placeholder="제목을 입력하세요" size="100%">
				<div id="reviewSubjectDiv"></div>
				<input type="hidden" name="item_id" value="${itemDTO.item_id }">
			</td>
		</tr>
		<tr height="10%">
			<th>작성자 아이디</th>
			<td>
				&emsp;${memberId}
				<input type="hidden" name="review_user_id" value="${memberId}">
			</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>
				&emsp;<textarea id="reviewContent" name="review_content" placeholder="내용을 입력하세요" cols="100%" rows="20"></textarea>
				<div id="reviewContentDiv"></div>
			</td>
		</tr>
		<tr height="10%">
			<th>파일 첨부</th>
			<td>
				&emsp;<input id="reviewFile" type="file" name="img" size="50">
			</td>
		</tr> 
	</table>
</form>
</div>
<p style="clear: both; height: 7px;"></p>
<div class="reviewDiv">
	<input type="button" class="reviewBtn" value="후기 등록하기">
</div>
<p style="clear: both; height: 7px;"></p>

<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$('.reviewBtn').click(function(){
	$('#reviewSubjectDiv').empty();
	$('#reviewContentDiv').empty();
	
	if($('input[name=review_subject]').val()==''){
		$('#reviewSubjectDiv').text('제목을 입력하세요');
		$('#reviewSubjectDiv').css('color', '#5f0080');
		$('#reviewSubjectDiv').css('font-size', '12pt');
		$('#reviewSubjectDiv').css('font-weight', 'bold');
	}else if($('#reviewContent').val()==''){
		$('#reviewContentDiv').text('내용을 입력하세요');
		$('#reviewContentDiv').css('color', '#5f0080');
		$('#reviewContentDiv').css('font-size', '12pt');
		$('#reviewContentDiv').css('font-weight', 'bold');
	}else{
		$('form[name=reviewWriteForm]').submit();
		alert('후기를 작성하였습니다.');
		location.href = "/bitFarm/item/getItemView?seq="+${itemDTO.item_id};
	}
});
</script>