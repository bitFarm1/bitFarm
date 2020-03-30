package item.dao;

import java.util.List;

import item.bean.ItemDTO;

public interface ItemDAO {

	public ItemDTO getItemView(int seq);

	public void itemAdd(ItemDTO itemDTO);

	public List<ItemDTO> getAllItemList();

	public List<ItemDTO> getSellerItemList(String sellerName);

}
