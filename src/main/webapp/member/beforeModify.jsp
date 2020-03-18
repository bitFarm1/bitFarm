<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
.box{
	width: 820px;
	height: 600px;
	margin: 0 auto;
}  

.layout{ 
	width: 340px;
	height: 54px;
	line-height: 20px;  
    border-radius: 3px; 
    background-color: #5f0080;
	border: #5f0080;
	color: white;
    outline: none;
    font-weight: bold; 
	}
</style>

<div class="box">
<h2>개인 정보 수정</h2><p>
<div style="text-align: center; width:820; height:450;">
<div style="border: 1px solid #5f0080;"></div>  
<img src="../image/modify.png" width="400" height="70">  
<div style="height: 10px"></div>
<div style="width 600; height:200; border:2px solid #CEBEE1;">
	<div style="padding: 30px 0; font-size: 10pt; font-weight: bold;">아이디<p>사용자아이디<p>비밀번호<p>
	<input style="width:150; height:30;"type="password" name="pwd"> 
	</div>   
</div>
	<input class="layout" type="submit" value="확인"> 
</div>    
</div>