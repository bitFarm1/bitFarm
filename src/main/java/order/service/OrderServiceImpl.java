package order.service;

import java.text.SimpleDateFormat;
import java.util.Date;
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


	public void writeOrder(Map<String, Object> map) {
		System.out.println("service 도착");
		List<CartListDTO> list = (List<CartListDTO>) map.get("cartList");
		
		
		for(CartListDTO data : list) {
			
			int item_id = data.getItem_id();
			
			Map<String, Object> tempMap = orderDAO.getItemSellerNPrice(item_id);	
			
			map.put("seller_name",tempMap.get("seller_name"));
			map.put("item_name",data.getItem_name());
			map.put("item_main_image",data.getItem_main_image());
			map.put("item_price",tempMap.get("item_price"));
			map.put("item_qty",data.getItem_qty());
			orderDAO.writeOrder(map);
		}
		
	}
}

