package cart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CartController {

	@RequestMapping(value="/cart/cartForm", method=RequestMethod.GET)
	public ModelAndView cartForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/cart/cartForm.jsp");
		mav.setViewName("/main/main");
		
		return mav;
	}
}
