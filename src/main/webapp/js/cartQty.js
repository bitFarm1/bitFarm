$('.qtyBtn').click(function(){
	let action = $(this).attr('value'); //-,+
	
	let id = $(this).attr('id'); //item_id
	id = id.replace("Btn","");	//item_id
	
	let qty = $('#'+id).val();	//item_id에 대한 수량 값
	
	if(action=='+'){
		qty = qty-1+2;
		$('#'+ id).val(qty);
		
		if(qty-1=='1'){
			item1price = $('.allprice'+id).text();	//item 전체가격인데 qty 1개니까 1개가격
			$('.allprice'+id).text(item1price * qty);
		}else{
			preQty = qty-1;
			itemAllprice = $('.allprice'+id).text();
			item1price = itemAllprice/preQty;	//이러면 1개 가격 나옴
			$('.allprice'+id).text(item1price * qty);
		}
		
	}else if(action=='-'){
		if(qty=='1'){ return false; }	//0까지 감소하면 안되니까 return
		
		qty = qty-1;
		$('#'+ id).val(qty);
		
		//총금액에 감소전 qty 나누면 무조건 상품 1개가격
		itemAllprice = $('.allprice'+id).text();
		//alert(itemAllprice);
		//alert(qty+1);
		item1price = itemAllprice/(qty+1);
		$('.allprice'+id).text(item1price * qty);
	}
	
	//변경 된 정보로 list 다시 출력
	let item_all_price = $('.allprice'+id).text();
	$.ajax({
		type : 'post',
		url : '/bitFarm/cart/updateCart',
		data : 'item_id=' + id + '&item_qty=' + qty + '&item_all_price=' + item_all_price,
		success : function(){
			location.href = '/bitFarm/cart/cartForm';	//변경 된 정보로 list 다시 출력
		}
	});
	
});