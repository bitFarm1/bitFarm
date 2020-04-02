package sellerHome.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import order.bean.OrderSellerHomeDTO;

@Repository
@Transactional
public class SellerHomeDAOMybatis implements SellerHomeDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int getOrderNumberListTotalA(Map<String, Object> map) {
		return sqlSession.selectOne("sellerHomeSQL.getOrderNumberListTotalA", map);
	}

	@Override
	public List<OrderSellerHomeDTO> getSellItemList(Map<String, Object> map) {
		return sqlSession.selectList("sellerHomeSQL.getSellItemList", map);
	}
	


}
