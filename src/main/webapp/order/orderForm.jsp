<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href= "../css/order.css">

<h2 align="center">주 문 서</h2>
<form id = "orderForm">
<input type = "hidden" name = "user_phone" value = "${memberDTO.member_phone}">
<input type = "hidden" name = "before_price" value = "${totalMoney}">
<input type = "hidden" name = "total" value = "0">
<input type = "hidden" name = "point" value = "0"> 
<input type = "hidden" name = "coupon" value = "0">
<input type = "hidden" name = "couponId" value = "0">

<div class="defalutCenterDiv">주문하실 상품명 및 수량을 정확하게 확인해주세요</div>
<br><br>
<div class="defalutLeftDiv"><h2>&emsp;&emsp;상품 정보</h2></div>
<div class="defalutCenterDiv">
	<table class="orderItemTable" frame="hsides" rules="rows" cellpadding="20">
		<tr>
			<th width="40%">상품이미지</th>
			<th width="25%">상품명</th>
			<th width="15%">수량</th>
			<th width="20%">가격</th>
		</tr>
		<c:if test="${list!=null}">
			<c:forEach var="cartListDTO" items="${list}">
			<tr>
				<td><img src="../storage/${cartListDTO.item_main_image}" width="200px"></td>
				<td>${cartListDTO.item_name}</td>
				<td>${cartListDTO.item_qty}</td>
				<td>${cartListDTO.item_all_price}</td>
			</tr>
			</c:forEach>
		</c:if>
	</table>
</div>
<br><br>
<div class="defalutLeftDiv"><h2>&emsp;&emsp;주문자 정보</h2></div>
<div class="defalutCenterDiv">
	<table class="orderTable_tdLeft" frame="hsides" rules="rows" cellpadding="20">
		<tr>
			<th>보내는분</th>
			<td>${memberDTO.member_name}</td>
		</tr>
		<tr>
			<th>핸드폰번호</th>
			<td>${memberDTO.member_phone}</td>
		</tr>
		<tr>
			<th>이메일</th> 
			<td>${memberDTO.member_email}</td>
		</tr>
	</table>
</div>
<br><br>
<div class="defalutLeftDiv"><h2>&emsp;&emsp;배송 정보</h2></div>
<div class="defalutCenterDiv">
   <table class="orderTable_tdLeft" frame="hsides" rules="rows" cellpadding="20">
      <tr> 
         <th rowspan="2">주소</th>
         <td>
         	<input class="shipInfoText" type="text" id="addr1" name="addr1" size="70" value="${memberDTO.member_address1}" readOnly> 
			<input class="shipAddBtn" type="button" value="배송지 변경" onclick="execDaumPostcode()">
		</td>
      </tr>
      <tr>
         <td><input class="shipInfoText" type="text" id="addr2" name="addr2" size="70" value="${memberDTO.member_address2}"></td>
      </tr>
      <tr>
         <th>수령인</th>
         <td><input class="shipInfoText" type="text" id="name" name="name" value="${memberDTO.member_name}"></td>
      </tr>
      <tr>
         <th>휴대폰</th>
         <td><input class="shipInfoText" type="text" id="phone" name="phoneNumber" value="${memberDTO.member_phone}"></td>
      </tr>
      <tr>
         <th>배송요청사항</th>
         <td><input class="shipInfoText" type="text" name="ps" size="100" ></td>
      </tr>
   </table>
</div>
<br><br>
<div class="defalutLeftDiv"><h2>&emsp;&emsp;쿠폰/적립금</h2></div>
<div class="defalutCenterDiv">
	<table class="orderTable_tdLeft" frame="hsides" rules="rows" cellpadding="20">
		<tr>
			<th>쿠폰 사용</th>
			<td>
				<select id = "selectCoupon" style="height: 30px; width: 500px;">
					<option value = "0">쿠폰을 선택하세요</option>
				<c:forEach var="couponDTO" items="${couponList }">

					<option id = "couponOption"  name = "${couponDTO.coupon_id }" value = "${couponDTO.coupon_price }">[${couponDTO.coupon_name }] ${couponDTO.coupon_content}</option>	 
	 
				</c:forEach>
					 	
				</select>
					<input type="hidden" name="coupon" value="${couponDTO.coupon_name }">
			</td>
		</tr>
		<tr>
			<th>사용 가능 적립금&nbsp;&nbsp;<span>${pointTotal}</span>원</th>
			<td>
				<input class="shipInfoText" type="text" size="10" name="usePoint" id = "userPoint" style="text-align: right;" value="0">&nbsp;&nbsp;원 사용하기
				<div id = "pointDiv"></div>
			</td>
		</tr>
	</table>
</div>
<br><br>
<div class="defalutLeftDiv"><h2>&emsp;&emsp;결제수단</h2></div>
<div class="defalutCenterDiv">
	<table class="orderTable_tdLeft" frame="hsides" rules="rows" cellpadding="20">
		<tr>
			<th>일반 결제</th>
			<td>
				<input type="radio" name="payment" value="card">신용카드&emsp;&emsp;&emsp;&emsp;
				<input type="radio" name="payment" value="phone">휴대폰
			</td>
		</tr>
		<tr>
			<th>카카오페이 결제</th>
			<td>
				<input type="radio" name="payment" value="kakao" checked>&emsp;<img src="../image/kakao.jpg" width="50">
			</td>
		</tr>
	</table>
</div>
<br><br>
<div class="defalutLeftDiv"><h2>&emsp;&emsp;결제금액</h2></div>
<div class="defalutCenterDiv">
	<table class="orderTable_tdLeft" frame="hsides" rules="rows" cellpadding="20">
		<tr>
			<th>총 상품금액</th>
			<td><fmt:formatNumber pattern="#,###원" value="${totalMoney}"/></td>
		</tr>
		<tr>
			<th>배송비</th>
			<td>3,000원</td>
		</tr>
		<tr>
			<th>쿠폰 사용</th>
			<td><div id = "userCouponResult" style = "display:inline;"><fmt:formatNumber pattern="#,###">0</fmt:formatNumber></div>원</td>
		</tr>
		<tr>
			<th>적립금 사용</th>
			<td><div id = "userPointResult" style = "display:inline;"><fmt:formatNumber pattern="#,###">0</fmt:formatNumber></div>원</td>
		</tr>
	<tr>
			<th>최종 결제 금액</th>
			<td><div id = "totalMoneyDiv" style = "display:inline;"></div>	원</td>

			</tr>
	</table>
</div>
<input type="hidden" name="total" value="0">
<input type="hidden" name="point" value="0"> 

<br><br>
<div style="width: 40%; margin: 0 auto; text-align: center;">
	<input type="button" id="purchaseBtn" class="orderBtn"  value="주문하기"><br><br>

</div>
</form>
<p style="clear: both; height: 10px;"></p>

<!-- script -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript">


$('.orderBtn').click(function(){

	let radioBtn = $(":input:radio[name=payment]:checked").val();
	
	if( $('#addr1').val() == '' || $('#addr2').val() =='' || $('#name').val() == '' || $('#phone').val() ==''){
	      alert("배송 정보를 입력하세요");
	      
	      return;
	}   

	
	if(radioBtn=='card'){
		alert('카드결제 선택');
		
	}else if(radioBtn=='phone'){
		alert('핸드폰결제 선택');
		
	}else if(radioBtn=='kakao'){
		alert('카카오페이결제 선택');
		
		var IMP = window.IMP; // 생략가능
		IMP.init('imp72674153'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
		
		IMP.request_pay({
			pg : 'kakaopay',
		    pay_method : 'card',
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : '비트농장 결제테스트',
		    amount :   $('input[name=total]').val(),
		    buyer_email : '${memberDTO.member_email}',
		    buyer_name : '${memberDTO.member_name}',
		    buyer_tel : '${memberDTO.member_phone}',
		}, function(rsp) {
		    if ( rsp.success ) {

		        $.ajax({
		    		type : 'post',
		    		url : '/bitFarm/order/writeOrder',
		    		data : $('#orderForm').serialize(),
		    		success : function(){
		   
		    			location.href = '/bitFarm/order/orderSuccess';
		    		}
		    	});
		    } else {
		        var msg = '결제를 취소하였습니다.';
		        msg += '에러내용 : ' + rsp.error_msg;
		        alert(msg);
		        location.href = '/bitFarm/order/orderFail';
		    }
		});
	}
}); 
//////////////////////////////////////////////////////////
//200326 김소중
$('#userPoint').click(function(){
	$('#userPoint').val('');
});

$('#userPoint').focusout(function(){
	
	let point = ${pointTotal};
	let usePoint = $('#userPoint').val();
	$('#pointDiv').empty();	
	
	if($('#userPoint').val() <= point){
		$('#pointDiv').text('사용가능합니다');
		$('#pointDiv').css('color','blue')
		$('#pointDiv').css('font-size','8pt')
		$('#pointDiv').css('font-weight','bold');
	$('div[id=userPointResult]').text(usePoint.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));  
	
	}else{
		$('#pointDiv').text('사용불가능합니다');
		$('#pointDiv').css('color','red')
		$('#pointDiv').css('font-size','8pt')
		$('#pointDiv').css('font-weight','bold');   
		$('#userPoint').val(0);    
	}
	 	
});

$(document).ready(function(){ 

	

	let usePoint = $('#userPoint').val();
	let useCoupon = $('#selectCoupon option:selected').val();
	  
	let totalMoney = ${totalMoney};

	
	let total = totalMoney + 3000 - usePoint - useCoupon;	
	    
	$('input[name=total]').val(total); 
	$('div[id=totalMoneyDiv]').text(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")); 
});

 
	
$('#selectCoupon').change(function(){   
	   
	   let usePoint = $('#userPoint').val(); 
	   let useCoupon = $('#selectCoupon option:selected').val(); 
	   
	   let totalMoney = ${totalMoney};  
	   
	   let total = totalMoney + 3000 - usePoint - useCoupon; 
	 
	   let couponId = $('#couponOption').attr('name');

	   
	   $('input[name=couponId]').val(couponId); //
	   $('input[name=coupon]').val(useCoupon); //
	   $('input[name=point]').val(usePoint);   
	   $('input[name=total]').val(total);
	   $('#userCouponResult').text(useCoupon.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")); 
	   $('#totalMoneyDiv').text(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));        
	      
});      

$('#userPoint').focusout(function(){
	   
	   let usePoint = $('#userPoint').val();   
	   let useCoupon = $('#selectCoupon option:selected').val();    
	   let totalMoney = ${totalMoney};    
	   let total = totalMoney + 3000 - usePoint - useCoupon;
	   

	   $('input[name=coupon]').val(useCoupon); //
	   $('input[name=point]').val(usePoint);   
	   $('input[name=total]').val(total);
	   $('div[id=totalMoneyDiv]').text(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));    
});




////////////////////////////////////////////////////////
</script>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {  
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분. 

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수


                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다. 
                 
                document.getElementById("addr1").value = "("+data.zonecode+") "+roadAddr;
                                                                
            }
        }).open();
    }

</script>


