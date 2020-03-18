<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="api_title_area">
<h2 class="api_title">택배배송 조회</h2>
<div>
<div class="delivery_bx">
 <div class="delivery_con"> 
 <div class="information_bx _recent_area" style="display:none;">
  <div class="title_bx"> 
  <strong class="title">최근 조회한 택배 송장번호</strong> 
  </div> 
  <div class="info_list"> 
  <dl class="_container"></dl> </div> 
  <button nocr="" onclick="goOtherTCR(this, 'a=nco_x5b*1.recentclo&amp;r=1&amp;i=88147988_0000001E86A3');return false;" type="button" 
  class="btn_close _close_recent_area"> 
  <i class="ico_close">최근 조회한 택배 송장번호 닫기</i> 
  </button> </div> <div class="delivery_selectBox_area"> 
  <div class="select_wrap"> <span class="delivery_select_group">
   <select class="delivery_select_bx _select" onchange="goOtherTCR(this, 'a=nco_x5b*1.select&amp;r=1&amp;i=88147988_0000001E86A3');">
    <option>택배사 선택</option> <option data-code="04" data-name="CJ대한통운">CJ대한통운</option> <option data-code="01" data-name="우체국택배">우체국택배</option> 
    <option data-code="05" data-name="한진택배">한진택배</option> <option data-code="08" data-name="롯데택배">롯데택배</option> 
    <option data-code="06" data-name="로젠택배">로젠택배</option> <option data-code="54" data-name="홈픽택배">홈픽택배</option>
     <option data-code="24" data-name="CVSnet 편의점택배">CVSnet 편의점택배</option> <option data-code="46" data-name="CU 편의점택배">CU 편의점택배</option> <option data-code="23" data-name="경동택배">경동택배</option> <option data-code="22" data-name="대신택배">대신택배</option> <option data-code="11" data-name="일양로지스">일양로지스</option> <option data-code="32" data-name="합동택배">합동택배</option> <option data-code="18" data-name="건영택배">건영택배</option> <option data-code="17" data-name="천일택배">천일택배</option> <option data-code="20" data-name="한덱스">한덱스</option> <option data-code="16" data-name="한의사랑택배">한의사랑택배</option> <option data-code="12" data-name="EMS">EMS</option> <option data-code="13" data-name="DHL">DHL</option> <option data-code="25" data-name="TNT Express">TNT Express</option> <option data-code="14" data-name="UPS">UPS</option> <option data-code="21" data-name="Fedex">Fedex</option> <option data-code="26" data-name="USPS">USPS</option> <option data-code="34" data-name="i-Parcel">i-Parcel</option> <option data-code="33" data-name="DHL Global Mail">DHL Global Mail</option> <option data-code="37" data-name="판토스">판토스</option> <option data-code="29" data-name="에어보이익스프레스">에어보이익스프레스</option> <option data-code="28" data-name="GSMNtoN">GSMNtoN</option> <option data-code="38" data-name="ECMS Express">ECMS Express</option> <option data-code="30" data-name="KGL네트웍스">KGL네트웍스</option> <option data-code="40" data-name="굿투럭">굿투럭</option> <option data-code="45" data-name="호남택배">호남택배</option> <option data-code="41" data-name="GSI Express">GSI Express</option> <option data-code="44" data-name="SLX택배">SLX택배</option> <option data-code="47" data-name="우리한방택배">우리한방택배</option> <option data-code="52" data-name="세방">세방</option> <option data-code="56" data-name="KGB택배">KGB택배</option> <option data-code="57" data-name="Cway Express">Cway Express</option> <option data-code="58" data-name="하이택배">하이택배</option> <option data-code="60" data-name="YJS글로벌(영국)">YJS글로벌(영국)</option> <option data-code="61" data-name="워펙스코리아">워펙스코리아</option> <option data-code="51" data-name="성원글로벌카고">성원글로벌카고</option> <option data-code="62" data-name="홈이노베이션로지스">홈이노베이션로지스</option> <option data-code="63" data-name="은하쉬핑">은하쉬핑</option> <option data-code="66" data-name="Giant Network Group">Giant Network Group</option> <option data-code="64" data-name="FLF퍼레버택배">FLF퍼레버택배</option> <option data-code="53" data-name="농협택배">농협택배</option> <option data-code="65" data-name="YJS글로벌(월드)">YJS글로벌(월드)</option> <option data-code="67" data-name="디디로지스">디디로지스</option> <option data-code="69" data-name="대림통운">대림통운</option> <option data-code="70" data-name="LOTOS CORPORATION">LOTOS CORPORATION</option> <option data-code="43" data-name="애니트랙">애니트랙</option> <option data-code="72" data-name="성훈물류">성훈물류</option> <option data-code="71" data-name="IK물류">IK물류</option> <option data-code="80" data-name="엘서비스">엘서비스</option> <option data-code="79" data-name="티피엠코리아㈜ 용달이 특송">티피엠코리아㈜ 용달이 특송</option> <option data-code="83" data-name="제이로지스트">제이로지스트</option> <option data-code="81" data-name="제니엘시스템">제니엘시스템</option> </select> <span class="delivery_select_item" aria-hidden="true"> <span class="delivery_select_txt _delivery_select_txt">택배사 선택</span> <i class="delivery_ico_select"></i> </span> </span> </div> </div> <div class="type_search"> <div class="input_area"> <span class="txt_area"> <input type="text" placeholder="운송장 번호 - 없이 입력" class="input_txt _input" value="" onblur="goOtherTCR(this, 'a=nco_x5b*1.input&amp;r=1&amp;i=88147988_0000001E86A3');"> </span> <button type="button" class="btn_search _submit">검색</button> </div> </div> </div> <div class="_output"></div> <div class="error_bx _btminfo" style="display:none"> <div class="api_error _notFounding" style="display:none"> <i class="spnew api_ico_error"></i> <strong class="tit_message">운송장을 확인할 수 없습니다.</strong> <p class="dsc_message">운송장이 등록되지 않았거나 상품 준비중입니다.</p> </div> <div class="api_error _error" style="display:none"> <i class="spnew api_ico_error"></i> <strong class="tit_message">요청하신 정보를 불러올 수 없습니다.</strong> <p class="dsc_message">잠시후 다시 시도해 주세요.</p> <a nocr="" onclick="return goOtherCR(this, 'a=nco_x5b*1.refresh&amp;r=1&amp;i=88147988_0000001E86A3&amp;u=' + urlencode(this.href));" href="#" role="button" class="btn_retry"> <i class="spnew api_ico_retry2"></i>초기화 </a> </div> <div class="api_error _badCode" style="display:none"> <i class="spnew api_ico_error"></i> <strong class="tit_message">올바르지 않은 송장번호입니다.</strong> <p class="dsc_message">송장번호를 확인해 주세요.</p> </div> </div> <div class="loading_bx _loading" style="display:none"> <div class="api_loading"> <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" width="100%" height="8" alt="로딩중" class="bg_bloading2"> </div> </div> <div class="notice_bx _info"> <p>스마트택배 제공 정보로, 배송상황과 다를 수 있습니다.</p> </div> </div>

<!-- https://m.search.naver.com/search.naver?sm=mtp_hty.top&where=m&query=%EB%B0%B0%EC%86%A1%EC%A1%B0%ED%9A%8C -->


<%-- // JavaScript Code<!-- 택배조회Coll -->
<style type="text/css">


.sellerShipCheck{
	text-align: left;
	border-collapse: collapse;
	margin
	width: 100%;
	border-top: 2px solid #5f0080;
	border-bottom: 2px solid gray;
	width: 100%;
	frame: void;
	rules: rows;

#deliveryColl .collTitle {margin-bottom:16px;}
#deliveryColl .select_box {border:1px solid #7f9db7;width:135px;height:20px;font-size:12px;}
#deliveryColl .inp_txt {width:140px;height:14px;padding:4px 0 3px 2px;border-top:1px solid #ababab;border-left:1px solid #ababab;border-bottom:1px solid #ccc;border-right:1px solid #ccc;font-size:12px;line-height:14px;}
#deliveryColl .wrap_inquiry {padding-bottom:15px;border:1px solid #e8e8e8;background:#f9f9f9;}
#deliveryColl .wrap_inquiry .box_search {width:701px;padding:13px 0 0 15px;border-top:1px solid #fcfcfc;border-left:1px solid #fcfcfc;}
#deliveryColl .wrap_inquiry .info_delivery {float:left;}
#deliveryColl .wrap_inquiry .info_delivery .tit {float:left;padding-right:4px;font-size:12px;font-weight:bold;line-height:22px;color:#000;clear:both;}
#deliveryColl .wrap_inquiry .info_delivery .cont {float:left;width:154px;}
#deliveryColl .wrap_inquiry .inp_txt {float:left;width:140px;margin-right:5px;}
#deliveryColl .wrap_inquiry .btn_inquiry {display:block;overflow:hidden;float:left;width:41px;height:23px;padding:0;border:0;background:url(http://i1.search.daumcdn.net/s/search_all/2011/btn/btn_delivery.gif) no-repeat 0 0;font-size:0;line-height:0;text-indent:-999em;cursor:pointer;}
#deliveryColl .wrap_inquiry .delivery_num .cont {width:190px;}
#deliveryColl .wrap_inquiry .refer {float:left;margin:6px 0 0 6px;font:normal 11px '돋움', dotum;color:#777;line-height:13px;}
/* 관련정보 */
#deliveryColl .list_relation {margin:12px 0 0 0;clear:both;}
</style>

<script type="text/javascript">
var focusDeleveryNum = function()
{
if($('kocn_number').value == "예)1234567890" || $('kocn_number').value == "11자리 숫자만 입력" || $('kocn_number').value == "예)PKR000249650" || $('kocn_number').value == "예)1Z04845XYN48937807")
{
$('kocn_number').value = "";
}
};
</script>

<jsp:include page="sellerLeft.jsp"/>
<div style="width: 68%; text-align: center; padding: 50px 0px 50px 420px;">

<!-- 상품등록페이지 Title -->
	<h2 align="center">택배 및 항공화물 조회</h2>
	<div style="text-align: center;">주문상품의 배송현완을 알려준다.</div>
	<br><br><br><br>
	
	<h3 align="left">택배 및 항공화물 조회</h3>
	<table class="sellerShipCheck" cellpadding="15" frame="hsides" rules="rows">
	
	<tr><th>주문자명 : 김딸기  |  운송장번호 : 20201111</th></tr>
	<table class="sellerShipCheck" cellpadding="15" frame="hsides" rules="rows">
	
	</table>

<div id="deliveryColl" class="wid_w">
</div>
<div class="coll_cont">
<div class="mg_cont">
<div class="wrap_inquiry">
<div class="box_search">
<form name="kocn_mm" method="post" target="_blank" onsubmit="return kocnSubmit();">
<fieldset>

<input type="hidden" name="InvNo">
<input type="hidden" name="f_slipno">
<input type="hidden" name="sheetno">
<input type="hidden" name="sendno">
<input type="hidden" name="billno">
<input type="hidden" name="tc">
<input type="hidden" name="cust_id">
<input type="hidden" name="invc_no">
<input type="hidden" name="slipnom">
<input type="hidden" name="gubun">
<input type="hidden" name="slipno">
<input type="hidden" name="slipno_salecd">
<input type="hidden" name="iv_no">
<input type="hidden" name="search_item_no">
<input type="hidden" name="mode" value="SEARCH">
<input type="hidden" name="search_type" value="1">
<input type="hidden" name="searchMethod" value="I">
<input type="hidden" name="bl_num">
<input type="hidden" name="dtdShtno">
<input type="hidden" name="sid1">
<input type="hidden" name="wbl_num">
<input type="hidden" name="hawb_no">
<dl class="info_delivery">
<dt class="tit">업체명</dt>
<dd class="cont">
<select id="_jsDeliveryCorpListHiddenSelBox" name="_jsDeliveryCorpListHiddenSelBox" class="select_box">
<option value="0">선택해 주세요</option>
<option value="1">경동택배</option>
<option value="2">대신택배</option>
<option value="3">대한항공</option>
<option value="4">동부택배</option>
<option value="5">로젠택배</option>
<option value="6">범한판토스</option>
<option value="7">우체국택배</option>
<option value="8">일양로지스택배</option>
<option value="9">천일택배</option>
<option value="10">한덱스택배</option>
<option value="11">한의사랑택배</option>
<option value="12">한진택배</option>
<option value="13">현대택배</option>
<option value="14">CJ 대한통운택배</option>
<option value="15">CVSnet편의점택배</option>
<option value="16">DHL택배</option>
<option value="17">FedEx택배</option>
<option value="18">GTX로지스택배</option>
<option value="19">KG옐로우캡택배</option>
<option value="20">KGB택배</option>
<option value="21">OCS택배</option>
<option value="22">TNT Express</option>
<option value="23">UPS택배</option>
</select>
</dd>
</dl>
<dl class="info_delivery delivery_num">
<dt class="tit">송장번호</dt>
<dd class="cont">
<input id="kocn_number" type="text" class="inp_txt" style="width:130px" name="kocn_number" value="예)1234567890" onfocus='focusDeleveryNum();'>
<input type="submit" class="btn_bus btn_inquiry" value="조회">
</dd>
</dl>
<div class="refer" id="deleveryInfoMes">업체명 선택 후, 송장번호를 입력해주세요.</div>
</fieldset>
</form>
</div>
</div>
<dl class="collDl list_relation">
<dt class="g_tit">관련정보</dt>
<dd class="con">
<a class="stit" href="?w=tot&q=%EC%9A%B0%ED%8E%B8%EB%B2%88%ED%98%B8" onclick='smartLog(this, "s=TO&d=&a=ABQK&dc=CQX&pg=1&r=1&p=2&rc=3", event); '>우편번호</a>
<span class="vline">|</span>
<a class="stit" href="?w=tot&q=%EC%A7%80%EC%97%AD%EB%B2%88%ED%98%B8" onclick='smartLog(this, "s=TO&d=&a=ABQK&dc=CQX&pg=1&r=2&p=2&rc=3", event); '>지역번호</a>
<span class="vline">|</span>
<a class="stit" href="?w=tot&q=%EC%98%81%EB%AC%B8%EC%A3%BC%EC%86%8C" onclick='smartLog(this, "s=TO&d=&a=ABQK&dc=CQX&pg=1&r=3&p=2&rc=3", event); '>영문주소</a>
</dd>
</dl>
</div>
</div>
</div>
<script type="text/javascript">
var _jsDeliveryCompanyArr = [
["0","선택해주세요"],
["1", "경동택배", {cpName: "경동", url: "http://www.kdexp.com/sub3_shipping.asp?stype=1&p_item=##NUM##" }]
,
["2", "대신택배", {cpName: "대신", url: "https://www.ds3211.co.kr/freight/internalFreightSearch.ht" }]
,
["3", "대한항공", {cpName: "대한항공", url: "http://cargo.koreanair.com/ecus/trc/servlet/TrackingServlet?pid=5&version=kor&menu1=m1&menu2=m01-1&awb_no=##NUM##" }]
,
["4", "동부택배", {cpName: "동부익스프레스", url: "http://www.dongbups.com/newHtml/delivery/delivery_search_view.jsp?item_no=##NUM##" }]
,
["5", "로젠택배", {cpName: "로젠", url: "http://www.ilogen.com/iLOGEN.Web.New/TRACE/TraceView.aspx?gubun=slipno&slipno=##NUM##" }]
,
["6", "범한판토스", {cpName: "범한판토스", url: "http://www.epantos.com/jsp/gx/tracking/tracking/trackingInquery.jsp?refNo=##NUM##" }]
,
["7", "우체국택배", {cpName: "우체국", url: "http://service.epost.go.kr/trace.RetrieveRegiPrclDeliv.postal?sid1=##NUM##" }]
,
["8", "일양로지스택배", {cpName: "일양로지스", url: "http://www.ilyanglogis.com/functionality/tracking_result.asp?hawb_no=##NUM##" }]
,
["9", "천일택배", {cpName: "천일", url: "http://www.chunil.co.kr/HTrace/HTrace.jsp?transNo=##NUM##" }]
,
["10", "한덱스택배", {cpName: "한덱스", url: "http://btob.sedex.co.kr/work/app/tm/tmtr01/tmtr01_s4.jsp?IC_INV_NO=##NUM##" }]
,
["11", "한의사랑택배", {cpName: "한의사랑", url: "http://www.hanips.com/html/sub03_03_1.html?logicnum=##NUM##" }]
,
["12", "한진택배", {cpName: "한진", url: "http://www.hanjin.co.kr/Delivery_html/inquiry/result_waybill.jsp?wbl_num=##NUM##" }]
,
["13", "현대택배", {cpName: "현대", url: "http://www.hlc.co.kr/personalService/tracking/06/tracking_goods_result.jsp?InvNo=##NUM##" }]
,
["14", "CJ 대한통운택배", {cpName: "CJ대한통운", url: "https://www.doortodoor.co.kr/parcel/doortodoor.do?fsp_action=PARC_ACT_002&fsp_cmd=retrieveInvNoACT&invc_no=##NUM##" }]
,
["15", "CVSnet편의점택배", {cpName: "CVSNET편의점", url: "http://was.cvsnet.co.kr/_ver2/board/ctod_status.jsp?invoice_no=##NUM##" }]
,
["16", "DHL택배", {cpName: "DHL", url: "http://www.dhl.co.kr/content/kr/ko/express/tracking.shtml?brand=DHL&AWB=##NUM##" }]
,
["17", "FedEx택배", {cpName: "FEDEX", url: "http://www.fedex.com/Tracking?ascend_header=1&clienttype=dotcomreg&cntry_code=kr&language=korean&tracknumbers=##NUM##" }]
,
["18", "GTX로지스택배", {cpName: "GTX로지스", url: "http://www.gtxlogis.co.kr/tracking/default.asp?awblno=##NUM##" }]
,
["19", "KG옐로우캡택배", {cpName: "KG옐로우캡", url: "http://www.yellowcap.co.kr/custom/inquiry_result.asp?INVOICE_NO=##NUM##" }]
,
["20", "KGB택배", {cpName: "KGB", url: "http://www.kgbls.co.kr/sub5/trace.asp?f_slipno=##NUM##" }]
,
["21", "OCS택배", {cpName: "OCS", url: "http://www.ocskorea.com/online_bl_multi.asp?mode=search&search_no=##NUM##" }]
,
["22", "TNT Express", {cpName: "TNTExpress", url: "http://www.tnt.com/webtracker/tracking.do?respCountry=kr&respLang=ko&searchType=CON&cons=##NUM##" }]
,
["23", "UPS택배", {cpName: "UPS", url: "http://wwwapps.ups.com/WebTracking/track?track=yes&trackNums=##NUM##" }]
];
if( totCollCount == "1" && daum.$("mCenter") ) {
daum.$("mCenter").style.paddingBottom = "100px";
}
function kocnSubmit(){
var num = daum.$("kocn_number").value;
var kocn_1 = daum.$("_jsDeliveryCorpListHiddenSelBox").value;
if ( kocn_1 === "0" || num == "" || num.startWith("예)") || num.startWith("11자리") ) {
alert('업체명과 송장번호를 확인해주세요.');
return false;
}
var cpName = _jsDeliveryCompanyArr[kocn_1][2].cpName;
num = num.replaceAll('-','');
var url = _jsDeliveryCompanyArr[kocn_1][2].url;
smartLog(null, "s=TO&d=&a=ABQK&dc=CQX&pg=1&r=1&p=1&rc=1&u="+encodeURIComponent(url), "");
if( url.match(/##NUM##/) ) {
if ( cpName == "CVSNET편의점" ){
url = url.replace(/##NUM##/, num);
document.kocn_mm.method = "post";
document.kocn_mm.slipno.value = num;
} else {
window.open(url.replace(/##NUM##/, num), "kocnss");
return false;
}
} else {
if ( cpName == "대신") {
document.kocn_mm.method = "GET";
document.kocn_mm.billno.value = num;
}
}
document.kocn_mm.action = url;
}
SF.M.addStayLogColl({code: "CQX", id: "deliveryColl"});
</script>
</table>
</div>
<!-- end 택배조회Coll --> --%>