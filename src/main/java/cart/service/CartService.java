package cart.service;

import java.util.List;
import java.util.Map;

import cart.bean.CartListDTO;

public interface CartService {

	public void cartAdd(Map<String, Object> map);

	public List<CartListDTO> cartAllList(String memberId);

	public void cartChoiceDelete(String[] check, String memberId);

	public String cartListAllPrice(String memberId);

	public int isExistInCart(String member_id, String item_id);

	public void cartAddUpdate(Map<String, Object> map);

	public void updateCart(String item_id, String item_qty, String item_all_price, String member_id);


}
