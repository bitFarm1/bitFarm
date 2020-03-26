package mypage.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import mypage.bean.MypageCouponDTO;
import mypage.bean.MypagePickItemDTO;
import mypage.bean.MypagePickSellerDTO;
import mypage.bean.MypagePointDTO;
import mypage.bean.MypageReviewDTO;
import mypage.service.MypageService;


@Controller
@RequestMapping(value="mypage")
public class MypageController {
	
	@Autowired
	private MypageService mypageService;
	
	@Autowired
	private HttpSession session;
	
	//구매내역
	@RequestMapping(value="/mypageMain", method=RequestMethod.GET)
	public String mypageMain(Model model) {
		model.addAttribute("display","/mypage/mypageMain.jsp");
		model.addAttribute("mypage","/mypage/mypagePurchaseList.jsp");
		return "/main/main";
	}
	
	//적립금
	@RequestMapping(value="/mypagePoint", method=RequestMethod.GET)
	public String mypagePoint(Model model) {
		model.addAttribute("display","/mypage/mypageMain.jsp");
		model.addAttribute("mypage","/mypage/mypagePoint.jsp");
		return "/main/main";
	}
	
	@RequestMapping(value="getPointList", method=RequestMethod.POST)
	public ModelAndView getPointList(HttpSession session) {
	
		String id = (String)session.getAttribute("memberId");
		
		List<MypagePointDTO> list = mypageService.getPointList(id);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",list);
		mav.addObject("memberId",id);
		mav.setViewName("jsonView");
		return mav;
	}
	
	
	//쿠폰
	@RequestMapping(value="/mypageCoupon", method=RequestMethod.GET)
	public String mypageCoupon(Model model) {
		model.addAttribute("display","/mypage/mypageMain.jsp");
		model.addAttribute("mypage","/mypage/mypageCoupon.jsp");
		return "/main/main";
	}
	
	@RequestMapping(value="getCouponList", method=RequestMethod.POST)
	public ModelAndView getCouponList(HttpSession session) {
		
		String id = (String)session.getAttribute("memberId");
		
		List<MypageCouponDTO> list = mypageService.getCouponList(id);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",list);
		mav.addObject("memberId",id);
		mav.setViewName("jsonView");
		return mav;
	}
	

	
	//mypageTop.jsp 적립금, 쿠폰 총 내역 보여주기
	@RequestMapping(value="/getTopTotal", method=RequestMethod.GET)
	@ResponseBody
	public ModelMap getTopTotal(ModelMap modelMap, HttpSession session) {
		//model map 써보기
		
		String id = (String)session.getAttribute("memberId");
		
		int couponTotal = mypageService.getCouponTotal(id);
		int pointTotal = mypageService.getPointTotal(id);
		
		ModelMap mm = new ModelMap();
		mm.addAttribute("memberId",id);
		mm.addAttribute("couponTotal", couponTotal);
		mm.addAttribute("pointTotal", pointTotal);
		return mm;
	}
	
	
	@RequestMapping(value="/mypageDeliveryTracking", method=RequestMethod.GET)
	public String mypageDeliveryTracking(Model model) {
		model.addAttribute("display","/mypage/mypageMain.jsp");
		model.addAttribute("mypage","/mypage/mypageDeliveryTracking.jsp");
		return "/main/main";
	}
	
	//리뷰
	@RequestMapping(value="/mypageMyReview", method=RequestMethod.GET)
	public ModelAndView mypageMyReview(HttpSession session) {
		String id = (String)session.getAttribute("memberId");
		List<MypageReviewDTO> list = mypageService.getMyReviewList(id);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",list);
		mav.addObject("memberId",id);
		mav.addObject("display","/mypage/mypageMain.jsp");
		mav.addObject("mypage","/mypage/mypageMyReview.jsp");
		mav.setViewName("/main/main");

		return mav;
	}
	
	//찜한 물건
	@RequestMapping(value="/mypagePickItem", method=RequestMethod.GET)
	public ModelAndView mypagePickItem(HttpSession session) {
		
		String id = (String)session.getAttribute("memberId");
		List<MypagePickItemDTO> list = mypageService.getMypagePickItem(id);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",list);
		mav.addObject("memberId",id);
		mav.addObject("display","/mypage/mypageMain.jsp");
		mav.addObject("mypage","/mypage/mypagePickItem.jsp");
		mav.setViewName("/main/main");

		return mav;
	}
	
	@RequestMapping(value="/goPickItem", method=RequestMethod.POST)
	@ResponseBody
	public String goPickItem(@RequestParam String item_id, @RequestParam String seller_name, 
							@RequestParam String item_name, @RequestParam String item_main_image,
							@RequestParam String item_price, HttpSession session) {
		
		
	//	System.out.println("도착");
		String id = (String)session.getAttribute("memberId");
		String exist = null;
		
		//로그인 확인
		if(id==null) {
	//		System.out.println("로그인해야함");
			return exist;
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("item_image", item_main_image);
		map.put("seller_name", seller_name);
		map.put("item_name", item_name);
	//	map.put("item_price", Integer.parseInt(item_price));
	//	map.put("item_id", Integer.parseInt(item_id));
		map.put("item_price", item_price);
		map.put("item_id", item_id);
		
		exist = mypageService.goPickItem(map);
		
		if(exist=="true") {
	//		System.out.println("존재");
		}else {
	//		System.out.println(exist);
	//		System.out.println("없음");
		}
		return exist;

	}
	
	//찜한 판매자
	@RequestMapping(value="/mypagePickSeller", method=RequestMethod.GET)
	public String mypagePickSeller(Model model) {
		model.addAttribute("display","/mypage/mypageMain.jsp");
		model.addAttribute("mypage","/mypage/mypagePickSeller.jsp");
		return "/main/main";
	}
	
	@RequestMapping(value="/getMypagePickSeller", method=RequestMethod.POST)
	public ModelAndView getMypagePickSeller(HttpSession session) {
		
		String id = (String)session.getAttribute("memberId");
		
		List<MypagePickSellerDTO> list = mypageService.getMypagePickSeller(id);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",list);
		mav.addObject("memberId",id);
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping(value="/mypagePurchaseDetail", method=RequestMethod.GET)
	public String mypagePurchaseDetail(Model model) {
		model.addAttribute("display","/mypage/mypageMain.jsp");
		model.addAttribute("mypage","/mypage/mypagePurchaseDetail.jsp");
		return "/main/main";
	}
	
	@RequestMapping(value="/mypagePurchaseList", method=RequestMethod.GET)
	public String mypagePurchaseList(Model model) {
		model.addAttribute("display","/mypage/mypageMain.jsp");
		model.addAttribute("mypage","/mypage/mypagePurchaseList.jsp");
		return "/main/main";
	}
	
	@RequestMapping(value="/mypageQna", method=RequestMethod.GET)
	public String mypageQna(Model model) {
		model.addAttribute("display","/mypage/mypageMain.jsp");
		model.addAttribute("mypage","/mypage/mypageQna.jsp");
		return "/main/main";
	}
	
	
}
