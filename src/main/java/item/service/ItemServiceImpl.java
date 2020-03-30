package item.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import item.bean.ItemDTO;
import item.dao.ItemDAO;

@Service(value="itemService")
public class ItemServiceImpl implements ItemService {
	@Autowired
	private ItemDAO itemDAO;
	
	@Override
	public ItemDTO getItemView(int seq) {
		return itemDAO.getItemView(seq);
	}

	@Override
	public void itemAdd(ItemDTO itemDTO) {
		itemDAO.itemAdd(itemDTO);
	}

	@Override
	public List<ItemDTO> getAllItemList() {
		return itemDAO.getAllItemList();
	}

	@Override
	public List<ItemDTO> getSellerItemList(String sellerName) {
		return itemDAO.getSellerItemList(sellerName);
	}

}
