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

import information.bean.InformationQnADTO;
import mypage.bean.MypageCouponDTO;
import mypage.bean.MypagePickItemDTO;
import mypage.bean.MypagePickSellerDTO;
import mypage.bean.MypagePointDTO;
import mypage.bean.MypageReviewListDTO;
import mypage.service.MypageService;

import seller.bean.SellerDTO;
import seller.service.SellerService;
import order.bean.OrderDTO;
import order.bean.OrderImageDTO;
import order.bean.OrderListDTO;
import order.bean.OrderListPaging;



@Controller
@RequestMapping(value="mypage")
public class MypageController {
	
	@Autowired
	private MypageService mypageService;
	@Autowired
	private SellerService sellerService;
	
	@Autowired
	private HttpSession session;
	
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
	
	//리뷰
	@RequestMapping(value="/mypageMyReview", method=RequestMethod.GET)
	public ModelAndView mypageMyReview(HttpSession session) {
		String id = (String)session.getAttribute("memberId");
		List<MypageReviewListDTO> list = mypageService.getMyReviewList(id);
		
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
		
		String id = (String)session.getAttribute("memberId");
		String exist = null;
		
		//로그인 확인
		if(id==null) {
			return exist;
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("item_image", item_main_image);
		map.put("seller_name", seller_name);
		map.put("item_name", item_name);
		map.put("item_price", item_price);
		map.put("item_id", item_id);
		
		exist = mypageService.goPickItem(map);

		return exist;
	}
	
	//찜한 물건 선택삭제
	@RequestMapping(value="/deleteChoicePickItem", method=RequestMethod.POST)
	public ModelAndView deleteChoicePickItem(@RequestParam String[] check, Model model, HttpSession session) {
		
		String id = (String)session.getAttribute("memberId");
		for(int i=0; i<check.length; i++) {
			System.out.println(check[i]);
		}
		mypageService.deleteChoicePickItem(check, id);

		return new ModelAndView("redirect:/mypage/mypagePickItem");
	}
	
	//찜한 물건 삭제
	@RequestMapping(value="/deletePickItem", method=RequestMethod.POST)
	public ModelAndView deletePickItem(@RequestParam String deleteId, Model model, HttpSession session) {
		
		String id = (String)session.getAttribute("memberId");
		
		Map<String, String>map = new HashMap<String, String>();
		map.put("id",id);
		map.put("deleteId", deleteId);
		mypageService.deletePickItem(map);
		
		return new ModelAndView("redirect:/mypage/mypagePickItem");
	}
	

	/* 찜한 판매자 */
	//찜한 판매자 페이지 리턴
	@RequestMapping(value="/mypagePickSeller", method=RequestMethod.GET)
	public String mypagePickSeller(Model model, HttpSession session) {
		List<MypagePickSellerDTO> list = mypageService.getMypagePickSellerList((String)session.getAttribute("memberId"));
		
		model.addAttribute("list",list);
		model.addAttribute("display","/mypage/mypageMain.jsp");
		model.addAttribute("mypage","/mypage/mypagePickSeller.jsp");
		return "/main/main";
	}
	
	@RequestMapping(value="/mypagePickSellerAdd", method=RequestMethod.POST)
	public String mypagePickSellerAdd(Model model, HttpSession session, @RequestParam String sellerName) {

		String id = (String)session.getAttribute("memberId");
		
		String exist = mypageService.isExistPickSeller(id, sellerName);
		if(!exist.equals("true")) {
			SellerDTO sellerDTO = sellerService.getSellerDTO(sellerName);
			Map<String, String> map = new HashMap<String, String>();
			map.put("pick_seller_user_id", id);
			map.put("pick_seller_main_img", sellerDTO.getSeller_profileImage());
			map.put("pick_seller_name", sellerDTO.getSeller_name());
			map.put("pick_seller_id", sellerDTO.getSeller_id());
			
			mypageService.mypagePickSellerAdd(map);
		}
		
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
	
	//찜한 판매자 삭제 - 한개
	@RequestMapping(value="/deletePickSeller", method=RequestMethod.POST)
	public ModelAndView deletePickSeller(@RequestParam String deleteId, Model model, HttpSession session) {
		
		String id = (String)session.getAttribute("memberId");
		
		Map<String, String>map = new HashMap<String, String>();
		map.put("id",id);
		map.put("deleteId", deleteId);
		
		mypageService.deletePickSeller(map);
		
		return new ModelAndView("redirect:/mypage/mypagePickSeller");
	}

	//찜한 판매자 선택삭제 - 여러개
	@RequestMapping(value="/deleteChoicePickSeller", method=RequestMethod.POST)
	public ModelAndView deleteChoicePickSeller(@RequestParam String[] check, Model model, HttpSession session) {
		
		String id = (String)session.getAttribute("memberId");
		for(int i=0; i<check.length; i++) {
			System.out.println(check[i]);
		}
		mypageService.deleteChoicePickSeller(check, id);

		return new ModelAndView("redirect:/mypage/mypagePickSeller");
	}
	
	
	//구매내역
	 @RequestMapping(value="/mypagePurchaseList", method=RequestMethod.GET) 
	public ModelAndView mypagePurchaseList(@RequestParam(required=false, defaultValue="1")String pg ,HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		String id = (String)session.getAttribute("memberId");
		
		
		//페이징 처리
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("id",id);
		map.put("pg",pg);
		
		List<OrderListDTO> list = mypageService.getMypageOrderList(map);
		
		OrderListPaging orderListPaging = mypageService.orderListPaging(map);
		
		mav.addObject("pg", pg);
		mav.addObject("orderListPaging", orderListPaging);
		
		mav.addObject("list",list);
		mav.addObject("memberId",id);
		mav.addObject("display","/mypage/mypageMain.jsp");
		mav.addObject("mypage","/mypage/mypagePurchaseList.jsp");
		mav.setViewName("/main/main");
		
		return mav;
	}
	
	@RequestMapping(value="/mypagePurchaseDetail", method=RequestMethod.GET)
	public ModelAndView mypagePurchaseDetail(@RequestParam String order_id, HttpSession session) {
		
		String id = (String)session.getAttribute("memberId");
		
		Map<String, String>map = new HashMap<String,String>();
		map.put("id",id);
		map.put("order_id",order_id);
		
		OrderDTO orderDTO = mypageService.getMypageOrder(map);
		List<OrderImageDTO> imageList = mypageService.getMypageOrderImage(map);
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("orderDTO",orderDTO);
		mav.addObject("imageList",imageList);
		mav.addObject("memberId",id);
		mav.addObject("display","/mypage/mypageMain.jsp");
		mav.addObject("mypage","/mypage/mypagePurchaseDetail.jsp");
		mav.setViewName("/main/main");
		
		return mav;

	}
	
	
	@RequestMapping(value="/mypageQna", method=RequestMethod.GET)
	public ModelAndView mypageQna(HttpSession session) {
		String id = (String)session.getAttribute("memberId");
		List<InformationQnADTO> list = mypageService.getMyQnaList(id);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",list);
		mav.addObject("memberId",id);
		mav.addObject("display","/mypage/mypageMain.jsp");
		mav.addObject("mypage","/mypage/mypageQna.jsp");
		mav.setViewName("/main/main");

		return mav;
	}
	
	@RequestMapping(value="/mypageInfoQnABoard", method=RequestMethod.GET)
	public ModelAndView infoQnABoard(@RequestParam String order_id) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/information/infoMain.jsp");
		mav.addObject("info", "/information/infoQnABoard.jsp");
		mav.addObject("order_id",order_id);
		mav.setViewName("/main/main");
		 
		return mav; 
	}

	
}
