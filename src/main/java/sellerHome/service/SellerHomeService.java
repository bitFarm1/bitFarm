package sellerHome.service;

import java.util.List;
import java.util.Map;

import order.bean.OrderSellerHomeDTO;
import sellerHome.bean.SellerOrderNumberListPaging;

public interface SellerHomeService {

	public SellerOrderNumberListPaging sellerOrderNumberListPaging(Map<String, Object> map);
	
	public List<OrderSellerHomeDTO> getSellItemList(Map<String, Object> map);

}
