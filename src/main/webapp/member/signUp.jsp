<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
	
	.box{
		
		width: 640px;
		height: 500px;
		top: 50%; 
		left: 50%; 
		margin: 0 auto;
	}
	.layoutB{ 
		width:270px; 
		height:170px;  
		background-color: #5f0080;  
		color: white; 
		border-radius: 5px;
		cursor: pointer;		
	}
}

</style>
<form name="signUpForm">
<div class="box">
<H2 align="center">회원가입</H2>
<div style="height:50px">

</div>
<table >
	<tr align="center"> 
		<td class="layoutB" onclick="location.href='sellerWriteForm.do'">판매자</td>
		<td style="width:100px; height:200px;">&nbsp;</td>
		<td class="layoutB" onclick="location.href='writeForm.do'">일반회원</td>
	</tr> 
</table>   
</div >
</form> 
<script type="text/javascript">
	
	

</script>