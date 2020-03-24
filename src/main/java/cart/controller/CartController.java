package cart.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="cart")
public class CartController {

	@RequestMapping(value="cartForm", method=RequestMethod.GET)
	public ModelAndView cartForm(@RequestParam Map<String, String> map) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/cart/cartForm.jsp");
		mav.setViewName("/main/main");
		
		return mav;
	}
	
	@RequestMapping(value="cartAdd", method=RequestMethod.POST)
	public ModelAndView cartAdd(@RequestParam String item_price) {
		ModelAndView mav = new ModelAndView();
		
		System.out.println(item_price);
		
		mav.addObject("display", "/cart/cartForm.jsp");
		mav.setViewName("/main/main");
		
		return mav;
	}
	
	
}
