package cart.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cart.bean.CartListDTO;
import cart.service.CartService;
import item.bean.ItemDTO;
import item.service.ItemService;

@Controller
@RequestMapping(value="cart")
public class CartController {
	@Autowired
	private CartService cartService;
	@Autowired
	private ItemService itemService;

	//세션에 있는 아이디를 통해 그 아이디의 장바구니 리스트를 받아와서 장바구니 목록을 출력하는 메소드
	@RequestMapping(value="cartForm", method=RequestMethod.GET)
	public ModelAndView cartForm(HttpSession session) {
		ModelAndView mav = new ModelAndView();

		String memberId = (String)session.getAttribute("memberId");	
		List<CartListDTO> list = cartService.cartAllList(memberId);
		String totalMoney = cartService.cartListAllPrice(memberId);

		mav.addObject("totalMoney", totalMoney);
		mav.addObject("list", list);
		session.setAttribute("cartList", list);
		mav.addObject("display", "/cart/cartForm.jsp");
		mav.setViewName("/main/main");
		return mav;
	}
	
	@RequestMapping(value="updateCart", method=RequestMethod.POST)
	@ResponseBody
	public void updateCart(@RequestParam String item_id, @RequestParam String item_qty, @RequestParam String item_all_price, HttpSession session) {
		String member_id = (String)session.getAttribute("memberId");
		cartService.updateCart(item_id, item_qty, item_all_price, member_id);
		//return new ModelAndView("redirect:/cart/cartForm");
	}
	
	//장바구니 추가 버튼 누르면 장바구니 db에 추가하는 메소드
	@RequestMapping(value="cartAdd", method=RequestMethod.POST)
	@ResponseBody
	public boolean cartAdd(@RequestParam String item_id, @RequestParam String item_qty, @RequestParam String itemAllPrice, HttpSession session) {
		//System.out.print("상품 아이디 : " + item_id + ", 상풍 개수 : " + item_qty + ", 상품 총 가격 : " + itemAllPrice + "\n");
		
		String member_id = (String)session.getAttribute("memberId");
		//System.out.println(member_id);
		
		boolean data = false;
		
		if(member_id==null) {
			System.out.println("로그인ㄴㄴ 장바구니 이용 불가");
			
		}else {
			data = true;
			
			Map<String, Object> map = new HashMap<String, Object>();	//이거 서비스로 가져가서 담아야되나 싶긴한데 흠냐뤼
			map.put("member_id", member_id);
			map.put("item_id", Integer.parseInt(item_id));
			map.put("item_qty", Integer.parseInt(item_qty));
			itemAllPrice = itemAllPrice.replace(",", "");
			
			try {
				map.put("item_all_price", Integer.parseInt(itemAllPrice));
			}catch(NumberFormatException e) {	//item을 한개만 장바구니에 담을때 파라미터에서 itemAllPrice만 가져오고 1개라는걸 못가져오니까 실행하는 부분
				ItemDTO itemDTO = itemService.getItemView(Integer.parseInt(item_id));	
				String item_all_price = itemDTO.getItem_price()+"";
				map.put("item_all_price", item_all_price);
			}
			
			//장바구니에 그 상품이 미리 있는지 확인
			int exist = cartService.isExistInCart(member_id, item_id);
			
			if(exist==1) {	//이미 있음
				if(!item_qty.equals("1")) {
					ItemDTO itemDTO = itemService.getItemView(Integer.parseInt(item_id));
					map.put("item_all_price", itemDTO.getItem_price());
				}
				cartService.cartAddUpdate(map);
			}else {	//없음
				cartService.cartAdd(map);
			}
			
		}
		return data;
		
	}
	
	//장바구니에서 선택삭제 누르면 처리하는 메소드
	@RequestMapping(value="cartChoiceDelete", method=RequestMethod.POST)
	public ModelAndView cartChoiceDelete(@RequestParam String[] check, HttpSession session, Model model) {
		session.removeAttribute("cartList");
		cartService.cartChoiceDelete(check, (String)session.getAttribute("memberId"));
		return new ModelAndView("redirect:/cart/cartForm");
	}
	
}
