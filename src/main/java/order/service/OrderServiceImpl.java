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
import mypage.bean.MypagePointDTO;
import order.bean.OrderDTO;
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
	//	System.out.println("service 도착");
		List<CartListDTO> list = (List<CartListDTO>) map.get("cartList");
		
		for(CartListDTO data : list) {
			
			int item_id = data.getItem_id();
			
			Map<String, Object> tempMap = orderDAO.getItemSellerNPrice(item_id);	
			
			map.put("seller_name",tempMap.get("seller_name"));
			map.put("item_name",data.getItem_name());
			map.put("item_main_image",data.getItem_main_image());
			map.put("item_price",tempMap.get("item_price"));
			map.put("item_qty",data.getItem_qty());
		
			/*
			System.out.println(map.get("order_id")); //order_id
			System.out.println(map.get("seller_name")); //order_seller_name
			System.out.println(map.get("item_name")); //order_seller_item
			System.out.println(map.get("item_main_image")); //order_item_main_image
			System.out.println(map.get("item_price")); // order_item_price 
			System.out.println(map.get("item_qty")); // order_item_qty
			// order_state "결제완료"
			System.out.println(map.get("before_price")); // order_before_price
			System.out.println(map.get("couponId")); // order_coupon_id
			System.out.println(map.get("coupon")); // order_coupon
			
			System.out.println(map.get("point")); // order_point
			System.out.println(map.get("total")); // order_total_price
			System.out.println(map.get("payment")); // order_pay
			
			System.out.println(map.get("id")); // order_user_id
			System.out.println(map.get("user_name")); // order_user_name
			System.out.println(map.get("user_phone")); // order_user_phone
			System.out.println(map.get("email")); // order_user_email
			// order_date -sysdate
			System.out.println(map.get("name")); // order_name
			System.out.println(map.get("phoneNumber")); // order_phone
			System.out.println(map.get("addr1")); // order_addr1
			System.out.println(map.get("addr2")); // order_addr2
			System.out.println(map.get("ps")); // order_ps
			*/
			
			
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


}
