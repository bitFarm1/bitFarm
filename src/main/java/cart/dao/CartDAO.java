package cart.dao;

import java.util.List;
import java.util.Map;

import cart.bean.CartDTO;

public interface CartDAO {

	public void cartAdd(Map<String, Object> map);

	public List<CartDTO> cartAllList(String memberId);

}
