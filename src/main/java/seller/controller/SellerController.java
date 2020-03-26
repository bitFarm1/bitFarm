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
	
}

