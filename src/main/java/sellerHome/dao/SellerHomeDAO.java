package sellerHome.dao;

import java.util.List;
import java.util.Map;

import order.bean.OrderSellerHomeDTO;

public interface SellerHomeDAO {

	public int getOrderNumberListTotalA(Map<String, Object> map);

	public List<OrderSellerHomeDTO> getSellItemList(Map<String, Object> map);

}
