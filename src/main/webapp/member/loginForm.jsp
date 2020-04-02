<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
a.searchA {color:blak; text-decoration: none; font-size: 8pt;}
a.searchA:link {color: black; text-decoration: none;}
a.searchA:visited {color: black; text-decoration: none;}
a.searchA:hover {color: #5f0080; text-decoration: none; font-weight: bolder;}
a.searchA:active {color: black; text-decoration: none;}

.box{
	margin: 0 auto;
	width: 340px;
	height: 450px;
	top: 50%; 
	left: 50%;  
	
}

.layout{  
	width: 340px;
	height: 54px;
	line-height: 20px;   
    border-radius: 3px; 
    background: #fff;
    border: 1px solid #5f0080;
    outline: none; 
    color: #5f0080; 
    padding: 0 15px;
}

</style> 

 
<form action=""> 
<div class="box">  

<h2 align="center">로그인</h2>
	<div>
		<input class="layout" type="text" name="id" placeholder=" 아이디를 입력해주세요" style="font-size:15px; width:308px;">
		<div id="loginIdDiv"></div>
	</div>
		<div style="height:5px;"></div>
	<div>
		<input class="layout" type="password" name="pwd" id="pwd" placeholder=" 비밀번호를 입력해주세요" style="font-size:15px; width:308px;">
		<div id="loginPwdDiv" align= "left"></div>		
	</div>
	<div style="width:340px; height:20px;" >
	 
	</div>  
		  
	<div align="right">
		<a class="searchA" href="/bitFarm/seller/sellerLoginForm">판매자 로그인</a> 
		<a class="searchA" href="/bitFarm/member/findIdForm">아이디 찾기</a> 
		<a class="searchA" href="/bitFarm/member/findPwdForm">비밀번호 찾기</a>&nbsp;
		<div style="height:5px;"></div>  
		<input class="layout" type="button" id="loginBtn" value="로그인" style="color: white; background-color: #5f0080; border: #5f0080; border-radius: 5px; cursor: pointer;">
	</div>   
		<div style="height:5px;"></div>
	<div>
		<input class="layout" type="button" value="회원가입" onclick="location.href='signUp'" style="border-radius: 5px; cursor: pointer;"> 
	</div>	 
		<div style="height:5px;"></div>   
	<div style="height:60px;"> 
		<div id="naverIdLogin" style="float:left; width:65px;"></div> 
		
		<div style="float:left; width:65px;">    
			<a id="custom-login-btn" href="javascript:loginWithKakao()">
				<img src="../image/kakao.png" width="54"/>
			</a>
		</div>
		 
		<div>  
		<img class="button facebook" id="facebookBtn" src="../image/facebook.jpg" width="54" style="cursor: pointer;"/>
		</div>	    
			   
  
	</div>  

</div>   
</form>

<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript">

	var naverLogin = new naver.LoginWithNaverId( 
		{
			clientId: "6e2AC3FsiPra5HM8Xm5w",
			callbackUrl: "http://localhost:8080/bitFarm/member/naverLoginCallback.jsp",
			isPopup: false, /* 팝업을 통한 연동처리 여부 */
			loginButton: {color: "white", type: 1, height: 54} /* 로그인 버튼의 타입을 지정 */
		}   
	); 
	
	/* 설정정보를 초기화하고 연동을 준비 */ 
	naverLogin.init(); 	
	
//////////////////////////////////////////////////////////////////////////////////////////////
	
	  Kakao.init('a60e0ff04e91bc59cb5a460f86a8747d');
    function loginWithKakao() {
      // 로그인 창을 띄웁니다.
      Kakao.Auth.login({
        success: function(authObj) {
        	 Kakao.API.request({
                 url: '/v2/user/me',
                 success: function(res) {
                //	 alert(JSON.stringify(res)); //<---- kakao.api.request 에서 불러온 결과값 json형태로 출력
                //   alert(JSON.stringify(authObj)); //<----Kakao.Auth.createLoginButton에서 불러온 결과값 json형태로 출력
                          
                //	 alert("아이디:"+res.id+" 이메일:"+res.kakao_account.email+" 닉네임:"+res.properties['nickname']);    
                	 window.location.href="http://localhost:8080/bitFarm/member/naver?name="+res.properties['nickname']+"&email="+res.kakao_account.email+"&type=kakao";  
                 },
                 fail: function(error) {
                   alert(JSON.stringify(error));  
                 }
               }); 
        }, 
        fail: function(err) { 
          alert(JSON.stringify(err));
        }
      });
    };
    
//////////////////////////////////////////////////////////////////////////////////////////////
  
function getUserData() {
    /* FB.api('/me', function(response) {
        document.getElementById('response').innerHTML = 'Hello ' + response.name;
        console.log(response);
    }); */
    FB.api('/me', {fields: 'name,email'}, function(response) {
        console.log(JSON.stringify(response));
               
        window.location.href="http://localhost:8080/bitFarm/member/naver?name="+response.name+"&email="+response.email+"&type=facebook"; 
    });
}
  
window.fbAsyncInit = function() {
    //SDK loaded, initialize it
    FB.init({
        appId      : '1034845380233908',
        cookie     : true,  // enable cookies to allow the server to access 
                // the session
        xfbml      : true,  // parse social plugins on this page
        version    : 'v6.0' // use graph api version 2.8
    });
  
    //check user session and refresh it
    FB.getLoginStatus(function(response) {
        if (response.status === 'connected') {
            //user is authorized
            //document.getElementById('loginBtn').style.display = 'none';
            getUserData();
        } else {
            //user is not authorized
        }
    });
};
  
//load the JavaScript SDK
(function(d, s, id){
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {return;}
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.com/ko_KR/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
  
//add event listener to login button
document.getElementById('facebookBtn').addEventListener('click', function() {
    //do the login

    FB.login(function(response) {
        if (response.authResponse) {
            access_token = response.authResponse.accessToken; //get access token
            user_id = response.authResponse.userID; //get FB UID
            console.log('access_token = '+access_token);
            console.log('user_id = '+user_id);
            //$("#access_token").text("접근 토큰 : "+access_token);
            //$("#user_id").text("FB UID : "+user_id);
            //user just authorized your app
            //document.getElementById('loginBtn').style.display = 'none';
            getUserData();
        }
    }, {scope: 'email,public_profile',  
        return_scopes: true});
}, false);
   
   
    /////////////////////////////////////////////////// 
    $('#loginBtn').click(function(){
    	$('#loginIdDiv').empty();
    	$('#loginPwdDiv').empty(); 
    	if($('input[name=id]').val()==''){
    		$('#loginIdDiv').text('아이디를 입력해주세요.');
    		$('#loginIdDiv').css('color','red');
    		$('#loginIdDiv').css('font-weight','bold');
    		$('#loginIdDiv').css('font-size','9pt');
    		
    	}else if($('input[name=pwd]').val()==''){
        		$('#loginPwdDiv').text('비밀번호를 입력해주세요.'); 
        		$('#loginPwdDiv').css('color','red');
        		$('#loginPwdDiv').css('font-weight','bold');
        		$('#loginPwdDiv').css('font-size','9pt');
    	}else{ 
    		$.ajax({ 
    			type : 'post',
    			url : '/bitFarm/member/login',
    			data : {'id' : $('input[name=id]').val(),  
    					'pwd' : $('input[name=pwd]').val()},
    			dataType : 'json',
    	 		success : function(data){
    				//alert(data.login);  
    				if(data.login == 'fail'){ 
    					$('#loginPwdDiv').text('가입하지 않은 아이디이거나, 잘못된 비밀번호입니다.'); 
    	        		$('#loginPwdDiv').css('color','red');
    	        		$('#loginPwdDiv').css('font-weight','bold');
    	        		$('#loginPwdDiv').css('font-size','9pt');
    				}else{
    					location.href="/bitFarm/main/main";
    				}
    			}
    		});     		
    	}
    });
     
    $("#pwd").keydown(function (key) { 
        if (key.keyCode == 13) { // 엔터키면
            $("#loginBtn").focus(); // 암호에 포커스
        }
    });

    
    
</script>

