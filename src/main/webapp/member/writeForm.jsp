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
<form name="writeForm" method="post" action="/bitFarm/member/write.do">  
<h2 align="center">회원가입</h2>
<div style="height:20px;"></div>
<div> 
	<table cellpadding="10px">   
		<tr> 
			<th class="subject">아이디*</th>
			<td><input class="layoutT" type="text" name="user_id" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합">
			<div class="idDiv"></div>
			</td>
			<td><input class="layoutB" type="button" name="checkId" value="중복확인"></td>
		</tr>
		<tr>
			<th class="subject">비밀번호*</th>
			<td><input class="layoutT" type="password" name="user_pwd" placeholder="비밀번호를 입력해주세요">
			<div class="pwdDiv"></div>
			</td> 
			<td></td> 
		</tr>
		<tr>
			<th class="subject">비밀번호확인*</th>
			<td style="padding-top: 2px;"><input class="layoutT" type="password" name="user_repwd" placeholder="비밀번호를 한번 더 입력해주세요">
			<div class="repwdDiv"></div>
			</td>
			<td></td>
		</tr>
		<tr>
			<th class="subject">이름*</th>
			<td><input class="layoutT" type="text" name="user_name" placeholder="고객님의 이름을 입력해주세요">
			<div class="nameDiv"></div>
			</td>
			<td></td>
		</tr>
		<tr>
			<th class="subject">이메일*</th>
			<td><input class="layoutT" type="text" name="user_email" placeholder="예: bitfarm@bitfarm.com">
			<div class="emailDiv"></div>
			</td>
			<td><input class="layoutB" type="button" name="checkEmail" value="이메일 중복확인"></td>
		</tr>
		<tr>
			<th class="subject">휴대폰*</th>
			<td><input class="layoutT" type="text" name="user_phone" placeholder="숫자만 입력해주세요">
			<div class="phoneDiv"></div>
			</td>
			<td></td>
		</tr>
		<tr>
			<th class="subject">배송 주소*</th>
			<td><input class="layoutT" type="text" name="user_address1">
			<div class="addressDiv1"></div>
			</td>
			<td valign="top"><input class="layoutB" type="button" name="checkAddress" value="주소 검색"></td>
		</tr> 
		 
		<tr>
			<th class="subject"><p></th>
			<td style="padding-top: 2px;"><input class="layoutT" type="text" name="user_address2">
			<div class="addressDiv2"></div>
			</td>
			<td ></td>
		</tr> 
				
		<tr>
			<th class="subject">생년월일</th>
			<td><input class="layoutT" type="text" name="user_birth" placeholder="YYYYMMDD"></td>
			<td></td>
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
		<input type="checkbox" name="selectAll">전체동의&emsp;
		
	</div>
	<div>
		&emsp;<input type="checkbox" name="selectAll"> 이용약관 (필수)&emsp;
		<a class="sign" href="#">약관보기 ></a>
	</div>
	<div>
		&emsp;<input type="checkbox" name="selectAll"> 개인정보처리방침 (필수)&emsp;
		<a class="sign" href="#">약관보기 ></a>
	</div>
	<div>
		&emsp;<input type="checkbox" name="selectAll"> 이벤트 혜택/정보 수신 (선택)
	</div>
	<div>
		&emsp;<input type="checkbox" name="selectAll"> 본인은 만 14세 이상입니다. (필수)
	</div>	
	<div style="height: 10px;"></div>
</div>  
 
	<div style="weight: 100px; height: 100px; text-align: center;"> 
		<input class="join" name="writeFormBtn" type="button" value="가입하기"> 
	</div>
</form>

<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$('input[name=writeFormBtn]').click(function(){
	$('.nameDiv').empty();
	$('.idDiv').empty();
	$('.pwdDiv').empty();
	$('.repwdDiv').empty();
	$('.emailDiv').empty(); 
	$('.phoneDiv').empty();
	$('.addressDiv1').empty(); 
	$('.addressDiv2').empty();
	
	//if($('#name').val()==''){ //document.writeForm.name.value==""
	//if($('input[id=name]').val()==''){
	if($('input[name=user_id]').val()==''){
		$('.idDiv').text('ID를 입력하세요.'); 
		$('.idDiv').css('color','#5f0080');
		$('.idDiv').css('font-size','11pt');
		$('.idDiv').css('font-weight','bold');		
		
		
	}else if($('input[name=user_pwd]').val()==''){ 
		$('.pwdDiv').text('비밀번호를 입력하세요.');
		$('.pwdDiv').css('color','#5f0080');
		$('.pwdDiv').css('font-size','11pt');
		$('.pwdDiv').css('font-weight','bold');
		
	}else if($('input[name=user_repwd]').val()==''){ 
		$('.repwdDiv').text('비밀번호 재확인을 입력하세요.');
		$('.repwdDiv').css('color','#5f0080');
		$('.repwdDiv').css('font-size','11pt');
		$('.repwdDiv').css('font-weight','bold');
			
	}else if($('input[name=user_pwd]').val() != $('input[name=user_repwd]').val()){
		$('.repwdDiv').text('비밀번호 불일치');
		$('.repwdDiv').css('color','#5f0080');
		$('.repwdDiv').css('font-size','11pt');
		$('.repwdDiv').css('font-weight','bold');
		
	}else if($('input[name=user_name]').val()==''){
		$('.nameDiv').text('이름을 입력하세요.'); 
		$('.nameDiv').css('color','#5f0080');
		$('.nameDiv').css('font-size','11pt');
		$('.nameDiv').css('font-weight','bold');
		
	}else if($('input[name=user_email]').val() ==''){
		$('.emailDiv').text('이메일을 입력하세요.');
		$('.emailDiv').css('color','#5f0080');
		$('.emailDiv').css('font-size','11pt');
		$('.emailDiv').css('font-weight','bold');
		
	}else if($('input[name=user_phone]').val()  ==''){
		$('.phoneDiv').text('핸드폰 번호를 입력하세요');
		$('.phoneDiv').css('color','#5f0080');
		$('.phoneDiv').css('font-size','11pt');
		$('.phoneDiv').css('font-weight','bold');
		
	}else if($('input[name=user_address1]').val()  ==''){
		$('.addressDiv1').text('주소를 입력하세요.');
		$('.addressDiv1').css('color','#5f0080');
		$('.addressDiv1').css('font-size','11pt');
		$('.addressDiv1').css('font-weight','bold');
		
	}else if($('input[name=user_address2]').val()  ==''){
		$('.addressDiv2').text('상세주소를 입력하세요.');
		$('.addressDiv2').css('color','#5f0080');
		$('.addressDiv2').css('font-size','11pt');
		$('.addressDiv2').css('font-weight','bold');		
		
	}else //폼이름 writeForm인놈 서브밋
		$('form[name=writeForm]').submit();
	
});
</script>