<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
.sellerQnATable{
text-align: center;
	border-collapse: collapse;
	margin
	width: 100%;
	border-top: 2px solid #5f0080;
	border-bottom: 2px solid gray;
	width: 100%;
	frame: void;
	rules: rows;
}
</style>
<jsp:include page="sellerLeft.jsp" />
<div style="width: 68%; text-align: center; padding: 50px 0px 50px 420px;">

	<!-- 문의게시판 Title -->
	<h2 align="center">문의게시판</h2>
	<div style="text-align: center;">문의글에 답변해주세요.</div>
	<br><br><br><br>
	
	<h3 align="left">문의게시판</h3>
	<table class="sellerQnATable" cellpadding="15" frame="hsides" rules="rows">
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성일</th>
		</tr>
		<!-- list로 돌리기 -->
		<tr>
			<td align="center">1</td>
			<td align="center">배송문의합니다.</td>
			<td align="center">2020-03-20</td>
		</tr>
		<tr>
			<td align="center">2</td>
			<td align="center">포도즙은 안파시나요</td>
			<td align="center">2020-03-18</td>
		</tr>
		<tr>
			<td align="center">3</td>
			<td align="center">포도알갱이가 너무 귀여워요</td>
			<td align="center">2020-03-13</td>
		</tr>
		<tr>
			<td align="center">4</td>
			<td align="center">딸기 농사도 지어주세요</td>
			<td align="center">2020-03-10</td>
		</tr>
	</table>
</div>
<p style="clear: both; height: 30px;"></p>