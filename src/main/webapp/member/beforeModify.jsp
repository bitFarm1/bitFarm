<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
.box{
	width: 820px;
	height: 600px;
	margin: 0 auto;
}  

.layout{ 
	width: 340px;
	height: 54px;
	line-height: 20px;  
    border-radius: 3px; 
    background-color: #5f0080;
	border: #5f0080;
	color: white;
    outline: none;
    font-weight: bold;  
    cursor: pointer;
	}
</style>
<div class="box">
<h2>개인 정보 수정</h2><p>
<div style="text-align: center; width:820; height:450;">
<div style="border: 1px solid #5f0080;"></div>  
<img src="../image/pwdReCheck.png" width="400" height="70">  
<div style="height: 10px"></div>
<div style="width 600; height:200; border:2px solid #CEBEE1;">
	<div style="padding: 30px 0; font-size: 10pt; font-weight: bold;">아이디<p>${memberId }<p>비밀번호<p>
	<input style="width:150; height:30;" type="password" name="pwd">
 <input type="hidden" name="id" value="${memberId }">
	<div id="modifyPwdDiv"></div>  
	</div>   
</div>
	<input class="layout" type="button" id="modifyBtn" value="확인">  
</div>     
</div>

<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	if('${loginType}' != 'bit'){
		location.href='/bitFarm/member/modifyForm'; 
	} 
});

$('#modifyBtn').click(function(){   
	$('#modifyPwdDiv').empty();
	
	if($('input[name=pwd]').val()==''){
		$('#modifyPwdDiv').text('비밀번호를 정확히 입력해주세요.');    
		$('#modifyPwdDiv').css('color','red');
		$('#modifyPwdDiv').css('font-weight','bold');
		$('#modifyPwdDiv').css('font-size','9pt');
	}else{
		$.ajax({
			type : 'post',
			url : '/bitFarm/member/checkPwd',
 			data : {'pwd' : $('input[name=pwd]').val(),
 					'id' : $('input[name=id]').val()}, 
			dataType : 'json',
			success : function(data){						 
				if(data.login == 'fail'){  
					$('#modifyPwdDiv').text('잘못된 비밀번호입니다.'); 
	        		$('#modifyPwdDiv').css('color','red');
	        		$('#modifyPwdDiv').css('font-weight','bold'); 
	        		$('#modifyPwdDiv').css('font-size','9pt');
				}else{ 
					//alert(JSON.stringify(data)); 
					location.href='/bitFarm/member/modifyForm';  
				}
			} 
		}); 
	} 		 
}); 
</script>