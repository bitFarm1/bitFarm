<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<style type="text/css">
	.wrap{
		width: 1000px;
		margin: 0 auto;
	
	} 
	
	.contents{ 
		white-space: pre-wrap;
		word-break: break-all;
		width: 500px; 
	}

	.tdstyle{
	    width: 130px;
	    padding: 13px 0 13px 20px;
	    background-color: #F7F5F8;
	    
	    text-align: left;
	}
	
	table{
		 border-collapse: collapse;
		 border-top: 1px solid #e8e8e8;
	
	}
	
	 th, td {
   		 border-bottom: 1px solid #dcdcdc;
   		 
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
	
</style>
 
<div class="wrap">
	
		<h3>��������<span style="font-size: 9pt; font-weight: normal;">&emsp;��Ʈ������ ���ο� �ҽĵ�� ������ �������� �Ѱ����� Ȯ���ϼ���.</span></h3> 
		<table width="100%" > 
			<tr><td style="border-top: 2px solid #5f0080;" > 
				<table align="center" style="padding: 0; width:100%;">
					<tr>  
						<td class="tdstyle">����</td>  
						<td colspan="3" style="border-top: 1px solid #e8e8e8;">${informationDTO.information_subject }</td> 
					</tr>
					 
					<tr>
						<td class="tdstyle">�ۼ���</td>
						<td colspan="3">${informationDTO.information_name }</td> 
					</tr>
					
					<tr>
						<td class="tdstyle">�ۼ���</td>
						<td >${informationDTO.information_date }</td> 
						<td class="tdstyle">��ȸ��</td>
						<td width="50%">${informationDTO.information_views }</td>
					</tr>	
				</table>
			</td></tr> 
			<tr> 
				<td height="30px" style="border-bottom: 0px"></td>
			</tr>
			<tr><td style="border-bottom: 0px">
				<pre class="contents">${informationDTO.information_content }</pre><br>
				<img src="../storage/${informationDTO.information_imageName }">
				 
			</td></tr>  
			<tr> 
				<td height="30px"></td>
			</tr>
			<tr><td align="center" style="border-bottom: 2px solid #5f0080; border-top: 2px solid #5f0080;">
				<input class="layoutB" id="goBackBtn" type="button" value="���">
			</td ></tr>
						
		</table>	
</div>  

<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript"> 
$('#goBackBtn').click(function(){
	location.href = '/bitFarm/information/infoBoardList?pg=${pg}'
});
</script>
