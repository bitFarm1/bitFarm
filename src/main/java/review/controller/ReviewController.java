package review.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import item.bean.ItemDTO;
import order.service.OrderService;
import review.bean.ReviewDTO;
import review.service.ReviewService;

@Controller
@RequestMapping(value="review")
public class ReviewController {
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private HttpSession session;
	@Autowired
	private OrderService orderService;

	@RequestMapping(value="reviewWriteForm", method=RequestMethod.GET)
	public ModelAndView reviewWriteForm(@RequestParam String item_id) {
		ModelAndView mav = new ModelAndView();
		
		ItemDTO itemDTO = reviewService.getItemDTO(item_id);
		
		mav.addObject("itemDTO", itemDTO);
		mav.addObject("display", "/review/reviewWriteForm.jsp");
		mav.setViewName("/main/main");
		
		return mav;
	}
	
	@RequestMapping(value="reviewConfirm", method=RequestMethod.GET)
	@ResponseBody
	public String reviewConfirm(@RequestParam String item_id) {
		String id = (String)session.getAttribute("memberId");
		String isOrder = orderService.isOrder(id, item_id);
		return isOrder;
	}
	
	@RequestMapping(value="reviewWrite", method=RequestMethod.POST)
	@ResponseBody
	public void reviewWrite(@ModelAttribute ReviewDTO reviewDTO, @RequestParam MultipartFile img) {
		
		String filePath = "D:\\spring\\workSTS\\bitFarm\\src\\main\\webapp\\storage";	//내가 설정한 파일 경로
		String fileName = img.getOriginalFilename();	//img의 이름은 임시파일 이름이라 오리지날 파일 이름을 잡아옴
		if(fileName.equals("")) {
			System.out.println("리뷰에 첨부파일 없음");
			
		}else {
			File file = new File(filePath, fileName);
			
			//파일 복사
			try {
				FileCopyUtils.copy(img.getInputStream(), new FileOutputStream(file));	//copy(input, output) 자동으로 in>out처리해줌
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		//복사한 파일을 DTO에 넣음
		reviewDTO.setReview_image(fileName);
		reviewDTO.setReview_user_id((String)session.getAttribute("memberId"));
		reviewService.reviewWrite(reviewDTO);
	}
}
