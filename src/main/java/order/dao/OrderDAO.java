package order.dao;

import java.util.List;
import java.util.Map;

import member.bean.MemberDTO;
import mypage.bean.MypageCouponDTO;
import mypage.bean.MypagePointDTO;
import order.bean.OrderDTO;
import order.bean.OrderItemDTO;
import order.bean.OrderSellerHomeDTO;

public interface OrderDAO {

	public MemberDTO getMemberInfo(String memberId);

	public int getTotalMoney(String memberId);

	//200326 김소중
	public List<MypageCouponDTO> orderCouponList(String memberId);

	public int orderPointAll(String memberId);

	public int writeOrder(Map<String, Object> map);

	public Map<String, Object> getItemSellerNPrice(int item_id);

	public int deletePoint(Map<String, Object> tempMap);

	public void deleteCoupon(Map<String, String> tempMap);

	public String getUseCoupon(String orderId);

	public int getUsePoint(String orderId);

	public List<OrderItemDTO> getItemIdNQty(String orderId);

	public void setItemIdNQty(Map<String, Object> map);

	public int getItemQty(String item_id);

	public void setItemState(String item_id);

	public void updatePoint(Map<String, String> map);

	public int isOrder(Map<String, String> map);

	public List<OrderSellerHomeDTO> orderNumberList(Map<String, String> map);



}
