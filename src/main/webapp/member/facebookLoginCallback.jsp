<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>Facebook Login JavaScript Example</title>
<meta charset="UTF-8">
</head>
<body>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
  function statusChangeCallback(response) {
    console.log('statusChangeCallback');
    console.log(response);
    if (response.status === 'connected') {
        alert("로그인 되었습니다.");
        
      testAPI();
    } 
  }
 
  function checkLoginState() {
    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });
  }
 
  window.fbAsyncInit = function() {
  FB.init({
    appId      : '1034845380233908',
    cookie     : true,  // enable cookies to allow the server to access 
                        // the session
    xfbml      : true,  // parse social plugins on this page
    version    : 'v6.0' // use graph api version 2.8
  });
 
  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });
 
  };
 
  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "https://connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
 
  function testAPI() {
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me',{fields:'email,name'}, function(response) {
      console.log('Successful Name: ' + response.name);
      console.log('Successful Email: ' + response.email);
      
      //javascript형식 문자열 추가하기
   /*    document.getElementById('status').innerHTML =
        '페이스북 로그인되었습니다. ' + response.name + '님!'; */
      
      //jQuery형 문자열 추가하기
      $('#userInfo').html("이름 : "+response.name+" 메일 : "+response.email);
      
    });
  }
  
    $(document).on("click","#logout",function(){ 
        FB.logout(function(response) {
           // Person is now logged out
               alert("로그아웃 되었습니다.");
               location.reload();
        });
      });
</script> 
 
<fb:login-button scope="public_profile,email" onlogin="checkLoginState();"></fb:login-button>
<div id="status"></div>
<div id="userInfo"></div>
</body> 
</html>
