package review.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReviewController {

	@RequestMapping(value="/review/reviewWriteForm", method=RequestMethod.GET)
	public ModelAndView reviewWriteForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/review/reviewWriteForm.jsp");
		mav.setViewName("/main/main");
		
		return mav;
	}
}
