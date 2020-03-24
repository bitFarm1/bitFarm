package cart.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cart.bean.CartDTO;

@Repository("cartDAO")
@Transactional
public class CartDAOMybatis implements CartDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void cartAdd(Map<String, Object> map) {
		sqlSession.insert("cartSQL.cartAdd", map);
	}

	@Override
	public List<CartDTO> cartAllList(String memberId) {
		return sqlSession.selectList("cartSQL.cartAllList", memberId);
	}
	
}
