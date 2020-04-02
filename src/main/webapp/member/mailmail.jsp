<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style type="text/css">

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
</style> 

	<h3>인증 번호를 입력하세요. </h3><input class="layoutT" type="text" id="number" name="number" placeholder="인증 번호를 입력하세요.">&emsp;
	<input class="layoutB" type="button" id="numberCheck" name="numberCheck" value="확인">
	<span id="numberDiv" ></span>     		
	 
	
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$('#numberCheck').click(function(){
	
	if($('#number').val() == '${num}'){    
		alert("성공");
		opener.document.forms[0].auth.value = 'ok';     
		window.close();       
		opener.document.forms[0].member_email.focus();  
	}else{
		alert("번호가 일치하지 않습니다."); 
	}  
});

</script>			
     