package item.dao;

import java.util.List;

import item.bean.ItemDTO;
import item.bean.ItemMainListDTO;

public interface ItemDAO {

	public ItemDTO getItemView(int seq);

	public void itemAdd(ItemDTO itemDTO);

	public List<ItemMainListDTO> getBestItemList();

	public List<ItemDTO> getNewItemList();

	public List<ItemDTO> getSellerItemList(String sellerName);

	public List<ItemDTO> getCategoryList(String item_category_name);

	public List<ItemDTO> getSearchList(String searchT);

	public List<ItemDTO> getAllItemList();

	public List<ItemDTO> getSellerSoldOutList(String sellerName);

	public void itemUpdate(ItemDTO itemDTO);


}
