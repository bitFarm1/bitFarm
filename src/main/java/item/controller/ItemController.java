package item.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import item.bean.ItemDTO;
import item.service.ItemService;
import review.bean.ReviewDTO;
import review.service.ReviewService;

@Controller
@RequestMapping(value="item")
public class ItemController {
	@Autowired
	private ItemService itemService;
	@Autowired
	private ReviewService reviewService;
	
	//판매자 홈에서 판매자가 판매할 상품 등록
	
	
	
	//itemViewForm만 return하는 빈 페이지 - 이거 필요없어
	@RequestMapping(value="itemViewForm", method=RequestMethod.GET)
	public String itemViewForm(Model model) {
		model.addAttribute("display", "/item/itemViewForm.jsp");
		return "/main/main";
	}
	
	
	//리스트에서 아이템 클릭하면 나오는 상품 상세 페이지
	@RequestMapping(value="getItemView", method=RequestMethod.GET)
	public ModelAndView getItemView(@RequestParam int seq) {
		ModelAndView mav = new ModelAndView();
		
		ItemDTO itemDTO = itemService.getItemView(seq);
		
		List<ReviewDTO> reviewList = reviewService.getItemReviewList(seq);
		
		mav.addObject("itemDTO", itemDTO);
		mav.addObject("reviewList", reviewList);
		mav.addObject("display", "/item/itemViewForm.jsp");
		mav.setViewName("/main/main"); 
		return mav;
	}
	
}
