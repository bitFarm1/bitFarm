package mypage.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import mypage.bean.MypageCouponDTO;
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
		mav.addObject("memberId",session.getAttribute("memberId"));
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
	public String mypageMyReview(Model model) {
		model.addAttribute("display","/mypage/mypageMain.jsp");
		model.addAttribute("mypage","/mypage/mypageMyReview.jsp");
		return "/main/main";
	}
	
	@RequestMapping(value="getMyReviewList", method=RequestMethod.POST)
	public ModelAndView getMyReviewList(HttpSession session) {
	
		String id = (String)session.getAttribute("memberId");
		
		List<MypageReviewDTO> list = mypageService.getMyReviewList(id);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",list);
		mav.addObject("memberId",id);
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping(value="/mypagePickItem", method=RequestMethod.GET)
	public String mypagePickItem(Model model) {
		model.addAttribute("display","/mypage/mypageMain.jsp");
		model.addAttribute("mypage","/mypage/mypagePickItem.jsp");
		return "/main/main";
	}
	
	@RequestMapping(value="/mypagePickSeller", method=RequestMethod.GET)
	public String mypagePickSeller(Model model) {
		model.addAttribute("display","/mypage/mypageMain.jsp");
		model.addAttribute("mypage","/mypage/mypagePickSeller.jsp");
		return "/main/main";
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
