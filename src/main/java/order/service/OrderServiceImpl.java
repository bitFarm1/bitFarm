package order.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import member.bean.MemberDTO;
import mypage.bean.MypageCouponDTO;
import mypage.bean.MypagePointDTO;
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

	
	

}
