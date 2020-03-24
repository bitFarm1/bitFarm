package item.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="item")
public class ItemController {
	
	
	//판매자 홈에서 판매자가 판매할 상품 등록
	
	
	
	//상품 상세 페이지 - 이거 리스트에서 클릭하면 getItemViewForm 같은걸로 바꿔야할거같따 그냥 클릭하면 불러오는거 말이 안됨 띠바!!!
	@RequestMapping(value="itemViewForm", method=RequestMethod.GET)
	public ModelAndView itemViewForm() {
		ModelAndView mav = new ModelAndView();
		
		//테스트용 데이터 입력
			mav.addObject("seller_name", "비트네 딸기농장");
			mav.addObject("item_name", "상큼상큼 딸긔");
			mav.addObject("item_price", "7900");
			mav.addObject("item_explain", "상큼하고 단 신선한 딸기");
		
		mav.addObject("display", "/item/itemViewForm.jsp");
		mav.setViewName("/main/main");
		
		return mav;
	}
	
	
}
