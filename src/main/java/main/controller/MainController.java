package main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import item.bean.ItemDTO;
import item.service.ItemService;

@Controller
public class MainController {
	@Autowired
	private ItemService itemService;
	
	//메인화면 리턴
	@RequestMapping(value="/main/main", method=RequestMethod.GET)
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		
		List<ItemDTO> mainList = itemService.getAllItemList();
		
		mav.addObject("mainList", mainList);
		mav.addObject("display", "/template/body.jsp");
		mav.setViewName("/main/main");
		
		return mav;
	} 
}
