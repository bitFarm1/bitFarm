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
		
		int su = sqlSession.insert("orderSQL.writeOrder",map);
		return su;
	}

	@Override
	public Map<String, Object> getItemSellerNPrice(int item_id) {
		System.out.println("DAO도착");
		String seller_name = sqlSession.selectOne("orderSQL.getItemSeller", item_id);
		String item_price = sqlSession.selectOne("orderSQL.getItemPrice", item_id);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("seller_name", seller_name);
		map.put("item_price", item_price);
		return map;
		
	}

	

}
