<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
<style type="text/css">
	table.deleteTable{
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
<h2 align="center">회원 탈퇴</h2>  
<div style="width:1000px; margin: 0 auto;">   
<form name="deleteForm" id="deleteForm" method="post" action="/bitFarm/member/delete">   
<table class="deleteTable" align="center" cellpadding="5px" style="border-color: grey"> 
	<tr>  
		<td class="title" style="height:150px; border-bottom: 1px solid grey;"> 회원탈퇴안내</td>  
		<td width="650" style="text-align: left; font-size: 10pt; border-bottom: 1px solid grey;">고객님께서 회원 탈퇴를 원하신다니 저희 쇼핑몰의 서비스가 많이 부족하고 미흡했나 봅니다.<br>
		불편하셨던 점이나 불만사항을 알려주시면 적극 반영해서 고객님의 불편함을 해결해 드리도록 노력하겠습니다.<br><br>
		
		1.회원 탈퇴 시 고객님의 정보는 즉시 삭제됩니다. <br>
		2.탈퇴 시 고객님께서 보유하셨던 적립금 및 쿠폰은 영구 삭제됩니다.<br>
		</td>
		
	</tr> 	
	<tr id="typeHidden"> 
		<td class="title" style="height:50px; border-bottom: 1px solid grey;">비밀번호</td> 
		<td style="text-align:left; border-bottom: 1px solid grey;"><input style="width:150px; height:30px;" id="pwd" type="password" name="pwd">
		<div id="pwdDiv"></div>
		</td> 		 
	</tr>
	  
	<tr> 
		<td class="title" style="height:50px; border-bottom: 1px solid grey;">탈퇴사유</td> 
		<td style="text-align:left; font-size: 9pt; border-bottom: 1px solid grey;">
		<input type="radio" name="deleteInfo_why" value="선택안함" checked="checked">선택안함&emsp;  
		<input type="radio" name="deleteInfo_why" value="서비스 불만">서비스 불만&emsp;
		<input type="radio" name="deleteInfo_why" value="배송불만">배송불만&emsp;
		<input type="radio" name="deleteInfo_why" value="교환/환불/반품 불만">교환/환불/반품 불만&emsp;
		<input type="radio" name="deleteInfo_why" value="상품가격 불만">상품가격 불만 &emsp;
		<input type="radio" name="deleteInfo_why" value="기타">기타	 	  
		</td> 		 
	</tr>  
	 
	<tr>  
		<td class="title" style="border-bottom: 1px solid grey;">건의 사항</td> 
		<td style="text-align:left; border-bottom: 1px solid grey;"><textarea name="deleteInfo_Content" cols="70" rows="8" class="box"></textarea>
		</td> 		 
	</tr>  
</table>   
<input type="hidden" name="id" value="${memberId }">    

 

<div style="height:50px;"></div>
<div style="weight: 600px; height: 100px; text-align: center;"> 
	<input class="join" type="button" id="deleteBtn" value="탈퇴하기"> 
</div> 
</form>
</div>

<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
if('${loginType}' != 'bit'){
	$('#typeHidden').css('display','none');
} 

$('#deleteBtn').click(function(){
	$('#pwdDiv').empty();
	if('${loginType}' == 'bit'){	  
		if($('#pwd').val()==''){
			$('#pwdDiv').text('패스워드를 입력해주세요.');
			$('#pwdDiv').css('font-size','9pt'); 
			$('#pwdDiv').css('color','red');
			$('#pwdDiv').css('font-weight','bold');
		}else{
			$.ajax({ 
				type : 'post',
				url : '/bitFarm/member/checkPwd', 
	 			data : {'pwd' : $('input[name=pwd]').val(),
	 					'id' : $('input[name=id]').val()}, 
				dataType : 'json',
				success : function(data){ 
					//alert(data.login);  
					if(data.login == 'fail'){  
						$('#pwdDiv').text('잘못된 비밀번호입니다.'); 
		        		$('#pwdDiv').css('color','red');
		        		$('#pwdDiv').css('font-weight','bold');
		        		$('#pwdDiv').css('font-size','9pt');
					}else{ 	
						$('#deleteForm').submit();		
						alert("처리되었습니다. 감사합니다.");  
					} 
				}
			});	
		}             
	}else{
		$('#deleteForm').submit();
		alert("처리되었습니다. 감사합니다.");  
	} 
	
});
</script>