<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
	.sellerQnAView{
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

	.wrap{
		width: 1300px;
		margin: 0 auto;
	
	} 
	
	.tdstyle{
	    width: 130px;
	    padding: 13px 0 13px 20px;
	    background-color: #F7F5F8;
	    
	    text-align: left;
	}
	
	table{
		 border-collapse: collapse;
		 border-top: 1px solid #e8e8e8;
	
	}
	
	 th, td {
   		 border-bottom: 1px solid #dcdcdc;
   		 
 	 }
 	 
 	 .layoutB{ 
		width: 150px;
		height: 40px;
		background-color: #5f0080;
		border: #5f0080;
		color: white;
		border-radius: 5px;
		font-family: 'Noto Sans';
		font-weight: bold;
		cursor: pointer;
	} 	
</style>
<jsp:include page="sellerLeft.jsp" />
<div style="width: 68%; text-align: center; padding: 50px 0px 50px 420px;">

<!-- sellerQnAView Title -->
	<h2 align="center">문의게시판</h2>
	<div style="text-align: center;">문의게시판 답글쓰기.</div>
	<br><br><br><br>
 
<div class="wrap">
	
		<h3 align="left">문의게시판<span style="font-size: 9pt; font-weight: normal;">&emsp;고객들의 문의사항입니다.</span></h3> 
		<table width="100%" > 
			<tr><td style="border-top: 2px solid #5f0080;" > 
				<table align="center" style="padding: 0; width:100%;">
					<tr>  
						<td class="tdstyle">제목</td>  
						<td colspan="3" style="border-top: 1px solid #e8e8e8;">포도쨈 문의 드립니다</td> 
					</tr>
					 
					<tr>
						<td class="tdstyle">작성자</td>
						<td colspan="3">BITFARM</td> 
					</tr>
					
					<tr>
						<td class="tdstyle">작성일</td>
						<td >2020-03-10</td> 
						<td class="tdstyle">조회수</td>
						<td width="50%">200</td>
					</tr>	
				</table>
			</td></tr> 
			<tr>
				<td height="30px" style="border-bottom: 0px"></td>
			</tr>
			<tr><td align="left" style="border-bottom: 0px">
				포도쨈 짱맛있어요<br>
				계속계속 팔아주세요♡<br>
				포도쨈 짱맛있어요<br>
				계속계속 팔아주세요♡<br>
				포도쨈 짱맛있어요<br>
				계속계속 팔아주세요♡<br>
			</td></tr>
			<tr> 
				<td height="30px"></td>
			</tr>
			<tr><td align="center" style="border-bottom: 2px solid #5f0080; border-top: 2px solid #5f0080;">
				<input class="layoutB" type="button" value="답변하기" onClick="location.href='sellerQnaRe.do'">&emsp;
				<input class="layoutB" type="button" value="목록보기" onClick="location.href='sellerQnABoard.do'">
			</td ></tr>
			
			
		</table>
	
</div>  