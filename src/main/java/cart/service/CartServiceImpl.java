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
		for(int i=0; i<check.length; i++) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("check", check[i]);
			map.put("memberId", memberId);
			cartDAO.cartChoiceDelete(map);
		}
	}

	@Override
	public String cartListAllPrice(String memberId) {
		return cartDAO.cartListAllPrice(memberId);
//		String itemAllPrice = cartDAO.cartListAllPrice(memberId);
//		System.out.println(itemAllPrice);
//		if(itemAllPrice.equals("null")) {
//			return "0";
//		}else {
//			return itemAllPrice;
//		}
	}

	@Override
	public int isExistInCart(String member_id, String item_id) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("member_id", member_id);
		map.put("item_id", item_id);
		return cartDAO.isExistInCart(map);
	}

	@Override
	public void cartAddUpdate(Map<String, Object> map) {
		cartDAO.cartAddUpdate(map);
	}

	@Override
	public void updateCart(String item_id, String item_qty, String item_all_price, String member_id) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("item_id", item_id);
		map.put("item_qty", item_qty);
		map.put("item_all_price", item_all_price);
		map.put("member_id", member_id);
		cartDAO.updateCart(map);		
	}
}
