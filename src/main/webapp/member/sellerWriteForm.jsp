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
<form name="sellerWriteForm" method="post" enctype="multipart/form-data" action="/bitFarm/seller/write">   
<h2 align="center">판매자 회원가입</h2>
<div style="height:20px;"></div>
<div> 
	<table cellpadding="10px">    
		<tr> 
			<th class="subject">아이디*</th>
			<td style="vertical-align: top;"><input class="layoutT" type="text" id="id" name="seller_id" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합">&emsp;
			<input class="layoutB" id="seller_checkIdBtn" type="button" name="seller_checkId" value="중복확인"><br id="seller_id_p" style="display: none;"><span id="seller_id_Div" ></span></br></td>					
		</tr>  
		 
		<tr>    
			<th class="subject">비밀번호*</th>   
			<td><input class="layoutT" type="password" id="pwd" name="seller_pwd" placeholder="비밀번호를 입력해주세요"></td>
			
		</tr>
		<tr>
			<th class="subject">비밀번호확인*</th>
			<td style="padding-top: 2px;"><input class="layoutT" type="password" name="seller_repwd" placeholder="비밀번호를 한번 더 입력해주세요">
			<br id="seller_pwd_p" style="display: none;"><span id="seller_pwd_Div" ></span></br></td>
		</tr> 
		
		 
		<tr>
			<th class="subject">이름*</th>
			<td><input class="layoutT" type="text" name="seller_name" id="name" placeholder="고객님의 이름을 입력해주세요">
			<br id="seller_name_p" style="display: none;"><span id="seller_name_Div" ></span></br>
			</td>
		</tr>  
		
		<tr>
			<th class="subject">이메일*</th>
			<td><input class="layoutT" type="text" name="seller_email" id="email" placeholder="예: bitfarm@bitfarm.com">&emsp;
			<input class="layoutB" type="button" name="checkseller_email" value="이메일 인증">
			<br id="seller_email_p" style="display: none;"><span id="seller_email_Div" ></span></br>
			<input type="hidden" id="auth" name="auth" value="">
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
			<td><input class="layoutT" type="text" id="seller_address1" name="seller_address1" readonly="readonly">&emsp;
			<input class="layoutB" type="button" name="checkAddress" onclick="execDaumPostcode()" value="주소 검색">
			</td>
		</tr> 
		
		<tr>  
			<th class="subject"><br></th> 
			<td style="padding-top: 2px;"><input class="layoutT" type="text" id="seller_address2" name="seller_address2" >
			<br id="seller_address1_p" style="display: none;"><span id="seller_address1_Div" ></span></br>
			</td>
		</tr>  
		
		<tr>  
			<th class="subject">이미지 업로드</th>
			<td><input id="upload1" type="file" name="img" size="50">		
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
		&emsp;<input type="checkbox" id="check1" name="check"> 이용약관 (필수)&emsp;
		<a class="sign" onclick="openAgree1()" href="#">약관보기 ></a>
	</div>
	<div>
		&emsp;<input type="checkbox" id="check2" name="check"> 개인정보처리방침 (필수)&emsp;
		<a class="sign" onclick="openAgree()" href="#">약관보기 ></a>
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
var sid = false;
var sname = false;  
var semail = false; 
var sphone = false;
var slicense = false;

$('input[name=seller_id]').focusout(function(){
	var userIdCheck = RegExp(/^[A-Za-z0-9_\-]{5,15}$/);
	$('#seller_id_p').css("display", "none"); 
	$('#seller_id_Div').empty(); 
	
	if($('input[name=seller_id]').val()==''){		
		$('#seller_id_p').css("display", "block"); 
			$('#seller_id_Div').text('아이디를 입력하세요.');  
			$('#seller_id_Div').css('color','#5f0080');
			$('#seller_id_Div').css('font-weight','bold');
			$('#seller_id_Div').css('font-size','10pt');
	}else if(!(userIdCheck.test($('#id').val()))){		 
		$('#seller_id_p').css("display", "block") ;  
		$('#seller_id_Div').text('영문 숫자 5~15자로 입력 가능 (특수문자 불가)');  
		$('#seller_id_Div').css('color','red'); 
		$('#seller_id_Div').css('font-weight','bold');
		$('#seller_id_Div').css('font-size','10pt'); 
		$('#seller_checkIdBtn').attr('disabled', true);
	}else {
		$('#seller_checkIdBtn').attr('disabled', false);
	}
}); 

$('#seller_checkIdBtn').click(function(){

	if($('input[name=seller_id]').val()==''){		
		$('#seller_id_p').css("display", "block"); 
			$('#seller_id_Div').text('아이디를 입력하세요.');  
			$('#seller_id_Div').css('color','#5f0080');
			$('#seller_id_Div').css('font-weight','bold');
			$('#seller_id_Div').css('font-size','10pt');
			return;
	} 	
	
	$.ajax({
		type : 'post', 
		url : '/bitFarm/seller/checkID',  
		data : {'id' : $('input[name=seller_id]').val()}, 
		dataType : 'json', 
		success : function(data){
			//alert(JSON.stringify(data));  
			if(data.exist == 'exist'){
				$('#seller_id_p').css("display", "block");  
				$('#seller_id_Div').text('이미 존재하는 아이디입니다.');  
				$('#seller_id_Div').css('color','red');
				$('#seller_id_Div').css('font-weight','bold');
				$('#seller_id_Div').css('font-size','10pt');
			}else{
				$('#seller_id_p').css("display", "block"); 
				$('#seller_id_Div').text('사용가능합니다.');    
				$('#seller_id_Div').css('color','green');
				$('#seller_id_Div').css('font-weight','bold');
				$('#seller_id_Div').css('font-size','10pt');
				
				sid = true; 
			} 			
		} 
	}); 
});

$('input[name=seller_pwd]').focusout(function(){
	var userIdCheck = RegExp(/^[A-Za-z0-9_\-]{5,15}$/);
	$('#seller_pwd_Div').empty();
	$('#seller_pwd_Div').empty(); 
	
	if($('input[name=seller_pwd]').val()==''){
	$('#seller_pwd_p').css("display", "block"); 
			$('#seller_pwd_Div').text('비밀번호를 입력하세요.'); 
			$('#seller_pwd_Div').css('color','#5f0080');
			$('#seller_pwd_Div').css('font-weight','bold');
			$('#seller_pwd_Div').css('font-size','10pt');			
	}else if(!(userIdCheck.test($('#pwd').val()))){	 	 
		$('#seller_pwd_p').css("display", "block") ;  
		$('#seller_pwd_Div').text('영문 숫자 5~15자로 입력 가능 (특수문자 불가)');  
		$('#seller_pwd_Div').css('color','red'); 
		$('#seller_pwd_Div').css('font-weight','bold');
		$('#seller_pwd_Div').css('font-size','10pt'); 
		$('input[name=seller_repwd]').attr('readonly',true);
	}else{
		$('input[name=seller_repwd]').attr('readonly',false); 
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
		
		spwd = true;
	}   
}); 

$('input[name=seller_name]').focusout(function(){
	var RegexName = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\*]+$/; //이름 유효성 검사 2~4자 사이
	$('#seller_name_p').css("display", "none"); 
	$('#seller_name_Div').empty(); 
	
	if($('input[name=seller_name]').val()==''){
	$('#seller_name_p').css("display", "block");  
			$('#seller_name_Div').text('이름을 입력하세요.'); 
			$('#seller_name_Div').css('color','#5f0080');
			$('#seller_name_Div').css('font-weight','bold');
			$('#seller_name_Div').css('font-size','10pt');
			
		}else if ( !RegexName.test($.trim($("#name").val())) ){
			$('#seller_name_p').css("display", "block"); 
			$('#seller_name_Div').text('이름을 정확히 입력하세요.'); 
			$('#seller_name_Div').css('color','red'); 
			$('#seller_name_Div').css('font-weight','bold');
			$('#seller_name_Div').css('font-size','10pt');
			return;
			
		}else{
			sname = true;
		} 	 	
}); 

$('input[name=seller_email]').change(function(){	
	
	$('#auth').val('no');   
	semail = false; 
});  

$('input[name=seller_email]').focus(function(){
	if($('input[name=auth]').val() == 'ok'){ 
		$('#seller_email_p').css("display", "block");  
		$('#seller_email_Div').text('인증 성공');  
		$('#seller_email_Div').css('color','green');  
		$('#seller_email_Div').css('font-weight','bold');
		$('#seller_email_Div').css('font-size','10pt');		
		semail = true; 
	}	 
});

$('input[name=seller_email]').focusout(function(){
	$('#seller_email_p').css("display", "none"); 
	$('#seller_email_Div').empty(); 	
	
	if($('input[name=auth]').val() != 'ok'){ 		 
		$('#seller_email_p').css("display", "block");  
		$('#seller_email_Div').text('이메일 인증을 해주세요.');  
		$('#seller_email_Div').css('color','#5f0080');     
		$('#seller_email_Div').css('font-weight','bold');  
		$('#seller_email_Div').css('font-size','10pt');  
		semail = false;
	}
}); 

$('input[name=checkseller_email]').click(function(){ 
	var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	  // 검증에 사용할 정규식 변수 regExp에 저장
	  		  
	if($('input[name=seller_email]').val()==''){
		$('#seller_email_p').css("display", "block"); 
			$('#seller_email_Div').text('이메일을 입력하세요.');  
			$('#seller_email_Div').css('color','#5f0080');
			$('#seller_email_Div').css('font-weight','bold');
			$('#seller_email_Div').css('font-size','10pt');
			 	
	}else if ($('input[name=seller_email]').val().match(regExp) != null) {
		window.open("/bitFarm/seller/mailSending?email="+$('input[name=seller_email]').val(),"","width=505 height=120 left=750 top=280 scrollbars=yes");
	   
	}else {
		$('#seller_email_p').css("display", "block"); 
		$('#seller_email_Div').text('잘못된 이메일 형식입니다.');   
		$('#seller_email_Div').css('color','red');  
		$('#seller_email_Div').css('font-weight','bold');
		$('#seller_email_Div').css('font-size','10pt');
	 }	
});      


    
$('input[name=seller_phone]').focusout(function(){
	var regExp = /^\d{3}-\d{3,4}-\d{4}$/;

	$('#seller_phone_p').css("display", "none");  
	$('#seller_phone_Div').empty();  
	
	if($('input[name=seller_phone]').val()==''){ 
	$('#seller_phone_p').css("display", "block"); 
		$('#seller_phone_Div').text('핸드폰 번호를 입력하세요.'); 
		$('#seller_phone_Div').css('color','red');
		$('#seller_phone_Div').css('font-weight','bold');
		$('#seller_phone_Div').css('font-size','10pt');
		  
	}else if (!regExp.test($('input[name=seller_phone]').val())) {
		$('#seller_phone_p').css("display", "block"); 
		$('#seller_phone_Div').text('예시 : 010-1234-1234');  
		$('#seller_phone_Div').css('color','red');
		$('#seller_phone_Div').css('font-weight','bold'); 
		$('#seller_phone_Div').css('font-size','10pt');
	}else{
		sphone = true;
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
		}else{
			slicense = true;
		} 	
});

$('input[name=seller_address1]').focusout(function(){
	$('#seller_address1_p').css("display", "none"); 
	$('#seller_address1_Div').empty();
	
	if($('input[name=seller_address1]').val()==''){
	$('#seller_address1_p').css("display", "block"); 
			$('#seller_address1_Div').text('주소를 검색하세요.');  
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
	if(!(semail)){
		alert("필수 항목을 확인해주세요");
		return; 
	}
	if($('input[name=seller_address1]').val()==''){
		$('#seller_address1_p').css("display", "block"); 
				$('#seller_address1_Div').text('주소를 검색하세요.');  
				$('#seller_address1_Div').css('color','#5f0080'); 
				$('#seller_address1_Div').css('font-weight','bold');
				$('#seller_address1_Div').css('font-size','10pt'); 
				return; 
	}	 
	if($('input[name=seller_address2]').val()==''){ 
		$('#seller_address1_p').css("display", "block"); 
				$('#seller_address1_Div').text('주소를 입력하세요.');   
				$('#seller_address1_Div').css('color','#5f0080');
				$('#seller_address1_Div').css('font-weight','bold');
				$('#seller_address1_Div').css('font-size','10pt');  
				return; 
	}
 

	if(!(sid && spwd && sname && semail && sphone && slicense)){
		console.log("sid="+sid);
		console.log("spwd="+spwd);  
		console.log("sname="+sname); 
		console.log("semail="+semail);  
		console.log("sphone="+sphone); 
		console.log("slicense="+slicense); 
		
		alert("필수 입력 사항을 확인하세요!");
				
	}else if($('#check1').is(":checked") && $('#check2').is(":checked") && $('#seller_check3').is(":checked")){

		document.sellerWriteForm.submit(); 
		  
	}else{  
		alert("약관을 체크해주세요!");			       
	}  
} 
  


	function openAgree(){  
		window.open("/bitFarm/member/agree","","width=840 height=500 left=500 top=300 scrollbars=yes");
	}  
	 
	function openAgree1(){  
		window.open("/bitFarm/member/agree1","","width=840 height=500 left=500 top=300 scrollbars=yes");
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
                 
                document.getElementById("seller_address1").value = "("+data.zonecode+") "+roadAddr;
                                                              
            }
        }).open();
    } 
</script>
