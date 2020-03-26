package seller.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import seller.bean.SellerDTO;
import seller.service.SellerService;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.ModelAttribute;


 
@Controller
@RequestMapping(value="seller") 
public class SellerController {
	///////////////////////////////////////////////김정훈
	@Autowired
	private SellerService sellerService;  
	 
	@Autowired
	private BCryptPasswordEncoder pwdEncoder;
	
	@RequestMapping(value="/sellerLoginForm", method=RequestMethod.GET)
	public ModelAndView loginForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/seller/sellerLoginForm.jsp");
		mav.setViewName("/main/main");  
		return mav; 
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)  
	public ModelAndView login(@RequestParam Map<String, String> map, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		String pwd = map.get("pwd"); 
		String id = map.get("id");
		System.out.println(pwd);   
		System.out.println(id);  
		boolean pwdMatch = pwdEncoder.matches(pwd, sellerService.getSellerPwd(id));
		
		if(pwdMatch) { 
			SellerDTO sellerDTO = sellerService.login(map);
			session.setAttribute("sellerName", sellerDTO.getSeller_name()); //session은 내장 기본 객체 default 30분  
			session.setAttribute("sellerId", map.get("id"));   
			session.setAttribute("sellerEmail",sellerDTO.getSeller_email()); 
		}else {
			mav.addObject("login", "fail"); 
		}
		 
		mav.setViewName("jsonView");
		return mav;
	}
	
	 
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public ModelAndView write(@ModelAttribute SellerDTO sellerDTO) {
		ModelAndView mav = new ModelAndView(); 
		String inputPwd = sellerDTO.getSeller_pwd();
		String pwd = pwdEncoder.encode(inputPwd);
		sellerDTO.setSeller_pwd(pwd); 
		   
		int su = sellerService.write(sellerDTO);
		if(su > 0) {  
			mav.addObject("display", "/member/writeOK.jsp");
		}else {
			mav.addObject("display", "/member/writeFail.jsp");
		}
		mav.setViewName("/main/main");
		return mav; 
	} 
	 
	@RequestMapping(value="/checkID", method=RequestMethod.POST)
	public ModelAndView checkID(@RequestParam String id) {
		ModelAndView mav = new ModelAndView();	
		int exist = sellerService.checkID(id);
		 
		if(exist==0) 
			mav.addObject("exist","none_exist");
		else
			mav.addObject("exist","exist");  
		
		mav.setViewName("jsonView");
		return mav;   
	}  
	
	@RequestMapping(value = "mailSending", method=RequestMethod.GET)
	public ModelAndView mailSending(@RequestParam String email) {
		ModelAndView mav = new ModelAndView();
//		String email = map.get("member_email");
		int num = sellerService.mailSending(email);  
		mav.addObject("num", num); 
		mav.setViewName("/member/mailmail"); 
	  
		return mav; 
	}
	
	///////////////////////////////////////////////김정훈
	@RequestMapping(value="sellerAddForm", method=RequestMethod.GET)
	public String sellerAddForm(Model model) {
		model.addAttribute("display", "/seller/sellerAddForm.jsp");
		return "/main/main";
	}	
	@RequestMapping(value="sellerAll", method=RequestMethod.GET)
	public String sellerAll(Model model) {
		model.addAttribute("display", "/seller/sellerAll.jsp");
		return "/main/main";
	}
	@RequestMapping(value="sellerLeft", method=RequestMethod.GET)
	public String sellerLeft(Model model) {
		model.addAttribute("display", "/seller/sellerLeft.jsp");
		return "/main/main";
	}
	@RequestMapping(value="sellerOrder", method=RequestMethod.GET)
	public String sellerOrder(Model model) {
		model.addAttribute("display", "/seller/sellerOrder.jsp");
		return "/main/main";
	}
	
	//
	@RequestMapping(value="sellerOrderCheck1", method=RequestMethod.GET)
	public String sellerOrderCheck1(Model model) {
		model.addAttribute("display", "/seller/sellerOrderCheck1.jsp");
		return "/main/main";
	}	
	@RequestMapping(value="sellerOrderCheck2", method=RequestMethod.GET)
	public String sellerOrderCheck2(Model model) {
		model.addAttribute("display", "/seller/sellerOrderCheck2.jsp");
		return "/main/main";
	}
	@RequestMapping(value="sellerOrderCheck3", method=RequestMethod.GET)
	public String sellerOrderCheck3(Model model) {
		model.addAttribute("display", "/seller/sellerOrderCheck3.jsp");
		return "/main/main";
	}
	
	//
	@RequestMapping(value="sellerQnABoard", method=RequestMethod.GET)
	public String sellerQnABoard(Model model) {
		model.addAttribute("display", "/seller/sellerQnABoard.jsp");
		return "/main/main";
	}	
	@RequestMapping(value="sellerSell", method=RequestMethod.GET)
	public String sellerSell(Model model) {
		model.addAttribute("display", "/seller/sellerSell.jsp");
		return "/main/main";
	}
	@RequestMapping(value="sellerSellDetail", method=RequestMethod.GET)
	public String sellerSellDetail(Model model) {
		model.addAttribute("display", "/seller/sellerSellDetail.jsp");
		return "/main/main";
	}
	
	//
	@RequestMapping(value="sellerShipCheck", method=RequestMethod.GET)
	public String sellerShipCheck(Model model) {
		model.addAttribute("display", "/seller/sellerShipCheck.jsp");
		return "/main/main";
	}	
	@RequestMapping(value="sellerStat", method=RequestMethod.GET)
	public String sellerStat(Model model) {
		model.addAttribute("display", "/seller/sellerStat.jsp");
		return "/main/main";
	}
	@RequestMapping(value="sellerStore", method=RequestMethod.GET)
	public String sellerStore(Model model) {
		model.addAttribute("display", "/seller/sellerStore.jsp");
		return "/main/main";

	}	
	
	//sellerQnAView 셀러 문의게시판 글 보기
	@RequestMapping(value="sellerQnAView", method=RequestMethod.GET)
	public String sellerQnAView(Model model) { 
		model.addAttribute("display", "/seller/sellerQnAView.jsp");
		return "/main/main";
	}
	
	//sellerQnAView 셀러 문의게시판 답변하기 Form
	@RequestMapping(value="sellerQnaRe", method=RequestMethod.GET)
	public String sellerQnaRe(Model model) {
		model.addAttribute("display", "/seller/sellerQnaRe.jsp");
		return "/main/main";
	}
	
}

