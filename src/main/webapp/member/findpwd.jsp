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
 

<form action="">  
<div class="box"> 
<h1 align="center">비밀번호 찾기</h1> 
	<div> 
		<strong>이름</strong>
		<div style="height: 5px"></div>		
		<input class="layout" type="text" name="name" placeholder=" 고객님의 이름을 입력해주세요" style="font-size:15px;">
	</div>
		<div style="height:15px;"></div> 
	<div>
		<strong>아이디</strong>
		<div style="height: 5px"></div>		
		<input class="layout" type="text" name="id" placeholder=" 가입 시 등록하신 이메일 주소를 입력해주세요" style="font-size:15px;">
		<div style="height:15px;"></div>
	</div> 
	<div>
		<strong>이메일</strong>
		<div style="height: 5px"></div>		
		<input class="layout" type="text" name="email" placeholder=" 가입 시 등록하신 이메일 주소를 입력해주세요" style="font-size:15px;">
	</div> 
 
		<div style="height:25px;"></div>
	<div>
		<input class="layout" type="button" value="확인" style="color: white; background-color: #5f0080; border: #5f0080; border-radius: 3px;">
	</div>  	
</div>  
</form>

