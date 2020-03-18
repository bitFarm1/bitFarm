package member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public ModelAndView write() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/member/write.jsp");
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
	public ModelAndView findPWD() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/member/findPWD.jsp");
		mav.setViewName("/main/main");
		return mav; 
	}
	
	@RequestMapping(value="/naver", method=RequestMethod.GET)
	public ModelAndView naver() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/member/naver.jsp");
		mav.setViewName("/main/main");
		return mav; 
	}
	
}
