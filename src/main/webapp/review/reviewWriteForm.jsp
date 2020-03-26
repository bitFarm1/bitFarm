<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
#reviewWriteTable th{
	background-color: #F7F5F8;
}
.reviewDiv{
	width: 80%;
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
.reviewSubject{
	font-size: 15px;
	height: 40px;
}
</style>

<div class="reviewDiv">
	<h3>리뷰 작성</h3>
	고객님의 소중한 리뷰를 작성해주세요.
</div>
<p style="clear: both; height: 7px;"></p>
<div style="width: 60%; margin: 0 auto;">
<form name="reviewWriteForm" method="post" enctype="multipart/form-data" action="">
	<table id="reviewWriteTable" cellspacing="0" align="center" width="100%" height="600">
		<tr height="10%">
			<th width="30%">제목</th>
			<td>
				&emsp;${item_name}
				<input type="hidden" name="review_subject" value="${item_name}">
			</td>
		</tr>
		<tr height="10%">
			<th>작성자 아이디</th>
			<td>
				&emsp;${memberId}
			</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>
				&emsp;<textarea id="reviewContent" placeholder="내용을 입력하세요" cols="100%" rows="20" style="font-size: 15px;"></textarea>
				<div id="reviewContentDiv"></div>
			</td>
		</tr>
		<tr height="10%">
			<th>파일 첨부</th>
			<td>
				&emsp;<input id="reviewFile" type="file" name="reviewFile" size="50">
				<div id="reviewFileDiv"></div>
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
	$('#reviewContentDiv').empty();
	$('#reviewFileDiv').empty();
	
	if($('#reviewContent').val()==''){
		$('#reviewContentDiv').text('내용을 입력하세요');
		$('#reviewContentDiv').css('color', 'red');
		$('#reviewContentDiv').css('font-size', '8pt');
		//$('#reviewContentDiv').css('color', 'red');
	}
});
</script>