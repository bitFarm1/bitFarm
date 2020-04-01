package main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import item.bean.ItemDTO;
import item.bean.ItemMainListDTO;
import item.service.ItemService;

@Controller
public class MainController {
	@Autowired
	private ItemService itemService;
	
	//메인화면 리턴 - 베스트, 신상품 리스트 2개 return
	@RequestMapping(value="/main/main", method=RequestMethod.GET)
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		
		List<ItemMainListDTO> bestList = itemService.getBestItemList();
		List<ItemDTO> newList = itemService.getNewItemList();
		
		mav.addObject("bestList", bestList);
		mav.addObject("newList", newList);
		mav.addObject("display", "/template/body.jsp");
		mav.setViewName("/main/main");
		
		return mav;
	} 
	
	//전체카테고리 누르면 전체 아이템 목록
	@RequestMapping(value="/main/allList", method=RequestMethod.GET)
	public ModelAndView allList() {
		ModelAndView mav = new ModelAndView();
		
		List<ItemDTO> allList = itemService.getAllItemList();
		
		mav.addObject("allList", allList);
		mav.addObject("display", "/template/allList.jsp");
		mav.setViewName("/main/main");
		return mav;
	} 
	
	//카테고리별 목록
	@RequestMapping(value="/main/categoryList", method=RequestMethod.GET)
	public ModelAndView categoryList(@RequestParam String category) {
		ModelAndView mav = new ModelAndView();
		
		//System.out.println(category);
		
		String item_category_name = null;
		if(category.equals("1")) {
			item_category_name = "과일/과일즙";
		}else if(category.equals("2")) {
			item_category_name = "축산/유정란";
		}else if(category.equals("3")) {
			item_category_name = "쌀/잡곡/견과류";
		}else if(category.equals("4")) {
			item_category_name = "고구마/감자/채소/버섯";
		}else if(category.equals("5")) {
			item_category_name = "장류/김치";
		}
		
		List<ItemDTO> list = itemService.getCategoryList(item_category_name);
		
		mav.addObject("list", list);
		mav.addObject("item_category_name", item_category_name);
		mav.addObject("display", "/template/categoryList.jsp");
		mav.setViewName("/main/main");
		return mav;
	} 
	
	//검색어에 따른 상품 목록
	@RequestMapping(value="/main/searchList", method=RequestMethod.GET)
	public ModelAndView searchList(@RequestParam String searchT) {
		//System.out.println(searchT);
		
		List<ItemDTO> list = itemService.getSearchList(searchT);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("searchT", searchT);
		mav.addObject("display", "/template/searchList.jsp");
		mav.setViewName("/main/main");
		return mav;
	}
	
	
	
	
}
