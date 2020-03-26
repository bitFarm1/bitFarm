package cart.service;

import java.util.List;
import java.util.Map;

import cart.bean.CartListDTO;

public interface CartService {

	public void cartAdd(Map<String, Object> map);

	public List<CartListDTO> cartAllList(String memberId);

	public void cartChoiceDelete(String[] check, String memberId);

	public int cartListAllPrice(String memberId);

}
