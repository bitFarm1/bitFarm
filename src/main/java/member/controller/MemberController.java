package member.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import member.bean.MemberDTO;
import member.service.MemberService;

@Controller
@RequestMapping(value="member")
public class MemberController {	
	@Autowired  
	private MemberService memberService;
	
	@RequestMapping(value="/writeForm", method=RequestMethod.GET)
	public ModelAndView writeForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/member/writeForm.jsp");
		mav.setViewName("/main/main");
		return mav; 
	}
	
	@RequestMapping(value="/loginForm", method=RequestMethod.GET)
	public ModelAndView loginForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/member/loginForm.jsp");
		mav.setViewName("/main/main");
		return mav; 
	}
	
	@RequestMapping(value="/sellerWriteForm", method=RequestMethod.GET)
	public ModelAndView sellerWriteForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/member/sellerWriteForm.jsp");
		mav.setViewName("/main/main");
		return mav; 
	}
	
	@RequestMapping(value="/beforeModify", method=RequestMethod.GET)
	public ModelAndView beforeModify() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/member/beforeModify.jsp");
		mav.setViewName("/main/main");
		return mav; 
	}
	
	@RequestMapping(value="/findId", method=RequestMethod.GET)
	public ModelAndView findId() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/member/findId.jsp");
		mav.setViewName("/main/main");
		return mav; 
	}
	
	@RequestMapping(value="/findpwd", method=RequestMethod.GET)
	public ModelAndView findpwd() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/member/findpwd.jsp");
		mav.setViewName("/main/main");
		return mav; 
	}
	
	@RequestMapping(value="/signUp", method=RequestMethod.GET)
	public ModelAndView signUp() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/member/signUp.jsp");
		mav.setViewName("/main/main");
		return mav; 
	}
	
	@RequestMapping(value="/modifyForm", method=RequestMethod.GET)
	public ModelAndView modifyForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/member/modifyForm.jsp");
		mav.setViewName("/main/main");
		return mav; 
	}
	
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public ModelAndView write(@ModelAttribute MemberDTO memberDTO) {
		ModelAndView mav = new ModelAndView();
		int su = memberService.write(memberDTO);
		if(su > 0) {
			mav.addObject("display", "/member/writeOK.jsp");
		}else {
			mav.addObject("display", "/member/writeFail.jsp");
		}
		mav.setViewName("/main/main");
		return mav; 
	}
	 
	@RequestMapping(value="/findID", method=RequestMethod.GET)
	public ModelAndView findID() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/member/findID.jsp");
		mav.setViewName("/main/main");
		return mav; 
	}
	
	@RequestMapping(value="/findPWD", method=RequestMethod.GET)
	public ModelAndView findPWD(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		
		
		mav.addObject("display", "/member/findPWD.jsp");
		mav.setViewName("/main/main");
		return mav; 
	}
	
	@RequestMapping(value="/naver", method=RequestMethod.GET)
	public ModelAndView naver(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView(); 
		
		mav.addObject("display", "/member/naverInfo.jsp"); 
		mav.setViewName("/main/main"); 
		return mav;  
	}
	
	@RequestMapping(value="/checkID", method=RequestMethod.POST)
	public ModelAndView checkID(@RequestParam String id) {
		ModelAndView mav = new ModelAndView();	
		int exist = memberService.checkID(id);
		
		if(exist==0)  
			mav.addObject("exist","none_exist");
		else
			mav.addObject("exist","exist");  
		
		mav.setViewName("jsonView");
		return mav;   
	}  
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public ModelAndView naver(@RequestParam Map<String, String> map, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		MemberDTO memberDTO = memberService.login(map);
		
		if(memberDTO == null) {
			mav.addObject("login","fail"); 
		}else {			
			session.setAttribute("memberName", memberDTO.getMember_name()); //session은 내장 기본 객체 default 30분  
			session.setAttribute("memberId", map.get("id"));   
			session.setAttribute("memberEmail", memberDTO.getMember_email());
			mav.addObject("login","success"); 
		}
				
		mav.setViewName("jsonView");  
		return mav; 
	}
	
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public ModelAndView logout(HttpSession session) { 
		session.invalidate();
		return new ModelAndView("redirect:/main/main");
	}
	
//	@RequestMapping(value="checkPwd", method=RequestMethod.POST)
//	public ModelAndView naver(@RequestParam String pwd, HttpSession session) {
//		ModelAndView mav = new ModelAndView();
//		MemberDTO memberDTO = memberService.checkPwd 
//	}
//	
	
	
	
}
