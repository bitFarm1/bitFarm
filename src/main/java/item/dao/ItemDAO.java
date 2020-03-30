package item.dao;

import item.bean.ItemDTO;

public interface ItemDAO {

	public ItemDTO getItemView(int seq);

	public void itemAdd(ItemDTO itemDTO);

}
