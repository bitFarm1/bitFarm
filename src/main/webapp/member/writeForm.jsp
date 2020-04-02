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
	.sign {
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
			<td style="vertical-align: top;"><input class="layoutT" type="text" id="id" name="member_id" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합">&emsp;
			<input class="layoutB" type="button" id="member_checkIdBtn" name="member_checkId" value="중복확인"><br id="member_id_p" style="display: none;"><span id="member_id_Div" ></span></br></td>					
		</tr>  
		 
		<tr>   
			<th class="subject">비밀번호*</th>   
			<td><input class="layoutT" type="password" id="pwd" name="member_pwd" placeholder="비밀번호를 입력해주세요"></td>
			
		</tr>
		<tr>
			<th class="subject">비밀번호확인*</th>
			<td style="padding-top: 2px;"><input class="layoutT" type="password" name="member_repwd" placeholder="비밀번호를 한번 더 입력해주세요">
			<br id="member_pwd_p" style="display: none;"><span id="member_pwd_Div" ></span></br></td>
		</tr>
		
		<tr>
			<th class="subject">이름*</th>
			<td><input class="layoutT" type="text" id="name" name="member_name" placeholder="고객님의 이름을 입력해주세요">
			<br id="member_name_p" style="display: none;"><span id="member_name_Div" ></span></br>
			</td>
		</tr> 
		
		<tr>   
			<th class="subject">이메일*</th>
			<td><input class="layoutT" type="text" id="email" name="member_email" placeholder="예: bitfarm@bitfarm.com">&emsp;
			<input class="layoutB" type="button" name="checkEmail" value="이메일 인증">
			<br id="member_email_p" style="display: none;"><span id="member_email_Div" ></span></br>
			
			</td>			 
		</tr>
		<tr> 
			<th class="subject">휴대폰*</th>
			<td><input class="layoutT" type="text" name="member_phone" placeholder="010-1234-1234">
			<br id="member_phone_p" style="display: none;"><span id="member_phone_Div" ></span></br>
			</td> 
		</tr>
		<tr>
			<th class="subject">배송 주소*</th>
			<td><input class="layoutT" type="text" id="member_address1" name="member_address1" readonly="readonly">&emsp;
			<input class="layoutB" type="button" name="checkAddress" onclick="execDaumPostcode()" value="주소 검색">
			<br id="member_address1_p" style="display: none;"><span id="member_address1_Div" ></span></br>
			</td>
		</tr> 
		 
		<tr>   
			<th class="subject"><br></th>
			<td style="padding-top: 2px;"><input class="layoutT" type="text" id="member_address2" name="member_address2">
			<br id="member_address2_p" style="display: none;"><span id="member_address2_Div" ></span></br>
			</td>
		</tr> 
				
		<tr>
			<th class="subject">생년월일</th>
			<td><input class="layoutT" type="text" id="birth" name="member_birth" placeholder="YYYYMMDD">
			<br id="member_birth_p" style="display: none;"><span id="member_birth_Div" ></span></br>
			</td>			
		</tr>
	</table>
	<input type="hidden" id="auth" name="auth" value=""> 
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
		&emsp;<input type="checkbox" id="check1" name="check"> 이용약관 (필수)&emsp;
		<a class="sign" href="#" onclick="openAgree1()">약관보기 ></a> 
	</div>
	<div>
		&emsp;<input type="checkbox" id="check2"  name="check"> 개인정보처리방침 (필수)&emsp;
		<a class="sign" href="#" onclick="openAgree()">약관보기 ></a>
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
		<input class="join" name="writeFormBtn" id="writeFormBtn" type="button" onclick="checkMemberWrite()" value="가입하기"> 
	</div>
		<input type="hidden" name="member_loginType" value="bit"> 
</form>

<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
var sid = false; 
var sname = false;
var semail = false; 
var sphone = false;
 

$('input[name=member_id]').focusout(function(){	
	var userIdCheck = RegExp(/^[A-Za-z0-9_\-]{5,15}$/);
	$('#member_id_p').css("display", "none"); 
	$('#member_id_Div').empty(); 
	
	if($('input[name=member_id]').val() ==''){
	$('#member_id_p').css("display", "block"); 
		$('#member_id_Div').text('아이디를 입력하세요.');  
		$('#member_id_Div').css('color','red');
		$('#member_id_Div').css('font-weight','bold');
		$('#member_id_Div').css('font-size','10pt');
		$('#member_checkIdBtn').attr('disabled', true); 
		
	}else if(!(userIdCheck.test($('#id').val()))){	 	 
		$('#member_id_p').css("display", "block") ;  
		$('#member_id_Div').text('영문 숫자 5~15자로 입력 가능 (특수문자 불가)');  
		$('#member_id_Div').css('color','red'); 
		$('#member_id_Div').css('font-weight','bold');
		$('#member_id_Div').css('font-size','10pt'); 
		$('#member_checkIdBtn').attr('disabled', true);
	}else {
		$('#member_checkIdBtn').attr('disabled', false); 
	}
});

$('#member_checkIdBtn').click(function(){
	if($('input[name=member_id]').val() ==''){
		$('#member_id_p').css("display", "block"); 
			$('#member_id_Div').text('아이디를 입력하세요.');  
			$('#member_id_Div').css('color','#5f0080');
			$('#member_id_Div').css('font-weight','bold');
			$('#member_id_Div').css('font-size','10pt');
			return;
		} 
	
	$.ajax({ 
		type : 'post',  
		url : '/bitFarm/member/checkID', 
		data : {'id' : $('input[name=member_id]').val()}, 
		dataType : 'json', 
		success : function(data){
			//alert(JSON.stringify(data));  
			if(data.exist == 'exist'){
				$('#member_id_p').css("display", "block");  
				$('#member_id_Div').text('이미 존재하는 아이디입니다.');  
				$('#member_id_Div').css('color','red');
				$('#member_id_Div').css('font-weight','bold');
				$('#member_id_Div').css('font-size','10pt');
			}else{
				$('#member_id_p').css("display", "block"); 
				$('#member_id_Div').text('사용가능합니다.');    
				$('#member_id_Div').css('color','green');
				$('#member_id_Div').css('font-weight','bold');
				$('#member_id_Div').css('font-size','10pt');
				
				sid = true;
			} 			 
		} 
	}); 
});

$('input[name=member_pwd]').focusout(function(){
	var userIdCheck = RegExp(/^[A-Za-z0-9_\-]{5,15}$/);
	$('#member_pwd_Div').empty();
	$('#member_pwd_Div').empty(); 
	
	if($('input[name=member_pwd]').val()==''){
	$('#member_pwd_p').css("display", "block"); 
			$('#member_pwd_Div').text('비밀번호를 입력하세요.'); 
			$('#member_pwd_Div').css('color','#5f0080');
			$('#member_pwd_Div').css('font-weight','bold');
			$('#member_pwd_Div').css('font-size','10pt');			
	}else if(!(userIdCheck.test($('#pwd').val()))){	 	 
		$('#member_pwd_p').css("display", "block") ;  
		$('#member_pwd_Div').text('영문 숫자 5~15자로 입력 가능 (특수문자 불가)');  
		$('#member_pwd_Div').css('color','red'); 
		$('#member_pwd_Div').css('font-weight','bold');
		$('#member_pwd_Div').css('font-size','10pt'); 
		$('input[name=member_repwd]').attr('readonly',true);
	}else{
		$('input[name=member_repwd]').attr('readonly',false); 
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
		spwd = true;
	}   
});



$('input[name=member_name]').focusout(function(){
	var RegexName = /^[가-힣]{2,5}$/; //이름 유효성 검사 2~4자 사이
	$('#member_name_p').css("display", "none"); 
	$('#member_name_Div').empty(); 
	
	if($('input[name=member_name]').val()==''){ 
	$('#member_name_p').css("display", "block"); 
		$('#member_name_Div').text('이름을 입력하세요.'); 
		$('#member_name_Div').css('color','red'); 
		$('#member_name_Div').css('font-weight','bold');
		$('#member_name_Div').css('font-size','10pt'); 
		
		}else if ( !RegexName.test($.trim($("#name").val())) ){
			$('#member_name_p').css("display", "block"); 
			$('#member_name_Div').text('이름을 정확히 입력하세요.'); 
			$('#member_name_Div').css('color','red'); 
			$('#member_name_Div').css('font-weight','bold');
			$('#member_name_Div').css('font-size','10pt');
			return;
 
		}else{
			sname = true;
		} 	
});

$('input[name=member_email]').change(function(){	
	
	$('#auth').val('no');   
	semail = false;
}); 

$('input[name=member_email]').focus(function(){
	if($('input[name=auth]').val() == 'ok'){ 
		$('#member_email_p').css("display", "block");  
		$('#member_email_Div').text('인증 성공');  
		$('#member_email_Div').css('color','green');  
		$('#member_email_Div').css('font-weight','bold');
		$('#member_email_Div').css('font-size','10pt');	
		semail = true;
	}	 
});

$('input[name=member_email]').focusout(function(){
	$('#member_email_p').css("display", "none"); 
	$('#member_email_Div').empty(); 	
	
	if($('input[name=auth]').val() != 'ok'){ 		 
		$('#member_email_p').css("display", "block"); 
		$('#member_email_Div').text('이메일 인증을 해주세요.');  
		$('#member_email_Div').css('color','#5f0080');     
		$('#member_email_Div').css('font-weight','bold');
		$('#member_email_Div').css('font-size','10pt'); 
		semail = false;
	}
});


$('input[name=checkEmail]').click(function(){ 
	var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	  // 검증에 사용할 정규식 변수 regExp에 저장
	  		  
	if($('input[name=member_email]').val()==''){
		$('#member_email_p').css("display", "block"); 
			$('#member_email_Div').text('이메일을 입력하세요.');  
			$('#member_email_Div').css('color','#5f0080');
			$('#member_email_Div').css('font-weight','bold');
			$('#member_email_Div').css('font-size','10pt');
			 	
	}else if ($('input[name=member_email]').val().match(regExp) != null) {
		window.open("/bitFarm/member/mailSending?email="+$('input[name=member_email]').val(),"","width=505 height=120 left=750 top=280 scrollbars=yes");
	 
	}else {
		$('#member_email_p').css("display", "block"); 
		$('#member_email_Div').text('잘못된 이메일 형식입니다.');  
		$('#member_email_Div').css('color','red'); 
		$('#member_email_Div').css('font-weight','bold');  
		$('#member_email_Div').css('font-size','10pt'); 
	 }	
});      

 
     
$('input[name=member_phone]').focusout(function(){
	var regExp = /^\d{3}-\d{3,4}-\d{4}$/;

	$('#member_phone_p').css("display", "none"); 
	$('#member_phone_Div').empty();  
	
	if($('input[name=member_phone]').val()==''){ 
	$('#member_phone_p').css("display", "block"); 
		$('#member_phone_Div').text('핸드폰 번호를 입력하세요.'); 
		$('#member_phone_Div').css('color','red');
		$('#member_phone_Div').css('font-weight','bold');
		$('#member_phone_Div').css('font-size','10pt');
		  
	}else if (!regExp.test($('input[name=member_phone]').val())) {
		$('#member_phone_p').css("display", "block"); 
		$('#member_phone_Div').text('예시 : 010-1234-1234');  
		$('#member_phone_Div').css('color','red');
		$('#member_phone_Div').css('font-weight','bold'); 
		$('#member_phone_Div').css('font-size','10pt');
	}else{
		sphone = true;
	}	
});
 

$('input[name=member_address1]').focusout(function(){
	$('#member_address1_p').css("display", "none"); 
	$('#member_address1_Div').empty();
	
	if($('input[name=member_address1]').val()==''){
	$('#member_address1_p').css("display", "block"); 
			$('#member_address1_Div').text('주소를 검색하세요.');  
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

$('input[name=member_birth]').focusout(function(){ 
	var userCheck = RegExp(/^[0-9]{8}$/)
	$('#member_birth_p').css("display", "none"); 
	$('#member_birth_Div').empty(); 
	 
	if($('input[name=member_birth]').val()==''){ 
	$('#member_birth_p').css("display", "block"); 
			$('#member_birth_Div').text('생일은 선택사항 입니다.'); 
			$('#member_birth_Div').css('color','#5f0080');
			$('#member_birth_Div').css('font-weight','bold');
			$('#member_birth_Div').css('font-size','10pt'); 
			
	}else if(!(userCheck.test($('#birth').val()))){	 	 
		$('#member_birth_p').css("display", "block") ;  
		$('#member_birth_Div').text('예시 : 19941112');   
		$('#member_birth_Div').css('color','red'); 
		$('#member_birth_Div').css('font-weight','bold');
		$('#member_birth_Div').css('font-size','10pt'); 
		$('#writeFormBtn').attr('disabled', true); 
	}else {
		$('#writeFormBtn').attr('disabled', false); 
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
	if(!(semail)){
		alert("필수 항목을 확인 해주세요");  
		return;
	}
	if($('input[name=member_address1]').val()==''){
		$('#member_address1_p').css("display", "block"); 
				$('#member_address1_Div').text('주소를 검색하세요.');  
				$('#member_address1_Div').css('color','#5f0080'); 
				$('#member_address1_Div').css('font-weight','bold');
				$('#member_address1_Div').css('font-size','10pt'); 
				return;
	}	 
	if($('input[name=member_address2]').val()==''){ 
		$('#member_address1_p').css("display", "block"); 
				$('#member_address1_Div').text('주소를 입력하세요.');   
				$('#member_address1_Div').css('color','#5f0080');
				$('#member_address1_Div').css('font-weight','bold');
				$('#member_address1_Div').css('font-size','10pt'); 
				return; 
	}

	if(!(sid && spwd && sname && semail && sphone)){
		
		console.log("sid="+sid);
		console.log("spwd="+spwd);  
		console.log("sname="+sname); 
		console.log("semail="+semail);  
		console.log("sphone="+sphone); 
	
		alert("필수 입력 사항을 확인하세요!"); 
		return; 
		
	}else if($('#check1').is(":checked") && $('#check2').is(":checked") && $('#member_check3').is(":checked")){
						
			document.memberWriteForm.method = 'post'; 
			document.memberWriteForm.action = '/bitFarm/member/write';
			document.memberWriteForm.submit();
				  
	}else {
		alert("약관을 체크해주세요!");   
	}  
}  
	 

function openAgree(){  
	window.open("/bitFarm/member/agree","","width=840 height=500 left=500 top=300 scrollbars=yes");
}  
 
function openAgree1(){  
	window.open("/bitFarm/member/agree1","","width=840 height=500 left=500 top=300 scrollbars=yes");
}    

</script> 
 
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {  
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분. 

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다. 
                 
                document.getElementById("member_address1").value = "("+data.zonecode+") "+roadAddr;
                                                               
            }
        }).open();
    }
</script>
