<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    width: 270px;
    height: 54px;
    border: 0 none;
    border-radius: 3px;
    background-color: #5f0080;
    font-size: 16px;
    color: #fff; 
    line-height: 44px;
    font-weight: bold;
    
	}
	
	.join1 {
    width: 270px;
    height: 54px;
    border: 1px solid #5f0080;
    border-radius: 3px;
    background-color: #fff; 
    font-size: 16px;
    color: #5f0080;
    line-height: 44px;
    font-weight: bold;
    cursor: pointer;
	}
	
	a.sign {color:purple; text-decoration: none; }
	a.sign:link {color: purple; text-decoration: none;}
	a.sign:visited {color: purple; text-decoration: none;}
	a.sign:hover {color: #5f0080; text-decoration: none; font-weight: bolder;}
	a.sign:active {color: purple; text-decoration: none;}
}
	
</style>
<form name="modifyForm"> 
<h2 align="center">개인정보 수정</h2>
<div style="height:20px;"></div>
<div> 
	<table cellpadding="10px">  
		<tr id="hidden0">   
			<th class="subject">아이디*</th>
			<td style="vertical-align: top;"><input class="layoutT" type="text" name="member_id" value="${memberDTO.member_id }" readonly="readonly">&emsp;
			<br id="member_id_p" style="display: none;"><span id="member_id_Div" ></span></br></td>					
		</tr>   
	
		<tr id="hidden1">		
			<th class="subject">현재비밀번호</th> 
			<td style="padding-top: 2px;"><input class="layoutT" type="password" name="pwd">
			<br id="pwd_p" style="display: none;"><span id="pwdDiv" ></span></br></td> 
		</tr>
		<tr id="hidden2">   
			<th class="subject">비밀번호변경</th>   
			<td><input class="layoutT" type="password" name="member_pwd" readonly="readonly"></td>
		</tr>
		<tr id="hidden3"> 
			<th class="subject">비밀번호변경확인</th> 
			<td style="padding-top: 2px;"><input class="layoutT" type="password" name="member_repwd" readonly="readonly">
			<br id="member_pwd_p" style="display: none;"><span id="member_pwd_Div" ></span></br></td>
		</tr>
	 
		<tr>
			<th class="subject">이름*</th>
			<td><input class="layoutT" type="text" id="name" name="member_name" placeholder="고객님의 이름을 입력해주세요" value="${memberDTO.member_name }">
			<br id="member_name_p" style="display: none;"><span id="member_name_Div" ></span></br>
			</td>
		</tr> 
		
		<tr> 
			<th class="subject">이메일*</th>
			<td><input class="layoutT" type="text" name="member_email" placeholder="예: bitfarm@bitfarm.com" value="${memberDTO.member_email }">&emsp;
			<input class="layoutB" type="button" name="checkEmail" value="이메일 인증">
			<br id="member_email_p" style="display: none;"><span id="member_email_Div" ></span></br>
			<input type="hidden" id="auth" name="auth" value=""> 
			</td>			
		</tr>
		<tr> 
			<th class="subject">휴대폰*</th>
			<td><input class="layoutT" type="text" name="member_phone" placeholder="010-1234-1234" value="${memberDTO.member_phone }">
			<br id="member_phone_p" style="display: none;"><span id="member_phone_Div" ></span></br>
			</td> 
		</tr> 
		<tr>
			<th class="subject">배송 주소*</th>
			<td><input class="layoutT" type="text" id="member_address1" name="member_address1" readonly="readonly" value="${memberDTO.member_address1 }">&emsp;
			<input class="layoutB" type="button" name="checkAddress" onclick="execDaumPostcode()" value="주소 검색">
			<br id="member_address1_p" style="display: none;"><span id="member_address1_Div" ></span></br>
			</td>
		</tr> 
		 
		<tr>   
			<th class="subject"><br></th>
			<td style="padding-top: 2px;"><input class="layoutT" type="text" id="member_address2" name="member_address2" value="${memberDTO.member_address2}">
			<br id="member_address2_p" style="display: none;"><span id="member_address2_Div" ></span></br>
			</td>
		</tr> 
			
		<tr>
			<th class="subject">생년월일</th> 
			<c:if test="${memberDTO.member_birth != 0}"> 
			<td><input class="layoutT" type="text" name="member_birth" id="birth" placeholder="YYYYMMDD" value="${memberDTO.member_birth }">
			</c:if>
			<c:if test="${memberDTO.member_birth == 0}"> 
			<td><input class="layoutT" type="text" name="member_birth" id="birth" placeholder="YYYYMMDD">
			</c:if> 
			<br id="member_birth_p" style="display: none;"><span id="member_birth_Div" ></span></br>
			</td>
	</table>  
</div> 
	<div style="height: 40px;"></div>   
	<div style="weight: 600px; height: 100px; text-align: center;"> 
		<input class="join1" type="button" id="modifyFormBtn" value="수정완료">
	</div>
</form>

<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">


var sname = true;
var semail = true; 
var sphone = true;
var spwd = true
	
$(document).ready(function(){
	if('${loginType}' != 'bit'){
		$('#hidden0').css("display", "none"); 
		$('#hidden1').css("display", "none");  
		$('#hidden2').css("display", "none");    
		$('#hidden3').css("display", "none");   
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
		sname = false;
		return;
	}else if ( !RegexName.test($.trim($("#name").val())) ){
		$('#member_name_p').css("display", "block"); 
		$('#member_name_Div').text('이름을 정확히 입력하세요.'); 
		$('#member_name_Div').css('color','red'); 
		$('#member_name_Div').css('font-weight','bold');
		$('#member_name_Div').css('font-size','10pt');
		sname = false;
		return;

	}else{
		sname = true;
	} 	
});

$('input[name=pwd]').focusout(function(){
	$('#pwd_p').css("display", "none"); 
	$('#pwdDiv').empty(); 
	 
	if($('input[name=pwd]').val()==''){
		$('#pwd_p').css("display", "block");  
				$('#pwdDiv').text('현재비밀번호를 입력하세요.'); 
				$('#pwdDiv').css('color','red');
				$('#pwdDiv').css('font-weight','bold');
				$('#pwdDiv').css('font-size','10pt');			
	}else{
		$.ajax({
			type : 'post',
			url : '/bitFarm/member/checkPwd',
 			data : {'pwd' : $('input[name=pwd]').val(),
 					'id' : '${memberId}'},  
			dataType : 'json',
			success : function(data){						 
				if(data.login == 'fail'){  
					$('#pwd_p').css("display", "block");  
					$('#pwdDiv').text('잘못된 비밀번호입니다.'); 
	        		$('#pwdDiv').css('color','red');
	        		$('#pwdDiv').css('font-weight','bold');  
	        		$('#pwdDiv').css('font-size','9pt');
	        		$('input[name=member_pwd]').prop('readonly', true);
	        		$('input[name=member_repwd]').prop('readonly', true);
	        		
				}else{ 
					$('#pwd_p').css("display", "block");  
					$('#pwdDiv').text('비밀번호 일치'); 
	        		$('#pwdDiv').css('color','green');
	        		$('#pwdDiv').css('font-weight','bold'); 
	        		$('#pwdDiv').css('font-size','9pt');  
	        		$('input[name=member_pwd]').prop('readonly', false);
	        		$('input[name=member_repwd]').prop('readonly', false); 
	        		
				} 
			} 
		});
	} 
});

$('input[name=member_pwd]').focus(function(){
	$('#member_pwd_Div').empty();
	$('#member_pwd_Div').empty(); 
	
	if($('input[name=pwd]').val()==''){
	$('#member_pwd_p').css("display", "block"); 
			$('#member_pwd_Div').text('변경을 원하시면 입력하세요.'); 
			$('#member_pwd_Div').css('color','#5f0080');
			$('#member_pwd_Div').css('font-weight','bold');
			$('#member_pwd_Div').css('font-size','10pt');	 		
	} 
});

$('input[name=member_repwd]').focus(function(){
	$('#member_pwd_Div').empty();
	$('#member_pwd_Div').empty(); 
	
	if($('input[name=pwd]').val()==''){
	$('#member_pwd_p').css("display", "block"); 
			$('#member_pwd_Div').text('현재비밀번호를 입력하세요.'); 
			$('#member_pwd_Div').css('color','#5f0080');
			$('#member_pwd_Div').css('font-weight','bold');
			$('#member_pwd_Div').css('font-size','10pt');	
			
	} 
});

$('input[name=member_pwd]').focusout(function(){
	
	$('#member_pwd_Div').empty();
	$('#member_pwd_Div').empty(); 
	
	if($('input[name=pwd]').val()==''){
	$('#member_pwd_p').css("display", "block"); 
			$('#member_pwd_Div').text('현재비밀번호를 입력하세요.'); 
			$('#member_pwd_Div').css('color','#5f0080');
			$('#member_pwd_Div').css('font-weight','bold');
			$('#member_pwd_Div').css('font-size','10pt');			
	} 
});
 
$('input[name=member_repwd]').focusout(function(){
	$('#member_pwd_Div').empty();
	$('#member_pwd_Div').empty(); 
	 
	if($('input[name=pwd]').val()==''){
		$('#member_pwd_p').css("display", "block"); 
		$('#member_pwd_Div').text('현재비밀번호를 입력하세요!'); 
		$('#member_pwd_Div').css('color','#5f0080');
		$('#member_pwd_Div').css('font-weight','bold');  
		$('#member_pwd_Div').css('font-size','10pt');
		
	}else if($('input[name=member_pwd]').val()!=$('input[name=member_repwd]').val()){
		$('#member_pwd_p').css("display", "block"); 
		$('#member_pwd_Div').text('비밀번호가 일치하지 않습니다!'); 
		$('#member_pwd_Div').css('color','#5f0080');
		$('#member_pwd_Div').css('font-weight','bold'); 
		$('#member_pwd_Div').css('font-size','10pt');
		spwd = false; 
		
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
		sname = false;
		return;
	}else if ( !RegexName.test($.trim($("#name").val())) ){
		$('#member_name_p').css("display", "block"); 
		$('#member_name_Div').text('이름을 정확히 입력하세요.'); 
		$('#member_name_Div').css('color','red'); 
		$('#member_name_Div').css('font-weight','bold');
		$('#member_name_Div').css('font-size','10pt');
		sname = false;
		return;

	}else{
		sname = true;
	} 		
});

$('input[name=member_email]').change(function(){	
	if($('input[name=member_email]').val() != '${memberDTO.member_email }'){
		$('#auth').val('no');    
		semail = false;
	} 
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
	
	if($('input[name=member_email]').val() == '${memberDTO.member_email }')
		return; 
	
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

$('input[name=member_birth]').focusout(function(){ 
	var userCheck = RegExp(/^[0-9]{8}$/)
	$('#member_birth_p').css("display", "none"); 
	$('#member_birth_Div').empty(); 
	 
	if($('input[name=member_birth]').val()==''){ 
	$('#member_birth_p').css("display", "block"); 
			$('#member_birth_Div').text('생일을 입력하세요.');   
			$('#member_birth_Div').css('color','#5f0080');
			$('#member_birth_Div').css('font-weight','bold');
			$('#member_birth_Div').css('font-size','10pt'); 
			
	}else if(!(userCheck.test($('#birth').val()))){	 	 
		$('#member_birth_p').css("display", "block") ;  
		$('#member_birth_Div').text('예시 : 19941112');   
		$('#member_birth_Div').css('color','red'); 
		$('#member_birth_Div').css('font-weight','bold');
		$('#member_birth_Div').css('font-size','10pt'); 
		$('#modifyFormBtn').attr('disabled', true); 
	}else {
		$('#modifyFormBtn').attr('disabled', false); 
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
		sphone = false;
		  
	}else if (!regExp.test($('input[name=member_phone]').val())) {
		$('#member_phone_p').css("display", "block"); 
		$('#member_phone_Div').text('예시 : 010-1234-1234');  
		$('#member_phone_Div').css('color','red');
		$('#member_phone_Div').css('font-weight','bold'); 
		$('#member_phone_Div').css('font-size','10pt');
		sphone = false;
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
		$('#modifyFormBtn').attr('disabled', true); 
	}else {
		$('#modifyFormBtn').attr('disabled', false);       
	}
});

$('#modifyFormBtn').click(function(){
	
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
	
	if(!(spwd && sname && semail && sphone)){
		
		console.log("spwd="+spwd);  
		console.log("sname="+sname); 
		console.log("semail="+semail);  
		console.log("sphone="+sphone);      
	
		alert("필수 입력 사항을 확인하세요!"); 
		return;    
	}
	 
	document.modifyForm.method = 'post'; 
	document.modifyForm.action = '/bitFarm/member/modify'; 
	document.modifyForm.submit();

}); 


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

