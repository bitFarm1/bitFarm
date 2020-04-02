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

	#paging {
		color: black;
		text-decoration: none;
		cursor: pointer; 
	}   
	
	#currentpaging {
		color: #5f0080;
		text-decoration: none;
		cursor: pointer; 
	}	
	
	th{
		background-color: #F7F5F8;
	}
	.contents{ 
		white-space: pre-wrap;
		word-break: break-all; 
	}
		
	td{ 
		border-bottom: 1px solid #e5e5e5; 
	}	 
</style>

<form name="informationQnAListForm" method="post" action="">
<div style="width:1200px; margin: 0 auto;">    
<h3>1:1 문의 내역</h3> 
	<table id="infoListTable" width="1200px" cellpadding="15" style="border-top: 2px solid #5f0080; font-size: 12px; border-collapse: collapse;"> 
		<tr>  
			<th width="100px;">글번호</th>
			<th width="150px">카테고리</th>
			<th width="250px;">제목</th>  
			<th width="200px">작성자</th> 
			<th width="200px">작성일</th>  
			<th width="200px">답변상태</th>  			     
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
		
		<td style="width:150px; height:10px" align="center">
			[${infoQnA_type }]
		</td>  
		    
		<td id="${seq }" style="width:100px">    
			<a class="info"	style="cursor: pointer;"> ${infoQnA_subject }</a>
		</td>  
		
		  
		<td style="width:200px" align="center"> 
			${infoQnA_userID }
		</td>  
		
		<td style="width:200px" align="center"> 
			<fmt:formatDate pattern="yyyy년 MM월 dd일" value="${infoQnA_askDate}"/> 
		</td> 
		
		<c:if test="${informationQnADTO.infoQnA_answerSubject == '0'}">
			<td style="width:200px" align="center"> 
				답변 대기중
			</td>
		</c:if>	 
		<c:if test="${informationQnADTO.infoQnA_answerSubject != '0'}">
			<td style="width:200px" align="center">  
				답변 완료
			</td>
		</c:if>	 			
	</tr>	    
	 
	<tr id="hidden1${seq }" style="display:none; background: rgb(248, 248, 248);" > 
		<td></td> 
		<td colspan="2" style="width: 500px;" align="left">  
		<pre class="contents">${infoQnA_content }<br></pre> 
		</td> 
	<c:if test="${infoQnA_imageName != '0'}"> 
		<td colspan="3"  align="center"> 
			<img src="../storage/${infoQnA_imageName }" onclick="location.href='../storage/${infoQnA_imageName }'" width="200" height="200">			 
		</td>   
	</c:if>	  
		<c:if test="${infoQnA_imageName == '0'}"> 
		<td colspan="3"  align="center">    
						  
		</td>   
	</c:if>			  		  
	</tr>     
	
	<c:if test="${informationQnADTO.infoQnA_answerSubject != '0'}">
	<tr > 
		<td style="width: 100px;"></td>
		<td style="width: 150px;"> <img src="../image/mainImage.png" width="50" height="20"></td>
		<td id="${seq }reply" colspan="4" align="left" style="width: 425px;">     
			<img src="../image/reply1.png" width="50" height="25"><a class="info" href="#" style="cursor: pointer;"><a class="info" href="#" style="cursor: pointer;"> ${informationQnADTO.infoQnA_answerSubject }</a> 
		</td>  
	</tr>     
		
	<tr id="hidden2${seq }" style="display:none; background: rgb(248, 248, 248);">   
		<td> </td> 
			<td  colspan="4" align="left" style="width: 425px;">    
				<pre class="contents">${informationQnADTO.infoQnA_answerContent }<br></pre> 
			</td> 
		<td> </td>
	</tr> 
	</c:if>	  

   
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
   
var ishidden = false;
	
$('#${seq}').click(function(){
	ishidden = !ishidden;   
	if(ishidden){
		$('#hidden1${seq}').css("display", "table-row");
		 
	}else{  
		$('#hidden1${seq}').css("display", "none"); 
		 
	}
});  

$('#${seq}reply').click(function(){
	ishidden = !ishidden;   
	if(ishidden){		
		$('#hidden2${seq}').css("display", "table-row"); 
		
	}else{  		 
		$('#hidden2${seq}').css("display", "none");  
	}
});  
</script>   
</c:forEach>  
</table>  
    <div align="center" id="pagingDiv">${informationPaging.pagingHTML}</div>    
	<div style="height:20px;"></div>   
     
<input type="hidden" name="pg" value="${pg }">
<input type="hidden" id="dis" name="dis" value="">
</div>  
 
<script type="text/javascript"> 
function informationPaging(pg){   
	location.href='infoQnAListAllADMIN?pg='+pg;    
	
} 

</script>

