package order.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cart.bean.CartListDTO;
import member.bean.MemberDTO;
import mypage.bean.MypageCouponDTO;
import order.bean.OrderItemDTO;
import order.bean.OrderSellerHomeDTO;
import order.dao.OrderDAO;

@Service(value="orderService")
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDAO orderDAO;

	@Override
	public MemberDTO getMemberInfo(String memberId) {
		return orderDAO.getMemberInfo(memberId);
	}

	@Override
	public int getTotalMoney(String memberId) {
		return orderDAO.getTotalMoney(memberId);
	}

	//200326 김소중
	@Override
	public List<MypageCouponDTO> orderCouponList(String memberId) {
		List<MypageCouponDTO> pointList = orderDAO.orderCouponList(memberId);
		return pointList;
	}

	@Override
	public int orderPointAll(String memberId) {
		return orderDAO.orderPointAll(memberId);
	}

	@Override
	public String orderNum() {
	   	int num;
    	while(true) {
    		num = (int)(Math.random()*10000);
    		if(num > 1000) break;
    	} 
    	
        Date d = new Date(); 
        String s = d.toString();
           
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");       
        String orderNum = sdf.format(d) + num;
        return orderNum;
	}

	@Override
	public void writeOrder(Map<String, Object> map) {

		List<CartListDTO> list = (List<CartListDTO>) map.get("cartList");
		
		for(CartListDTO data : list) {
			
			int item_id = data.getItem_id();
			
			Map<String, Object> tempMap = orderDAO.getItemSellerNPrice(item_id);	
			
			map.put("seller_name",tempMap.get("seller_name"));
			map.put("item_name",data.getItem_name());
			map.put("item_main_image",data.getItem_main_image());
			map.put("item_price",tempMap.get("item_price"));
			map.put("item_qty",data.getItem_qty());
			map.put("item_id",data.getItem_id());
		
			
			
			int su = orderDAO.writeOrder(map);
		}
		
	}


	@Override
	public void deletePointNCoupon(Map<String, String> map) {
		
		String orderId = map.get("orderId");
		String id = map.get("id");
		
		String useCouponId = orderDAO.getUseCoupon(orderId);
		
		if(useCouponId != "none") {
			Map<String,String> tempMap = new HashMap<String,String>();
			tempMap.put("id",id);
			tempMap.put("useCouponId",useCouponId);
			orderDAO.deleteCoupon(tempMap);
		}
		
		int usePoint = orderDAO.getUsePoint(orderId);
		
		if(usePoint != 0) {
			Map<String,Object> tempMap = new HashMap<String,Object>();
			tempMap.put("id",id);
			tempMap.put("usePoint",usePoint);
			int su = orderDAO.deletePoint(tempMap);
		}

	}

	@Override
	public void deleteItemQty(String orderId) {
		
		//주문테이블에서 주문한 아이템과 수량 가져오기
		List<OrderItemDTO> list = orderDAO.getItemIdNQty(orderId);
		
		for(OrderItemDTO data : list) {
	
			String item_id = data.getOrder_item_id();
			int item_qty = data.getOrder_item_qty();
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("item_id",item_id);
			map.put("item_qty",item_qty);
			
			//item 수량 업데이트
			orderDAO.setItemIdNQty(map);
			
			//item 수량 확인
			int qty = orderDAO.getItemQty(item_id);
			
			if(qty == 0) {
				orderDAO.setItemState(item_id);
			}
			
		}
	
	}

	@Override
	public void updatePoint(Map<String, String> map) {
		orderDAO.updatePoint(map);
	}

	@Override
	public String isOrder(String id, String item_id) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("item_id", item_id);
		
		int isOrder = orderDAO.isOrder(map);
		
		if(isOrder==0) {
			return "false";
		}
		
		return "true";
	}

	@Override
	public List<OrderSellerHomeDTO> orderNumberList(String id, String seq) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("seq", seq);
		return orderDAO.orderNumberList(map);
	}


}
