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
a.info {color:black; text-decoration: none; font-size: 11pt;}  
	a.info:link {color: black; text-decoration: none;}
	a.info:visited {color: black; text-decoration: none;}
	a.info:hover {color: #5f0080; text-decoration: none; font-weight: bolder;} 
	a.info:active {color: black; text-decoration: none;} 
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
			<td style="text-align: left"><a class="info" href="/bitFarm/sellerHome/sellerQnAView.do">배송문의합니다.</a></td>
			<td align="center">2020-03-20</td>
		</tr>		
		<tr>
			<td align="center">2</td>
			<td style="text-align: left"><a class="info" href="/bitFarm/sellerHome/sellerQnAView.do">포도즙은 안파십니까.</a></td>
			<td align="center">2020-03-18</td>
		</tr>
		<tr>
			<td align="center">3</td>
			<td style="text-align: left"><a class="info" href="/bitFarm/sellerHome/sellerQnAView.do">포도 알이 너무 귀여워요.</a></td>
			<td align="center">2020-03-13</td>
		</tr>
		<tr>
			<td align="center">4</td>
			<td style="text-align: left"><a class="info" href="/bitFarm/sellerHome/sellerQnAView.do">포도 소량으로 판매문의</a></td>
			<td align="center">2020-03-10</td>
		</tr>
		<tr>
			<td align="center">5</td>
			<td style="text-align: left"><a class="info" href="/bitFarm/sellerHome/sellerQnAView.do">포도 알이 다 터져서 옴</a></td>
			<td align="center">2020-03-05</td>
		</tr>
		<tr>
			<td align="center">6</td>
			<td style="text-align: left"><a class="info" href="/bitFarm/sellerHome/sellerQnAView.do">딸기쨈도 만들어주세요!</a></td>
			<td align="center">2020-02-29</td>
		</tr>
	</table>
		<div style="height:10px;"> </div>		
	<div style="width: 100%; text-align: center;">
			<a class="info">1</a> 
			<a class="info">2</a>
			<a class="info">3</a>
	</div>
</div>
<p style="clear: both; height: 30px;"></p>