package item.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import item.bean.ItemDTO;
import item.service.ItemService;
import order.service.OrderService;
import review.bean.ReviewDTO;
import review.service.ReviewService;

@Controller
@RequestMapping(value="item")
public class ItemController {
	@Autowired
	private ItemService itemService;
	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private OrderService orderService;
	
	//판매자 홈에서 판매자가 판매할 상품 등록
	@RequestMapping(value="itemAdd", method=RequestMethod.POST)
	public String itemAdd(@ModelAttribute ItemDTO itemDTO, @RequestParam MultipartFile[] img, HttpSession session, Model model) {
		String filePath = "D:\\spring\\workSTS\\bitFarm\\src\\main\\webapp\\storage";	//내가 설정한 파일 경로
		String fileName;
		File file;
		
		//파일 복사 1번째거 메인이미지
		if(img[0] != null) {
			fileName = img[0].getOriginalFilename();
			file = new File(filePath, fileName);
			try {
				FileCopyUtils.copy(img[0].getInputStream(), new FileOutputStream(file));	//copy(input, output) 자동으로 in>out처리해줌
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			//System.out.println("1. " + fileName);
			
			//복사한 파일을 DTO에 넣음
			itemDTO.setItem_main_image(fileName);
		}else {
			itemDTO.setItem_main_image("");
		}
		
		//=======================================================
		
		//파일 복사 2번째거 상세이미지
		if(img[1] != null) {
			fileName = img[1].getOriginalFilename();
			file = new File(filePath, fileName);
			try {
				FileCopyUtils.copy(img[1].getInputStream(), new FileOutputStream(file));	//copy(input, output) 자동으로 in>out처리해줌
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			//System.out.println("2. " + fileName);
			
			//복사한 파일을 DTO에 넣음
			itemDTO.setItem_detail_image(fileName);
		}else {
			itemDTO.setItem_detail_image("");
		}
		itemDTO.setSeller_name((String)session.getAttribute("sellerName"));
		
		itemService.itemAdd(itemDTO);
		model.addAttribute("display", "/sellerHome/itemAddSuccess.jsp");
		return "/main/main";
	}
	
	@RequestMapping(value="itemUpdate", method=RequestMethod.POST)
	public String itemUpdate(@ModelAttribute ItemDTO itemDTO, @RequestParam MultipartFile[] img, HttpSession session, Model model) {
		String filePath = "D:\\spring\\workSTS\\bitFarm\\src\\main\\webapp\\storage";	//내가 설정한 파일 경로
		String fileName;
		File file;
		
		System.out.println(itemDTO.getItem_amount());
		
		//파일 복사 1번째거 메인이미지
		if(img[0] != null) {
			fileName = img[0].getOriginalFilename();
			file = new File(filePath, fileName);
			try {
				FileCopyUtils.copy(img[0].getInputStream(), new FileOutputStream(file));	//copy(input, output) 자동으로 in>out처리해줌
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			//System.out.println("1. " + fileName);
			
			//복사한 파일을 DTO에 넣음
			itemDTO.setItem_main_image(fileName);
		}else {
			itemDTO.setItem_main_image("");
		}
		
		//=======================================================
		
		//파일 복사 2번째거 상세이미지
		if(img[1] != null) {
			fileName = img[1].getOriginalFilename();
			file = new File(filePath, fileName);
			try {
				FileCopyUtils.copy(img[1].getInputStream(), new FileOutputStream(file));	//copy(input, output) 자동으로 in>out처리해줌
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			//System.out.println("2. " + fileName);
			
			//복사한 파일을 DTO에 넣음
			itemDTO.setItem_detail_image(fileName);
		}else {
			itemDTO.setItem_detail_image("");
		}
		itemDTO.setSeller_name((String)session.getAttribute("sellerName"));
		
		itemService.itemUpdate(itemDTO);
		
		model.addAttribute("display", "/sellerHome/itemAddSuccess.jsp");
		return "/main/main";
	}
	
	//itemViewForm만 return하는 빈 페이지
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
