<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style type="text/css">
	a.info {color:black; text-decoration: none; font-size: 10pt;}  
	a.info:link {color: black; text-decoration: none;}
	a.info:visited {color: black; text-decoration: none;}
	a.info:hover {color: #5f0080; text-decoration: none; font-weight: bolder;} 
	a.info:active {color: black; text-decoration: none;} 

th{
	background-color: #F7F5F8;
}
.contents{ 
			white-space: pre-wrap;
			word-break: break-all;
			width: 500px; 
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
	
	td{
		border-bottom: 1px solid #e5e5e5; 
	}	
</style>

<form name="infoQnAlistADMIN"> 
<div style="width:1200px; margin: 0 auto;">
<h3>1:1 문의 내역</h3> 
	<table id="infoListTable" width="1200px" cellpadding="15" style="border-top: 2px solid #5f0080; font-size: 12px; border-collapse: collapse;"> 
		<tr> 
			<th>글번호</th>
			<th width="250px;">제목</th> 
			<th>작성자</th>  
			<th>작성일</th>  			     
		</tr>   
		
<c:forEach var="informationQnADTO" items="${list }">
<c:set var="seq" value="${informationQnADTO.infoQnA_seq }"/>
<c:set var="infoQnA_type" value="${informationQnADTO.infoQnA_type }"/>
<c:set var="infoQnA_subject" value="${informationQnADTO.infoQnA_subject }"/>
<c:set var="infoQnA_userID" value="${informationQnADTO.infoQnA_userID }"/>
<c:set var="infoQnA_askDate" value="${informationQnADTO.infoQnA_askDate }"/>
<c:set var="infoQnA_content" value="${informationQnADTO.infoQnA_content }"/>
<c:set var="infoQnA_imageName" value="${informationQnADTO.infoQnA_imageName }"/>

	<tr> 
		<td style="width:100px; height:10px" align="center">
		${seq }  
		</td> 
		  
		<td id="${seq }" style="width:100px">    
		<a class="info"	 style="cursor: pointer;">[${infoQnA_type }] ${infoQnA_subject }</a>
		</td> 
		 
		  
		<td style="width:200px" align="center"> 
		${infoQnA_userID }
		</td>  
		
		<td style="width:200px" align="center"> 
			<fmt:formatDate pattern="yyyy년 MM월 dd일" value="${infoQnA_askDate}"/> 
		</td>			
	</tr>	  
	 
	<tr id="hidden${seq }" style="display:none; background: rgb(248, 248, 248);" >  
		<td colspan="2"  align="left"> 
			<pre class="contents">${infoQnA_content }<br></pre> 
		</td>
		<c:if test="${infoQnA_imageName != '0'}">
		<td colspan="1"  align="center"> 
			<img src="../storage/${infoQnA_imageName }" onclick="location.href='../storage/${infoQnA_imageName }'" width="200" height="200">			 
		</td>		
		</c:if>	  
		<c:if test="${infoQnA_imageName == '0'}">
		<td colspan="1"  align="center"> 
		</td>		
		</c:if>	    
		<td align="right">  
			<input type="button" class="layoutB" value="답글달기" onclick="goreply('${seq}')">
		</td>  
	</tr>    
  
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
 
var ishidden = false;
	
$('#${seq}').click(function(){ 
	ishidden = !ishidden;
	if(ishidden){
		$('#hidden${seq}').css("display", "table-row"); 
	}else{  
		$('#hidden${seq}').css("display", "none"); 
	}
});  
 
</script>   
</c:forEach> 
    
</table> 
<input type="hidden" name="pg" value="${pg }">
<input type="hidden" id="dis" name="dis" value="">
</div>  
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">   
function goreply(seq){        
	window.open("/bitFarm/information/writeQnAAnswer?seq="+seq,"","width=1030 height=775 left=500 top=0 scrollbars=yes");
	              
}             
</script>

 