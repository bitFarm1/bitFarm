<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
	table.QnAtable{
		width: 800px;
		border-collapse: collapse;
		border-top: 2px solid #5f0080;
		border-bottom: 2px solid #5f0080;
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
	    cursor: pointer;
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
		cursor: pointer;
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
<div style="width:1000px; margin: 0 auto;">  
<h3>1:1 문의</h3>  
<form name="infoQnABoardForm" id="infoQnABoardForm" method="post" enctype="multipart/form-data" action="">
<table class="QnAtable" cellpadding="5px" style="border-color: grey"> 
	<tr> 
		<td class="title">&emsp;제목</td> 
		<td width="650" style="text-align: left;">&emsp;<input class="layoutT" type="text" name="infoQnA_subject">&emsp;
						<select name="infoQnA_type" id="infoQnA_type" label="질문유형" class="select">
                            <option value="">선택해주세요.</option>
                            <option value="배송지연/불만">배송지연/불만</option>
                            <option value="반품문의">반품문의</option> 
                            <option value="A/S문의">A/S문의</option>
                            <option value="취소문의">취소문의</option>
                            <option value="교환문의">교환문의</option>
                            <option value="환불문의">환불문의</option>
                            <option value="주문결제문의">주문결제문의</option> 
                            <option value="회원정보문의">회원정보문의</option>
                            <option value="상품정보문의">상품정보문의</option>
                            <option value="기타문의">기타문의</option>
                        </select>
		</td>
	</tr>
	<tr>
		<td class="title">&emsp;주문번호</td>
		<td style="text-align: left;">&emsp;<input class="layoutT" type="text" name="infoQnA_orderNum" id="infoQnA_orderNum">&emsp;
			<input class="layoutB" type="button" value="주문조회"></td>
	</tr>	
	<tr>
		<td class="title">&emsp;이메일</td>
		<td style="text-align: left;">&emsp;<input class="layoutT" type="text" name="infoQnA_email" id="infoQnA_email"></td>
	</tr>	
	<tr>
		<td class="title">&emsp;핸드폰</td>
		<td style="text-align: left;">&emsp;<input class="layoutT" type="text" name="infoQnA_phone" id="infoQnA_phone"></td>
	</tr>  
	<tr>
		<td class="title">&emsp;내용</td> 
		<td style="text-align:left;"><p><strong>1:1 문의 작성 전 확인해 주세요!</strong><p><p>
		<strong>반품 / 환불</strong><p><p>	 반품 / 환불반품 / 환불반품 / 환불반품 / 환불반품 / 환불	<p>
		<strong>주문취소</strong> <p><p>	주문취소주문취소주문취소주문취소주문취소주문취소주문취소 	<p>
		<strong>배송 </strong><p><p> 배송안내내용배송안내내용배송안내내용배송안내내용배송안내내용<p>
		<textarea rows="30" cols="80" name="infoQnA_content" id="infoQnA_content"></textarea> 
		</td> 		
	</tr>
	<tr> 
		<td class="title">&emsp;파일 선택</td> 
		<td style="text-align: left;">&emsp;<input class="layoutT" id="infoQnA_imageName" type="file" name="img" size="50"></td>
	</tr> 
</table>  
<div style="height:50px;"></div>
<div style="weight: 600px; height: 100px; text-align: center;"> 
	<input class="join" type="button" id="infoQnABtn" value="등록"> 
</div>
</form>
</div>

<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$('#infoQnABtn').click(function(){
	
	let formData = new FormData($('#infoQnABoardForm')[0]);
	
	$.ajax({  
		type : 'post', 
		enctype : 'multipart/form-data',
		processData : false, //데이터를 컨텐트 타입에 맞게 변환 여부
		contentType : false, //요청 컨텐트 타입 
		url : '/bitFarm/information/infoQnAWrite',    
		data : formData,  
		success : function(){   
			alert("등록 완료");  
			location.href='/bitFarm/information/infoBoard'; 
		} 			 
	});			 
	  
});
</script>