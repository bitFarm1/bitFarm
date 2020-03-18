package mypage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mypage.service.MypageService;

@Controller
@RequestMapping(value="mypage")
public class MypageController {
	
	@RequestMapping(value="/mypageMain", method=RequestMethod.GET)
	public String mypageMain(Model model) {
		model.addAttribute("display","/mypage/mypageMain.jsp");
		model.addAttribute("mypage","/mypage/mypagePurchaseList.jsp");
		return "/main/main";
	}
	
	@RequestMapping(value="/mypageCoupon", method=RequestMethod.GET)
	public String mypageCoupon(Model model) {
		model.addAttribute("display","/mypage/mypageMain.jsp");
		model.addAttribute("mypage","/mypage/mypageCoupon.jsp");
		return "/main/main";
	}
	
	@RequestMapping(value="/mypageDeliveryTracking", method=RequestMethod.GET)
	public String mypageDeliveryTracking(Model model) {
		model.addAttribute("display","/mypage/mypageMain.jsp");
		model.addAttribute("mypage","/mypage/mypageDeliveryTracking.jsp");
		return "/main/main";
	}
	
	@RequestMapping(value="/mypageMyReview", method=RequestMethod.GET)
	public String mypageMyReview(Model model) {
		model.addAttribute("display","/mypage/mypageMain.jsp");
		model.addAttribute("mypage","/mypage/mypageMyReview.jsp");
		return "/main/main";
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
	
	@RequestMapping(value="/mypagePoint", method=RequestMethod.GET)
	public String mypagePoint(Model model) {
		model.addAttribute("display","/mypage/mypageMain.jsp");
		model.addAttribute("mypage","/mypage/mypagePoint.jsp");
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
