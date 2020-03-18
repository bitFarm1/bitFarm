<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
	table.QnAtable{
		width: 860px;
	}
	.join {
	    width: 270px;
	    height: 54px;
	    border: 0 none;
	    border-radius: 3px;
	    background-color: #5f0080;
	    font-size: 16px;
	    color: #fff; 
	    line-height: 44px;
	    font-weight: bold;
	}
 	.title{  
 		width: 100px;
 		text-align: left;
 		font-size: 10pt;
 		font-weight: bold;
 		background-color: #F7F5F8; 
 	}
 	.layoutT{
		width: 350px;
	    height: 30px;
	    padding: 0 9px;
	    border: 1px solid #ccc;
	    font-size: 14px; 
	    color: #333;
	    line-height: 20px;
	    background: #fff;
	    outline: none;   
	}  
	.layoutB{ 
		width: 150px;
		height: 30px;
		background-color: #5f0080;
		border: #5f0080;
		color: white;
		border-radius: 5px;
		font-family: 'Noto Sans';
		font-weight: bold;
	} 
	.select{
		width: 150px;
	    height: 30px;
	    padding: 0 9px;
	    border: 1px solid #ccc;
	    font-size: 14px; 
	    color: #333;
	    line-height: 20px;
	    background: #fff;
	    outline: none;   
	}  
</style>
<div style="height:50px;">&nbsp;</div>
<jsp:include page="infoLeft.jsp" />
<div style="width:68%; float: left;"> 
<h2>&emsp;1:1 문의</h2> 
<form name="infoQnABoardForm" method="post" enctype="multipart/form-data" action="">
<table class="QnAtable" cellpadding="5px"> 
	<tr>
		<td class="title">&emsp;제목</td>
		<td width="650" style="text-align: left;">&emsp;<input class="layoutT" type="text" name="subject">&emsp;
						<select name="itemcd" label="질문유형" class="select">
                            <option value="">선택해주세요.</option>
                            <option value="01">배송지연/불만</option>
                            <option value="02">반품문의</option> 
                            <option value="03">A/S문의</option>
                            <option value="06">환불문의</option>
                            <option value="07">주문결제문의</option> 
                            <option value="08">회원정보문의</option>
                            <option value="04">취소문의</option>
                            <option value="05">교환문의</option>
                            <option value="09">상품정보문의</option>
                            <option value="10">기타문의</option>
                        </select>
		</td>
	</tr>
	<tr>
		<td class="title">&emsp;주문번호</td>
		<td style="text-align: left;">&emsp;<input class="layoutT" type="text" name="subject">&emsp;
			<input class="layoutB" type="button" value="주문조회"></td>
	</tr>	
	<tr>
		<td class="title">&emsp;이메일</td>
		<td style="text-align: left;">&emsp;<input class="layoutT" type="text" name="subject"></td>
	</tr>	
	<tr>
		<td class="title">&emsp;핸드폰</td>
		<td style="text-align: left;">&emsp;<input class="layoutT" type="text" name="subject"></td>
	</tr> 
	<tr>
		<td class="title">&emsp;내용</td> 
		<td><p><strong>1:1 문의 작성 전 확인해 주세요!</strong><p><p>
		<strong>반품 / 환불</strong><p><p>	 반품 / 환불반품 / 환불반품 / 환불반품 / 환불반품 / 환불	<p>
		<strong>주문취소</strong> <p><p>	주문취소주문취소주문취소주문취소주문취소주문취소주문취소 	<p>
		<strong>배송 </strong><p><p> 배송안내내용배송안내내용배송안내내용배송안내내용배송안내내용<p>
		<textarea rows="30" cols="80"></textarea> 
		</td> 		
	</tr>
	<tr>
		<td class="title">&emsp;파일 선택</td>
		<td style="text-align: left;">&emsp;<input class="layoutT" id="upload1" type="file" name="upload1" size="50"></td>
	</tr> 
</table> 
<div style="height:50px;"></div>
<div style="weight: 600px; height: 100px; text-align: center;"> 
	<input class="join" type="button" value="등록">
</div>
</form>
</div>