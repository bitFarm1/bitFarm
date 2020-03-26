package review.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import review.service.ReviewService;

@Controller
@RequestMapping(value="review")
public class ReviewController {
	@Autowired
	private ReviewService reviewService;

	@RequestMapping(value="reviewWriteForm", method=RequestMethod.GET)
	public ModelAndView reviewWriteForm(@RequestParam String item_id) {
		ModelAndView mav = new ModelAndView();
		
		String name = reviewService.getItemName(item_id);
		//System.out.println(name);
		
		mav.addObject("item_name", name);
		mav.addObject("display", "/review/reviewWriteForm.jsp");
		mav.setViewName("/main/main");
		
		return mav;
	}
}
