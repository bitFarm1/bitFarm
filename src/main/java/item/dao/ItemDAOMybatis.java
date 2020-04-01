package item.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import item.bean.ItemDTO;
import item.bean.ItemMainListDTO;

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
	public List<ItemMainListDTO> getBestItemList() {
		return sqlSession.selectList("itemSQL.getBestItemList");
	}

	@Override
	public List<ItemDTO> getNewItemList() {
		return sqlSession.selectList("itemSQL.getNewItemList");
	}

	@Override
	public List<ItemDTO> getSellerItemList(String sellerName) {
		return sqlSession.selectList("itemSQL.getSellerItemList", sellerName);
	}

	@Override
	public List<ItemDTO> getCategoryList(String item_category_name) {
		return sqlSession.selectList("itemSQL.getCategoryList", item_category_name);
	}

	@Override
	public List<ItemDTO> getSearchList(String searchT) {
		return sqlSession.selectList("itemSQL.getSearchList", searchT);
	}

	@Override
	public List<ItemDTO> getAllItemList() {
		return sqlSession.selectList("itemSQL.getAllItemList");
	}

	@Override
	public List<ItemDTO> getSellerSoldOutList(String sellerName) {
		return sqlSession.selectList("itemSQL.getSellerSoldOutList", sellerName);
	}

	@Override
	public void itemUpdate(ItemDTO itemDTO) {
		sqlSession.update("itemSQL.itemUpdate", itemDTO);
	}


}
