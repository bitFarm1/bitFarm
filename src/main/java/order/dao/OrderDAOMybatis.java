package order.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import member.bean.MemberDTO;
import mypage.bean.MypageCouponDTO;
import order.bean.OrderDTO;
import order.bean.OrderItemDTO;
import order.bean.OrderSellerHomeDTO;

@Repository("orderDAO")
@Transactional
public class OrderDAOMybatis implements OrderDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public MemberDTO getMemberInfo(String memberId) {
		return sqlSession.selectOne("orderSQL.getMemberInfo", memberId);
	}

	@Override
	public int getTotalMoney(String memberId) {
		return sqlSession.selectOne("orderSQL.getTotalMoney", memberId);
	}

	//200326 김소중
	@Override
	public List<MypageCouponDTO> orderCouponList(String memberId) {
		return sqlSession.selectList("orderSQL.orderCouponList",memberId);
	}

	@Override
	public int orderPointAll(String memberId) {
		return sqlSession.selectOne("orderSQL.orderPointAll",memberId);
	}

	@Override
	public int writeOrder(Map<String, Object> map) {
		int su = sqlSession.insert("orderSQL.writePurchase",map);
		return su;
	}

	@Override
	public Map<String, Object> getItemSellerNPrice(int item_id) {
		
		String seller_name = sqlSession.selectOne("orderSQL.getItemSeller", item_id);
		String item_price = sqlSession.selectOne("orderSQL.getItemPrice", item_id);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("seller_name", seller_name);
		map.put("item_price", item_price);
		return map;
		
	}
	
	@Override
	public String getUseCoupon(String orderId) {
		String useCouponId = null;
		useCouponId = sqlSession.selectOne("orderSQL.getUseCoupon",orderId); 
		
		if(useCouponId == null) {
			System.out.println("사용한 쿠폰 없다");
			return "none";
		}else {
			System.out.println(useCouponId);
			return useCouponId;
		}
	}
	
	@Override
	public void deleteCoupon(Map<String, String> tempMap) {
		sqlSession.delete("orderSQL.deleteCoupon",tempMap);
	}
	
	@Override
	public int getUsePoint(String orderId) {
		int usePointPrice = 0;
		
		usePointPrice = sqlSession.selectOne("orderSQL.getUsePoint",orderId);
		
		if(usePointPrice == 0) {
			return 0;
		}else {
			return usePointPrice;
		}
	}

	@Override
	public int deletePoint(Map<String, Object> tempMap) {
		//이름은 삭제지만 실제기능은 point에 사용 기록을 남기는 것
		int su = sqlSession.insert("orderSQL.deletePoint",tempMap);
		return su;
	}

	@Override
	public List<OrderItemDTO> getItemIdNQty(String orderId) {
		
		List<OrderItemDTO> list = sqlSession.selectList("orderSQL.getItemIdNQty",orderId);
		return list;
	}

	@Override
	public void setItemIdNQty(Map<String, Object> map) {
		sqlSession.update("orderSQL.setItemIdNQty",map);
		
	}

	@Override
	public int getItemQty(String item_id) {
		return sqlSession.selectOne("orderSQL.getItemQty",item_id);
	}

	@Override
	public void setItemState(String item_id) {
		sqlSession.update("orderSQL.setItemState",item_id);
		
	}

	@Override
	public void updatePoint(Map<String, String> map) {
		sqlSession.update("orderSQL.updatePoint",map);
	}

	@Override
	public int isOrder(Map<String, String> map) {
		return sqlSession.selectOne("orderSQL.isOrder", map);
	}

	@Override
	public List<OrderSellerHomeDTO> orderNumberList(Map<String, String> map) {
		return sqlSession.selectList("orderSQL.orderNumberList", map);
	}



	

	

	

	

}
