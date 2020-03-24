package cart.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cart.bean.CartDTO;
import cart.dao.CartDAO;

@Service(value="cartService")
public class CartServiceImpl implements CartService{
	@Autowired
	private CartDAO cartDAO;

	@Override
	public void cartAdd(Map<String, Object> map) {
		cartDAO.cartAdd(map);
	}

	@Override
	public List<CartDTO> cartAllList(String memberId) {
		return cartDAO.cartAllList(memberId);
	}
	
}
