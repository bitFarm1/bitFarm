package item.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import item.bean.ItemDTO;

@Repository("itemDAO")
@Transactional
public class ItemDAOMybatis implements ItemDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public ItemDTO getItemView(int seq) {
		return sqlSession.selectOne("itemSQL.getItemView", seq);
	}

}
