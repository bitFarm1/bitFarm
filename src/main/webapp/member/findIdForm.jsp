<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
a.searchA {color:blak; text-decoration: none; font-size: 8pt;}
a.searchA:link {color: black; text-decoration: none;}
a.searchA:visited {color: black; text-decoration: none;}
a.searchA:hover {color: #5f0080; text-decoration: none; font-weight: bolder;}
a.searchA:active {color: black; text-decoration: none;}

.box{
	width: 340px;
	height: 400px;
	margin: 0 auto;
	font-size: 9pt;
}

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
 

<form>  
<div class="box"> 
<h1 align="center">아이디 찾기</h1> 
	<div> 
		<strong>이름</strong>
		<div style="height: 5px"></div>		
		<input class="layout" type="text" name="name" placeholder=" 고객님의 이름을 입력해주세요" style="font-size:15px;">
	</div>
		<div style="height:15px;"></div> 
	<div>
		<strong>이메일</strong>
		<div style="height: 5px"></div>		
		<input class="layout" type="text" name="email" placeholder=" 가입 시 등록하신 이메일 주소를 입력해주세요" style="font-size:15px;">
	</div>  

		<div style="height:25px;"></div>
	<div>
		<input class="layout" type="button" id="findIdBtn" value="확인" style="color: white; background-color: #5f0080; border: #5f0080; border-radius: 3px; cursor: pointer;">
	</div>  	
</div>  
</form>
<div class="idshow" style="display: none; margin: 0 auto; width: 340px; height: 400px;">
<div>  
	 <h2 align="center">고객님의 아이디</h2>
		<div style="height: 5px"></div>		
		<input class="layout" type="text" id="findId" name="id" readonly="readonly" style="font-size:15px;">
		<div style="height: 20px"></div>
		<input class="layout" type="button" value="확인" onclick="location.href='/bitFarm/member/loginForm'" style="color: white; background-color: #5f0080; border: #5f0080; border-radius: 3px;">
</div>
</div> 

<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$('#findIdBtn').click(function(){
	
	 $.ajax({
		 type : 'post',
		 url : '/bitFarm/member/getFindId',
		 data : {'member_name' : $('input[name=name]').val(),
			 	'member_email' : $('input[name=email]').val()},
		 dataType : 'json',
		 success : function(data){
			 //alert(JSON.stringify(data));
			 if(data.find == 'no'){ 
				 alert("찾을 아이디가 없습니다!");
			 }else{
				 $('.box').remove();
				 $('.idshow').css('display','block');  
				 $('#findId').val(data.memberDTO.member_id);  
			 }
		 }	  
	 });
});  
</script>

