package order.service;

import java.util.List;
import java.util.Map;

import member.bean.MemberDTO;
import mypage.bean.MypageCouponDTO;

import order.bean.OrderDTO;

public interface OrderService {

	public MemberDTO getMemberInfo(String memberId);

	public int getTotalMoney(String memberId);

	//200326 김소중
	public List<MypageCouponDTO> orderCouponList(String memberId);

	public int orderPointAll(String memberId);
	
	public String orderNum();

	//200330 김소중
	public void writeOrder(Map<String, Object> map);


}
