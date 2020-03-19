package item.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ItemController {
	
	@RequestMapping(value="/item/itemViewForm", method=RequestMethod.GET)
	public ModelAndView itemViewForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("seller_name", "비트네 딸기농장");
		mav.addObject("item_price", "7900");
		mav.addObject("display", "/item/itemViewForm.jsp");
		mav.setViewName("/main/main");
		
		return mav;
	}
}
