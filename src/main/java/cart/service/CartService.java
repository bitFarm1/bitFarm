package cart.service;

import java.util.List;
import java.util.Map;

import cart.bean.CartDTO;

public interface CartService {

	public void cartAdd(Map<String, Object> map);

	public List<CartDTO> cartAllList(String memberId);

}
