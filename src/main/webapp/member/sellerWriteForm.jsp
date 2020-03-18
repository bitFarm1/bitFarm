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
<form> 
<h2 align="center">판매자 회원가입</h2>
<div style="height:20px;"></div>
<div> 
	<table cellpadding="10px">  
		<tr> 
			<th class="subject">아이디*</th>
			<td><input class="layoutT" type="text" name="seller_id" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합"></td>
			<td><input class="layoutB" type="button" name="checkId" value="중복확인"></td>
		</tr>
		<tr>
			<th class="subject">비밀번호*</th>
			<td><input class="layoutT" type="password" name="seller_pwd" placeholder="비밀번호를 입력해주세요"></td>
			<td></td>
		</tr>
		<tr>
			<th class="subject">비밀번호확인*</th>
			<td style="padding-top: 2px;"><input class="layoutT" type="password" name="seller_repwd" placeholder="비밀번호를 한번 더 입력해주세요"></td>
			<td></td>
		</tr>
		<tr>
			<th class="subject">이름*</th>
			<td><input class="layoutT" type="text" name="seller_name" placeholder="고객님의 이름을 입력해주세요"></td>
			<td></td>
		</tr>
		<tr>
			<th class="subject">이메일*</th>
			<td><input class="layoutT" type="text" name="seller_email" placeholder="예: bitfarm@bitfarm.com"></td>
			<td><input class="layoutB" type="button" name="checkEmail" value="이메일 중복확인"></td>
		</tr>
		<tr>
			<th class="subject">휴대폰*</th>
			<td><input class="layoutT" type="text" name="seller_phone" placeholder="숫자만 입력해주세요"></td>
			<td></td>
		</tr>
				
		<tr>
			<th class="subject">사업자 번호*</th>
			<td><input class="layoutT" type="text"></td>
			<td></td>
		</tr>
		
			<tr>
			<th class="subject">사업장 주소*</th>
			<td><input class="layoutT" type="text" name="seller_address1"></td>
			<td valign="top"><input class="layoutB" type="button" name="checkAddress" value="주소 검색"></td>
		</tr> 
		
		<tr>
			<th class="subject"><p></th>
			<td style="padding-top: 2px;"><input class="layoutT" type="text" name="seller_address2"></td>
			<td ></td>
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
		&emsp;<input type="checkbox" name="selectAll"> 본인은 만 14세 이상입니다. (필수) 
	</div>	
	<div style="height: 10px;"></div>
</div>  
 
	<div style="weight: 100px; height: 100px; text-align: center;"> 
		<input class="join" type="button" value="가입하기"> 
	</div>
</form>