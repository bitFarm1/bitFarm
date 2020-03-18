<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
th{
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
<form name="reviewWriteForm" method="post" enctype="multipart/form-data" action="">
	<table align="center" width="80%" height="600">
		<tr height="10%">
			<th width="30%">제목</th>
			<td><input type="text" class="reviewSubject" placeholder="제목을 입력하세요" size="100%"></td>
		</tr>
		<tr height="10%">
			<th>작성자</th>
			<td>작성자 이름</td>
		</tr>
		<tr height="10%">
			<th>별점</th>
			<td>★★★★☆</td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea placeholder="내용을 입력하세요" cols="100%" rows="20" style="font-size: 15px;"></textarea></td>
		</tr>
		<tr height="10%">
			<th>파일 첨부</th>
			<td><input id="reviewFile" type="file" name="reviewFile" size="50"></td>
		</tr> 
	</table>
</form>
<p style="clear: both; height: 7px;"></p>
<div class="reviewDiv">
	<input type="button" class="reviewBtn" value="후기 등록하기">
</div>
<p style="clear: both; height: 7px;"></p>