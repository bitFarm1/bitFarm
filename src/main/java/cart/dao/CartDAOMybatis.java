package cart.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cart.bean.CartListDTO;

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
	public List<CartListDTO> cartAllList(String member_id) {
		return sqlSession.selectList("cartSQL.cartAllList", member_id);
	}

	@Override
	public void cartChoiceDelete(Map<String, String> map) {
		sqlSession.delete("cartSQL.cartChoiceDelete", map);
	}

	@Override
	public int cartListAllPrice(String memberId) {
		return sqlSession.selectOne("cartSQL.cartListAllPrice", memberId);
	}
	
}
