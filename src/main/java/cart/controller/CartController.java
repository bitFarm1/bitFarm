package cart.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cart.bean.CartDTO;
import cart.service.CartService;

@Controller
@RequestMapping(value="cart")
public class CartController {
	@Autowired
	private CartService cartService;

	//세션에 있는 아이디를 통해 그 아이디의 카트 리스트 받아와서 카드 목록 보여줌니다
	@RequestMapping(value="cartForm", method=RequestMethod.GET)
	public ModelAndView cartForm(HttpSession session) {
		String memberId = (String)session.getAttribute("memberId");	//세션에 저장되어있는 아이디를 받아옴
		List<CartDTO> list = cartService.cartAllList(memberId);		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("display", "/cart/cartForm.jsp");
		mav.setViewName("/main/main");
		return mav;
	}
	
	//장바구니 추가 버튼 누르면 디비가서 상품 추가해줌
	@RequestMapping(value="cartAdd", method=RequestMethod.POST)
	@ResponseBody
	public void cartAdd(@RequestParam String item_id, @RequestParam String item_qty, @RequestParam String itemAllPrice, HttpSession session) {
		//System.out.print("상품 아이디 : " + item_id + ", 상풍 개수 : " + item_qty + ", 상품 총 가격 : " + itemAllPrice + "\n");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("user_id", session.getAttribute("memberId"));
		map.put("item_id", Integer.parseInt(item_id));
		map.put("item_qty", Integer.parseInt(item_qty));
		itemAllPrice = itemAllPrice.replace(",", "");
		map.put("item_all_price", Integer.parseInt(itemAllPrice));
		
		cartService.cartAdd(map);
	}
	
	
}
