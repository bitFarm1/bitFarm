<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
	table {		
		vertical-align: middle;
		text-align: center; 
		width:600;
		height:710; 
		margin: auto; 
		cellspacing: 0;
		cellpadding: 10;
	} 
	
	.subject{ 
		padding: 18px 10px 0 29px;
		vertical-align: top;
		text-align: left; 
		font-size: 10pt;
		font-family: 'Noto Sans'; 
	}
	
	.layoutB{ 
	vertical-align: top;
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
	
	.layoutT{
	vertical-align: top;
	width: 300px;
    height: 40px;
    padding: 0 9px;
    border: 1px solid #ccc;
    font-size: 14px;
    color: #333;
    line-height: 20px;
    border-radius: 3px; 
    background: #fff; 
    outline: none;
   
	}  
	
	th {
    text-align: left;
 	}
 	
 	td { 	
 	text-align: left;
 	} 
 	
 	.box{  
	width: 640px;
	margin: 0 auto;
	height: 250px; 	 
	text-align: left;
	} 
	
	.join {  
    width: 340px;
    height: 54px;
    margin: 0 auto;
    border: 0 none;  
    border-radius: 3px;
    background-color: #5f0080;
    font-size: 16px;
    color: #fff;
    line-height: 44px;
    cursor: pointer;
	}
	
	a.sign {color:purple; text-decoration: none; }
	a.sign:link {color: purple; text-decoration: none;}
	a.sign:visited {color: purple; text-decoration: none;}
	a.sign:hover {color: #5f0080; text-decoration: none; font-weight: bolder;}
	a.sign:active {color: purple; text-decoration: none;}
}
	
</style>
<form name="sellerWriteForm">   
<h2 align="center">판매자 회원가입</h2>
<div style="height:20px;"></div>
<div> 
	<table cellpadding="10px">   
		<tr> 
			<th class="subject">아이디*</th>
			<td style="vertical-align: top;"><input class="layoutT" type="text" name="seller_id" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합">&emsp;
			<input class="layoutB" type="button" name="checkId" value="중복확인"><br id="seller_id_p" style="display: none;"><span id="seller_id_Div" ></span></br></td>					
		</tr>  
		 
		<tr>   
			<th class="subject">비밀번호*</th>   
			<td><input class="layoutT" type="password" name="seller_pwd" placeholder="비밀번호를 입력해주세요"></td>
			
		</tr>
		<tr>
			<th class="subject">비밀번호확인*</th>
			<td style="padding-top: 2px;"><input class="layoutT" type="password" name="seller_repwd" placeholder="비밀번호를 한번 더 입력해주세요">
			<br id="seller_pwd_p" style="display: none;"><span id="seller_pwd_Div" ></span></br></td>
		</tr>
		
		 
		<tr>
			<th class="subject">이름*</th>
			<td><input class="layoutT" type="text" name="seller_name" placeholder="고객님의 이름을 입력해주세요">
			<br id="seller_name_p" style="display: none;"><span id="seller_name_Div" ></span></br>
			</td>
		</tr> 
		
		<tr>
			<th class="subject">이메일*</th>
			<td><input class="layoutT" type="text" name="seller_email" placeholder="예: bitfarm@bitfarm.com">&emsp;
			<input class="layoutB" type="button" name="checkEmail" value="이메일 중복확인">
			<br id="seller_email_p" style="display: none;"><span id="seller_email_Div" ></span></br>
			</td>			
		</tr>
		
		
		<tr>
			<th class="subject">휴대폰*</th>
			<td><input class="layoutT" type="text" name="seller_phone" placeholder="숫자만 입력해주세요">
			<br id="seller_phone_p" style="display: none;"><span id="seller_phone_Div" ></span></br>
			</td>
		</tr>
				
		<tr>
			<th class="subject">사업자 번호*</th>
			<td><input class="layoutT" type="text" name="seller_license">
			<br id="seller_license_p" style="display: none;"><span id="seller_license_Div" ></span></br>
			</td>			
		</tr>   
		
		<tr>
			<th class="subject">사업장 주소*</th>
			<td><input class="layoutT" type="text" name="seller_address1">&emsp;
			<input class="layoutB" type="button" name="checkAddress" value="주소 검색">
			</td>
		</tr> 
		
		<tr> 
			<th class="subject"><br></th>
			<td style="padding-top: 2px;"><input class="layoutT" type="text" name="seller_address2">
			<br id="seller_address1_p" style="display: none;"><span id="seller_address1_Div" ></span></br>
			</td>
		</tr> 
	  
	</table> 
</div> 

<div class="box">
	<div style="height: 70px;">
		<div style="height: 20px;"></div>
		<div style="float: left; font-weight: bold;">이용약관동의*</div> 
		<div style="float: left; font-size: 5pt;">&emsp;&emsp;선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.</div>
	</div>
	<div style="height: 30px;"> 
		<input type="checkbox" name="allCheck" onclick="checkAll()">전체동의&emsp;
		 
	</div> 
	<div>
		&emsp;<input type="checkbox" id="seller_check1" name="check"> 이용약관 (필수)&emsp;
		<a class="sign" href="#">약관보기 ></a>
	</div>
	<div>
		&emsp;<input type="checkbox" id="seller_check2" name="check"> 개인정보처리방침 (필수)&emsp;
		<a class="sign" href="#">약관보기 ></a>
	</div> 
	<div> 
		&emsp;<input type="checkbox" id="seller_check3" name="check"> 본인은 만 14세 이상입니다. (필수) 
	</div>	
	<div style="height: 10px;"></div>
</div>  
 
	<div style="weight: 100px; height: 100px; text-align: center;"> 
		<input class="join" type="button" value="가입하기" onclick="checkSellerWrite()"> 
	</div>
</form>

<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$('input[name=seller_id]').focusout(function(){
	$('#seller_id_p').css("display", "none"); 
	$('#seller_id_Div').empty();
	
	if($('input[name=seller_id]').val()==''){ 
		
		$('#seller_id_p').css("display", "block"); 
			$('#seller_id_Div').text('아이디를 입력하세요.');  
			$('#seller_id_Div').css('color','#5f0080');
			$('#seller_id_Div').css('font-weight','bold');
			$('#seller_id_Div').css('font-size','10pt');
	} 	
}); 

$('input[name=seller_pwd]').focusout(function(){

	$('#seller_pwd_Div').empty();
	
	if($('input[name=seller_pwd]').val()==''){
	$('#seller_pwd_p').css("display", "block"); 
			$('#seller_pwd_Div').text('비밀번호를 입력하세요.'); 
			$('#seller_pwd_Div').css('color','#5f0080');
			$('#seller_pwd_Div').css('font-weight','bold');
			$('#seller_pwd_Div').css('font-size','10pt');			
	} 
});
 
$('input[name=seller_repwd]').focusout(function(){
	$('#seller_pwd_Div').empty();
	 
	if($('input[name=seller_pwd]').val()==''){
		$('#seller_pwd_p').css("display", "block"); 
		$('#seller_pwd_Div').text('비밀번호 재확인을 입력하세요!'); 
		$('#seller_pwd_Div').css('color','#5f0080');
		$('#seller_pwd_Div').css('font-weight','bold'); 
		$('#seller_pwd_Div').css('font-size','10pt');
		
	}else if($('input[name=seller_pwd]').val()!=$('input[name=seller_repwd]').val()){
		$('#seller_pwd_p').css("display", "block"); 
		$('#seller_pwd_Div').text('비밀번호가 일치하지 않습니다!'); 
		$('#seller_pwd_Div').css('color','#5f0080');
		$('#seller_pwd_Div').css('font-weight','bold'); 
		$('#seller_pwd_Div').css('font-size','10pt');
		
	}else if($('input[name=seller_pwd]').val()==$('input[name=seller_repwd]').val()){
		$('#seller_pwd_p').css("display", "block"); 
		$('#seller_pwd_Div').text('일치한 비밀번호 입니다!'); 
		$('#seller_pwd_Div').css('color','green');
		$('#seller_pwd_Div').css('font-weight','bold'); 
		$('#seller_pwd_Div').css('font-size','10pt'); 
	}   
}); 

$('input[name=seller_name]').focusout(function(){
	$('#seller_name_p').css("display", "none"); 
	$('#seller_name_Div').empty();
	
	if($('input[name=seller_name]').val()==''){
	$('#seller_name_p').css("display", "block");  
			$('#seller_name_Div').text('이름을 입력하세요.'); 
			$('#seller_name_Div').css('color','#5f0080');
			$('#seller_name_Div').css('font-weight','bold');
			$('#seller_name_Div').css('font-size','10pt');
		} 	
});

$('input[name=seller_email]').focusout(function(){
	$('#seller_email_p').css("display", "none"); 
	$('#seller_email_Div').empty();
	
	if($('input[name=seller_email]').val()==''){
	$('#seller_email_p').css("display", "block"); 
			$('#seller_email_Div').text('이메일을 입력하세요.');  
			$('#seller_email_Div').css('color','#5f0080');
			$('#seller_email_Div').css('font-weight','bold');
			$('#seller_email_Div').css('font-size','10pt');
		} 	
});

$('input[name=seller_phone]').focusout(function(){
	$('#seller_phone_p').css("display", "none"); 
	$('#seller_phone_Div').empty();
	
	if($('input[name=seller_phone]').val()==''){
	$('#seller_phone_p').css("display", "block"); 
			$('#seller_phone_Div').text('핸드폰 번호를 입력하세요.'); 
			$('#seller_phone_Div').css('color','#5f0080');
			$('#seller_phone_Div').css('font-weight','bold');
			$('#seller_phone_Div').css('font-size','10pt');
		} 	
});

$('input[name=seller_license]').focusout(function(){
	$('#seller_license_p').css("display", "none"); 
	$('#seller_license_Div').empty();
	
	if($('input[name=seller_license]').val()==''){
	$('#seller_license_p').css("display", "block"); 
			$('#seller_license_Div').text('사업자 번호를 입력하세요.'); 
			$('#seller_license_Div').css('color','#5f0080');
			$('#seller_license_Div').css('font-weight','bold');
			$('#seller_license_Div').css('font-size','10pt');
		} 	
});

$('input[name=seller_address1]').focusout(function(){
	$('#seller_address1_p').css("display", "none"); 
	$('#seller_address1_Div').empty();
	
	if($('input[name=seller_address1]').val()==''){
	$('#seller_address1_p').css("display", "block"); 
			$('#seller_address1_Div').text('주소를 입력하세요.');  
			$('#seller_address1_Div').css('color','#5f0080');
			$('#seller_address1_Div').css('font-weight','bold');
			$('#seller_address1_Div').css('font-size','10pt'); 
		} 	  
});

$('input[name=seller_address2]').focusout(function(){ 
	$('#seller_address1_p').css("display", "none"); 
	$('#seller_address1_Div').empty(); 
	 
	if($('input[name=seller_address2]').val()==''){ 
	$('#seller_address1_p').css("display", "block"); 
			$('#seller_address1_Div').text('주소를 입력하세요.');   
			$('#seller_address1_Div').css('color','#5f0080');
			$('#seller_address1_Div').css('font-weight','bold');
			$('#seller_address1_Div').css('font-size','10pt'); 
		} 	 
});

function checkSellerWrite(){ 
	 
	if($('input[name=seller_id]').val()==''||
		$('input[name=seller_name]').val()==''||
		$('input[name=seller_pwd]').val()==''||
		$('input[name=seller_email]').val()==''||
		$('input[name=seller_phone]').val()==''||
		$('input[name=seller_license]').val()==''||
		$('input[name=seller_address1]').val()==''|| 
		$('input[name=seller_address2]').val()==''){
		
		alert("필수 사항을 입력하세요!");
				
	}else if($('#seller_check1').is(":checked") && $('#seller_check2').is(":checked") && $('#seller_check3').is(":checked")){
		
		document.sellerWriteForm.method = 'post';
		document.sellerWriteForm.action = '/bitFarm/seller/write';
		document.sellerWriteForm.submit(); 
		
	}else{  
		alert("약관을 체크해주세요!");			
	}
}

function checkAll(){
	//alert(document.getElementsByName("check").length); check 이름을 가진 것의 개수
	//if(document.getElementById("all").checked)
	//$('#all').is(':checked')
	
	let check = document.getElementsByName("check");
	
	if(document.forms[0].allCheck.checked){
		for(i=0; i<check.length; i++) {
			check[i].checked = true; 
		}  
	}else {
		for(i=0; i<check.length; i++) {
			check[i].checked = false; 
		}
	} 
	//document.getElementById("check").checked=true;  
}  

</script>