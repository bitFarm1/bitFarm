package cart.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cart.bean.CartListDTO;
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
	public List<CartListDTO> cartAllList(String memberId) {
		return cartDAO.cartAllList(memberId);
	}

	@Override
	public void cartChoiceDelete(String[] check, String memberId) {
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("check", check);
//		map.put("memberId", memberId);
//		cartDAO.cartChoiceDelete(map);
		
		for(int i=0; i<check.length; i++) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("check", check[i]);
			map.put("memberId", memberId);
			cartDAO.cartChoiceDelete(map);
		}
	}

	@Override
	public int cartListAllPrice(String memberId) {
		int itemAllPrice = cartDAO.cartListAllPrice(memberId);
		if(itemAllPrice==0) {
			return 0;
		}else {
			return itemAllPrice;
		}
	}
	
}
