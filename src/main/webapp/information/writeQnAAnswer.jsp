<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style type="text/css"> 
	.wrap{
		width: 600px;
		margin: 0 auto;
	
	} 
	
	.contents{ 
		white-space: pre-wrap;
		word-break: break-all;
		width: 500px; 
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
 
<div class="wrap">
	
		<h3>원글<span style="font-size: 9pt; font-weight: normal;">&emsp;원글입니다.</span></h3> 
		<table width="100%" > 
			<tr><td style="border-top: 2px solid #5f0080;" > 
				<table align="center" style="padding: 0; width:100%;">
					<tr>  
						<td class="tdstyle">제목</td>  
						<td colspan="3" style="border-top: 1px solid #e8e8e8;">${informationQnADTO.infoQnA_subject}</td> 
					</tr>
					 
					<tr>
						<td class="tdstyle">작성자</td>
						<td colspan="3">${informationQnADTO.infoQnA_userID}</td> 
					</tr>
					
					<tr> 
						<td class="tdstyle" colspan="3">작성일</td>						
						<td ><fmt:formatDate pattern="yyyy년 MM월 dd일" value="${informationQnADTO.infoQnA_askDate}"/> </td> 
					</tr>	
				</table>
			</td></tr> 
			<tr> 
				<td height="30px" style="border-bottom: 0px"></td>
			</tr>
			<tr><td style="border-bottom: 0px">
				<pre class="contents">${informationQnADTO.infoQnA_content }</pre><br>
								   
			</td></tr>  
			<tr> 
				<td height="30px"></td>
			</tr>
		
		</table>	  
	<form id="writeQnAAnswer" name="writeQnAAnswer">
		<h3>답변<span style="font-size: 9pt; font-weight: normal;">&emsp;답글입니다.</span></h3> 
		<table width="100%" > 
			<tr><td style="border-top: 2px solid #5f0080;" > 
				<table align="center" style="padding: 0; width:100%;"> 
					<tr>    
						<td class="tdstyle">제목</td>   
						<td colspan="3" style="border-top: 1px solid #e8e8e8;"><input type="text" style="width: 300; height: 30;" id="infoQnA_answerSubject" name="infoQnA_answerSubject"></td> 
					</tr>
					 
					<tr>
						<td class="tdstyle">작성자</td>
						<td colspan="3">BITFARM</td>  
					</tr>
										 
				</table>  
			</td></tr> 
			<tr>   
				<td height="30px" style="border-bottom: 0px"></td>
			</tr>
			<tr><td style="border-bottom: 0px">
				<textarea name="infoQnA_answerContent" id="infoQnA_answerContent" style="width: 590; height: 240;"></textarea><br> 
								   
			</td></tr>  
			<tr> 
				<td height="30px"></td>
			</tr>
			<tr><td align="center" style="border-bottom: 2px solid #5f0080; border-top: 2px solid #5f0080;">
				<input class="layoutB" id="answer" type="button" value="확인">
			</td ></tr> 
						 
		</table>	 
		<input type="hidden" name="seq" value="${informationQnADTO.infoQnA_seq}">
	</form> 
</div>   

<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">   
$('#answer').click(function(){
	if($('#infoQnA_answerSubject').val() == ''){ 
		alert("제목을 입력하세요.");
		return false;	 
	}
	if($('#infoQnA_answerContent').val() == ''){ 
		alert("답글을 입력하세요.");
		return false;	
	}
	$.ajax({
		type : 'post',
		url : '/bitFarm/information/answerWrite',
		contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
		data : $('#writeQnAAnswer').serialize(),
		dataType : 'json',
		success : function(data){  
			alert("작성완료");
			if(data.update == 1){
				window.close(); 
				opener.location.reload();	
			}		    
		}
		 
	});
	 
}); 
</script>
