package cart.dao;

import java.util.List;
import java.util.Map;

import cart.bean.CartListDTO;

public interface CartDAO {

	public void cartAdd(Map<String, Object> map);

	public List<CartListDTO> cartAllList(String memberId);

	public void cartChoiceDelete(Map<String, String> map);

	public String cartListAllPrice(String memberId);

	public int isExistInCart(Map<String, String> map);

	public void cartAddUpdate(Map<String, Object> map);

	public void updateCart(Map<String, String> map);

}
