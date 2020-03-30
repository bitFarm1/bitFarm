package item.service;

import item.bean.ItemDTO;

public interface ItemService {

	public ItemDTO getItemView(int seq);

	public void itemAdd(ItemDTO itemDTO);

}
