package item.dao;

import java.util.List;

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

	@Override
	public void itemAdd(ItemDTO itemDTO) {
		sqlSession.insert("itemSQL.itemAdd", itemDTO);
	}

	@Override
	public List<ItemDTO> getAllItemList() {
		return sqlSession.selectList("itemSQL.getAllItemList");
	}

	@Override
	public List<ItemDTO> getSellerItemList(String sellerName) {
		return sqlSession.selectList("itemSQL.getSellerItemList", sellerName);
	}

	@Override
	public List<ItemDTO> getCategoryList(String item_category_name) {
		return sqlSession.selectList("itemSQL.getCategoryList", item_category_name);
	}

}
