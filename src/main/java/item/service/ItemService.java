package item.service;

import java.util.List;

import item.bean.ItemDTO;

public interface ItemService {

	public ItemDTO getItemView(int seq);

	public void itemAdd(ItemDTO itemDTO);

	public List<ItemDTO> getAllItemList();

	public List<ItemDTO> getSellerItemList(String sellerName);

	public List<ItemDTO> getCategoryList(String item_category_name);

	public List<ItemDTO> getSearchList(String searchT);

}
