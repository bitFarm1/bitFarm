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
		font-size: 14;
		font-family: 'Noto Sans';
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
	
	.layoutT{
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
<form name="memberWriteForm">  
<h2 align="center">회원가입</h2>
<div style="height:20px;"></div>
<div> 
	<table cellpadding="10px">   
		<tr> 
			<th class="subject">아이디*</th>
			<td style="vertical-align: top;"><input class="layoutT" type="text" name="member_id" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합">&emsp;
			<input class="layoutB" type="button" name="checkId" value="중복확인"><br id="member_id_p" style="display: none;"><span id="member_id_Div" ></span></br></td>					
		</tr>  
		
		<tr>   
			<th class="subject">비밀번호*</th>   
			<td><input class="layoutT" type="password" name="member_pwd" placeholder="비밀번호를 입력해주세요"></td>
			
		</tr>
		<tr>
			<th class="subject">비밀번호확인*</th>
			<td style="padding-top: 2px;"><input class="layoutT" type="password" name="member_repwd" placeholder="비밀번호를 한번 더 입력해주세요">
			<br id="member_pwd_p" style="display: none;"><span id="member_pwd_Div" ></span></br></td>
		</tr>
		
		<tr>
			<th class="subject">이름*</th>
			<td><input class="layoutT" type="text" name="member_name" placeholder="고객님의 이름을 입력해주세요">
			<br id="member_name_p" style="display: none;"><span id="member_name_Div" ></span></br>
			</td>
		</tr> 
		
		<tr> 
			<th class="subject">이메일*</th>
			<td><input class="layoutT" type="text" name="member_email" placeholder="예: bitfarm@bitfarm.com">&emsp;
			<input class="layoutB" type="button" name="checkEmail" value="이메일 중복확인">
			<br id="member_email_p" style="display: none;"><span id="member_email_Div" ></span></br>
			</td>			
		</tr>
		<tr>
			<th class="subject">휴대폰*</th>
			<td><input class="layoutT" type="text" name="member_phone" placeholder="숫자만 입력해주세요">
			<br id="member_phone_p" style="display: none;"><span id="member_phone_Div" ></span></br>
			</td>
		</tr>
		<tr>
			<th class="subject">배송 주소*</th>
			<td><input class="layoutT" type="text" name="member_address1">&emsp;
			<input class="layoutB" type="button" name="checkAddress" value="주소 검색">
			<br id="member_address1_p" style="display: none;"><span id="member_address1_Div" ></span></br>
			</td>
		</tr> 
		
		<tr> 
			<th class="subject"><br></th>
			<td style="padding-top: 2px;"><input class="layoutT" type="text" name="member_address2">
			<br id="member_address2_p" style="display: none;"><span id="member_address2_Div" ></span></br>
			</td>
		</tr> 
				
		<tr>
			<th class="subject">생년월일</th>
			<td><input class="layoutT" type="text" name="member_birth" placeholder="YYYYMMDD">
			<br id="member_birth_p" style="display: none;"><span id="member_birth_Div" ></span></br>
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
		<input type="checkbox" name="allCheck" id="allCheck" onclick="checkAll()" >전체동의&emsp;
		
	</div> 
	<div>
		&emsp;<input type="checkbox" id="member_check1" name="check"> 이용약관 (필수)&emsp;
		<a class="sign" href="#">약관보기 ></a>
	</div>
	<div>
		&emsp;<input type="checkbox" id="member_check2"  name="check"> 개인정보처리방침 (필수)&emsp;
		<a class="sign" href="#">약관보기 ></a>
	</div>
	<div>
		&emsp;<input type="checkbox" id="event" name="check"> 이벤트 혜택/정보 수신 (선택)
		<input type="hidden" id="mea" name="member_eventAgree" value=""> 
	</div>
	<div>
		&emsp;<input type="checkbox" id="member_check3" name="check"> 본인은 만 14세 이상입니다. (필수)
	</div>	
	<div style="height: 10px;"></div>
</div>  
  
	<div style="weight: 100px; height: 100px; text-align: center;"> 
		<input class="join" name="writeFormBtn" type="button" onclick="checkMemberWrite()" value="가입하기"> 
	</div>
		<input type="hidden" name="member_loginType" value="bit"> 
</form>

<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">


$('input[name=member_id]').focusout(function(){	
	$('#member_id_p').css("display", "none"); 
	$('#member_id_Div').empty(); 
	
	if($('input[name=member_id]').val()==''){
	$('#member_id_p').css("display", "block"); 
		$('#member_id_Div').text('아이디를 입력하세요.');  
		$('#member_id_Div').css('color','#5f0080');
		$('#member_id_Div').css('font-weight','bold');
		$('#member_id_Div').css('font-size','10pt');
		} 	
});

$('input[name=member_pwd]').focusout(function(){
	
	$('#member_pwd_Div').empty();
	$('#member_pwd_Div').empty(); 
	
	if($('input[name=member_pwd]').val()==''){
	$('#member_pwd_p').css("display", "block"); 
			$('#member_pwd_Div').text('비밀번호를 입력하세요.'); 
			$('#member_pwd_Div').css('color','#5f0080');
			$('#member_pwd_Div').css('font-weight','bold');
			$('#member_pwd_Div').css('font-size','10pt');			
	} 
});
 
$('input[name=member_repwd]').focusout(function(){
	$('#member_pwd_Div').empty();
	$('#member_pwd_Div').empty(); 
	 
	if($('input[name=member_repwd]').val()==''){
		$('#member_pwd_p').css("display", "block"); 
		$('#member_pwd_Div').text('비밀번호 재확인을 입력하세요!'); 
		$('#member_pwd_Div').css('color','#5f0080');
		$('#member_pwd_Div').css('font-weight','bold');  
		$('#member_pwd_Div').css('font-size','10pt');
		
	}else if($('input[name=member_pwd]').val()!=$('input[name=member_repwd]').val()){
		$('#member_pwd_p').css("display", "block"); 
		$('#member_pwd_Div').text('비밀번호가 일치하지 않습니다!'); 
		$('#member_pwd_Div').css('color','#5f0080');
		$('#member_pwd_Div').css('font-weight','bold'); 
		$('#member_pwd_Div').css('font-size','10pt');
		
	}else if($('input[name=member_pwd]').val()==$('input[name=member_repwd]').val()){
		$('#member_pwd_p').css("display", "block"); 
		$('#member_pwd_Div').text('일치한 비밀번호 입니다!'); 
		$('#member_pwd_Div').css('color','green');
		$('#member_pwd_Div').css('font-weight','bold'); 
		$('#member_pwd_Div').css('font-size','10pt'); 
	}   
});

$('input[name=member_name]').focusout(function(){
	$('#member_name_p').css("display", "none"); 
	$('#member_name_Div').empty(); 
	
	if($('input[name=member_name]').val()==''){
	$('#member_name_p').css("display", "block"); 
		$('#member_name_Div').text('이름을 입력하세요.'); 
		$('#member_name_Div').css('color','#5f0080'); 
		$('#member_name_Div').css('font-weight','bold');
		$('#member_name_Div').css('font-size','10pt'); 
		} 	
});

$('input[name=member_email]').focusout(function(){
	$('#member_email_p').css("display", "none");  
	$('#member_email_Div').empty(); 
	
	if($('input[name=member_email]').val()==''){
	$('#member_email_p').css("display", "block"); 
		$('#member_email_Div').text('이메일을 입력하세요.');  
		$('#member_email_Div').css('color','#5f0080');
		$('#member_email_Div').css('font-weight','bold');
		$('#member_email_Div').css('font-size','10pt');
		} 	
});

$('input[name=member_phone]').focusout(function(){
	$('#member_phone_p').css("display", "none"); 
	$('#member_phone_Div').empty(); 
	
	if($('input[name=member_phone]').val()==''){
	$('#member_phone_p').css("display", "block"); 
		$('#member_phone_Div').text('핸드폰 번호를 입력하세요.'); 
		$('#member_phone_Div').css('color','#5f0080');
		$('#member_phone_Div').css('font-weight','bold');
		$('#member_phone_Div').css('font-size','10pt');
		} 	
});


$('input[name=member_address1]').focusout(function(){
	$('#member_address1_p').css("display", "none"); 
	$('#member_address1_Div').empty();
	
	if($('input[name=member_address1]').val()==''){
	$('#member_address1_p').css("display", "block"); 
			$('#member_address1_Div').text('주소를 입력하세요.');  
			$('#member_address1_Div').css('color','#5f0080');
			$('#member_address1_Div').css('font-weight','bold');
			$('#member_address1_Div').css('font-size','10pt'); 
		} 	  
});

$('input[name=member_address2]').focusout(function(){ 
	$('#member_address1_p').css("display", "none"); 
	$('#member_address1_Div').empty(); 
	 
	if($('input[name=member_address2]').val()==''){ 
	$('#member_address1_p').css("display", "block"); 
			$('#member_address1_Div').text('주소를 입력하세요.');   
			$('#member_address1_Div').css('color','#5f0080');
			$('#member_address1_Div').css('font-weight','bold');
			$('#member_address1_Div').css('font-size','10pt'); 
		} 	 
});

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
	//document.getElementB	yId("check").checked=true;  
} 

function checkMemberWrite(){
	if($('#event').is(":checked")) $('#mea').val("yes");    
	else $('#mea').val("no");
	
	if($('input[name=member_id]').val()==''||
		$('input[name=member_name]').val()==''||
		$('input[name=member_pwd]').val()==''||
		$('input[name=member_email]').val()==''||
		$('input[name=member_phone]').val()==''||
		$('input[name=member_license]').val()==''||
		$('input[name=member_address1]').val()==''||
		$('input[name=member_address2]').val()==''){
		
		alert("필수 사항을 입력하세요!"); 
		
	}else if($('#member_check1').is(":checked") && $('#member_check2').is(":checked") && $('#member_check3').is(":checked")){
						
			document.memberWriteForm.method = 'post';
			document.memberWriteForm.action = '/bitFarm/member/write';
			document.memberWriteForm.submit();
				
	}else {
		alert("약관을 체크해주세요!");  
	}
}	
</script>
