<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">

.layout{
	width: 340px;
	height: 54px;
	line-height: 20px;  
    border-radius: 3px; 
    background: #fff; 
    border: 1px solid #ccc; 
    outline: none; 
}
</style>
<div class="resetPwdForm" style="margin: 0 auto; width: 340px; height: 400px;">
<div>   
	 <h2 align="center">비밀번호 재설정</h2>
		<div style="height: 5px"></div>		 
		<input class="layout" type="text" id="resetId" name="resetId" style="font-size:15px;" value="${member_id}" readonly="readonly">
		<div style="height: 20px"></div>
		<input class="layout" id="next" type="button" value="확인" style="color: white; cursor: pointer; background-color: #5f0080; border: #5f0080; border-radius: 3px;">
</div>
</div> 

<div class="idshow" style="display: none; margin: 0 auto; width: 340px; height: 400px;">
<div>  
	 <h2 align="center">비밀번호 재설정</h2>
		<div style="height: 5px"></div>		
		비밀번호  <input class="layout" type="password" id="resetPwd" name="member_pwd"  style="font-size:15px;">
		<div id="pwdCheck"></div>
		<div style="height: 5px"></div>		
		비밀번호재확인 <input class="layout" type="password" id="resetPwd1" name="member_repwd"  style="font-size:15px;">
		<div id="repwdCheck"></div>
		<div style="height: 20px"></div>
		<input class="layout" type="button" id="resetPwdBtn" value="확인" style="color: white; background-color: #5f0080; border: #5f0080; border-radius: 3px;">
</div>  
</div> 
  
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$('#next').click(function(){
	 $('.resetPwdForm').remove(); 
	 $('.idshow').css('display','block');  
});
 
$('#resetPwdBtn').click(function(){
	if($('#resetPwd').val() == ''){
		$('#pwdCheck').text('비밀번호를 입력하세요.');
		$('#pwdCheck').css('color','red');
		$('#pwdCheck').css('font-weight','bold');
		$('#pwdCheck').css('font-size','10pt');
	}else if($('#resetPwd1').val() == ''){
		$('#repwdCheck').text('비밀번호 재확인을 입력하세요.');
		$('#repwdCheck').css('color','red');
		$('#repwdCheck').css('font-weight','bold');
		$('#repwdCheck').css('font-size','10pt');
		
	}else if($('#resetPwd1').val() != $('#resetPwd').val()){
		$('#repwdCheck').text('비밀번호 불일치');
		$('#repwdCheck').css('color','red');
		$('#repwdCheck').css('font-weight','bold');
		$('#repwdCheck').css('font-size','10pt');
	}else {
		 $.ajax({
			 type : 'post',
			 url : '/bitFarm/member/resetPwd',
			 data : {'member_id' : '${member_id}',
				 	'member_pwd' : $('input[name=member_pwd]').val()},
			 dataType : 'json',
			 success : function(data){
				 alert("비밀번호 변경완료!");
				 location.href='/bitFarm/member/loginForm';				 
			 }	  		
		});	 
	} 
	
}); 
</script>
