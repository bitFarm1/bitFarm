package member.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;

import javax.inject.Inject;
import javax.mail.Session;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import member.bean.MemberDTO;
import member.dao.MemberDAO;
import member.service.MemberService;
import mypage.service.MypageService;

@Controller
@RequestMapping(value="member")
public class MemberController {			
	@Autowired  
	private MemberService memberService;
	@Autowired
	private MypageService mypageService;
	
	@Autowired
	private BCryptPasswordEncoder pwdEncoder;
	
	
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
	public ModelAndView beforeModify(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/member/beforeModify.jsp");
		mav.setViewName("/main/main");
		return mav; 
	}
	
	@RequestMapping(value="/findIdForm", method=RequestMethod.GET)
	public ModelAndView findId() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/member/findIdForm.jsp");
		mav.setViewName("/main/main");
		return mav; 
	}
	
	@RequestMapping(value="/findPwdForm", method=RequestMethod.GET)
	public ModelAndView findpwd() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/member/findPwdForm.jsp");
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
	public ModelAndView modifyForm(HttpSession session) {
		Map<String, String> map = new HashMap<String, String>();
		
		ModelAndView mav = new ModelAndView();
		map.put("id",(String) session.getAttribute("memberId")); 
		MemberDTO memberDTO = memberService.login(map);
		 
		mav.addObject("memberDTO", memberDTO);
		mav.addObject("display", "/member/modifyForm.jsp");
		mav.setViewName("/main/main");
		return mav; 
	}
	
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public ModelAndView write(@ModelAttribute MemberDTO memberDTO) {


		ModelAndView mav = new ModelAndView();
		String member_id = memberDTO.getMember_id();
		
		//암호화
		String inputPwd = memberDTO.getMember_pwd();
		String pwd = pwdEncoder.encode(inputPwd);
		  
		memberDTO.setMember_pwd(pwd);
		int su = memberService.write(memberDTO);
		mypageService.writeCoupon(member_id);
		mypageService.writePoint(member_id);   
		
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
	
	//email="+email+"&name="+name+"&type=naver"
	@RequestMapping(value="/naver", method=RequestMethod.GET)
	public ModelAndView naver(@RequestParam Map<String, String> map, HttpSession session)  {
		MemberDTO memberDTO = memberService.checkAccount(map);		
		ModelAndView mav = new ModelAndView(); 
		System.out.println("로그인");
		if(memberDTO != null) {
			if(map.get("type").equals(memberDTO.getMember_loginType())) {
				session.setAttribute("memberId", memberDTO.getMember_id());	//session은 내장 기본 객체 default 30분  
				session.setAttribute("memberName", memberDTO.getMember_name()); 
				session.setAttribute("memberEmail", memberDTO.getMember_email());
				mav.addObject("display","/member/snsLoginSuccess.jsp"); 
			}else {  
				mav.addObject("display","/member/snsLoginFail.jsp");
			}			 
			
		}else { 
			mav.addObject("display", "/member/snsWriteForm.jsp");  
		} 
		
		System.out.println("메인으로"); 
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
	public ModelAndView login(@RequestParam Map<String, String> map, HttpSession session) {
		ModelAndView mav = new ModelAndView();
	
		String pwd = map.get("pwd");
		String id = map.get("id");
		System.out.println(pwd);   
		System.out.println(id);  
		boolean pwdMatch = pwdEncoder.matches(pwd, memberService.getMemberPwd(id));
		 
		if(pwdMatch) { 
			MemberDTO memberDTO = memberService.login(map);
			if(memberDTO.getMember_id().equals("admin")) {
				session.setAttribute("admin", map.get("id"));    
				
			}else {
				session.setAttribute("memberName", memberDTO.getMember_name()); //session은 내장 기본 객체 default 30분  
				session.setAttribute("memberId", map.get("id"));   
				session.setAttribute("memberEmail", memberDTO.getMember_email());
				session.setAttribute("loginType", memberDTO.getMember_loginType());
			}
				mav.addObject("login","success"); 			    
		}else {			
			mav.addObject("login","fail"); 
		}				
		mav.setViewName("jsonView");  
		return mav; 
	} 
	
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public ModelAndView logout(HttpSession session) { 
		session.invalidate();
		return new ModelAndView("redirect:/main/main");
	}
	
	@RequestMapping(value="checkPwd", method=RequestMethod.POST)
	public ModelAndView checkPwd(@RequestParam Map<String, String> map, HttpSession session) {
		ModelAndView mav = new ModelAndView(); 
		String pwd = map.get("pwd");
		String id = map.get("id");
		MemberDTO memberDTO = null;
		
		boolean pwdMatch = pwdEncoder.matches(pwd, memberService.getMemberPwd(id));
		 
		if(pwdMatch) {
			memberDTO = memberService.checkPwd(map);
		}
		
		if(memberDTO == null) {			 
			mav.addObject("login","fail"); 
		}else {
			mav.addObject("login","success");
			mav.addObject("memberDTO",memberDTO);
		}
		mav.setViewName("jsonView"); 
		return mav; 
	}
	
	@RequestMapping(value="/checkEmail", method=RequestMethod.GET)
	public String checkEmail(Model model) {		  
		return "/member/checkEmail";
	}
	 
	 
	@RequestMapping(value = "mailSending", method=RequestMethod.GET)
	public ModelAndView mailSending(@RequestParam String email) { 
		ModelAndView mav = new ModelAndView();
//		String email = map.get("member_email");  
		int num = memberService.mailSending(email); 
		mav.addObject("num", num);
		mav.setViewName("/member/mailmail");
	      
		return mav; 
	}
	
	@RequestMapping(value="deleteAccount", method=RequestMethod.GET) 
	public String deleteAccount(Model model) {
		model.addAttribute("display", "/member/deleteAccount.jsp");
		return "/main/main";
	}	
	
	@RequestMapping(value="delete", method=RequestMethod.POST)
	public ModelAndView delete(@RequestParam Map<String, String> map, HttpSession session) {
		ModelAndView mav = new ModelAndView(); 
		session.invalidate();
		mypageService.deleteCoupon(map); 
		mypageService.deletePoint(map); 
		memberService.delete(map);   
		memberService.deleteInfo(map);   
		
		mav.addObject("display","/template/body.jsp"); 
		mav.setViewName("/main/main"); 
		return mav; 		 
	} 
	
	@RequestMapping(value="/modify", method=RequestMethod.POST)
	public ModelAndView modify(@ModelAttribute MemberDTO memberDTO, HttpSession session) {

		ModelAndView mav = new ModelAndView();
				
		int su;
		//노비번수정
		if(memberDTO.getMember_pwd()=="") {
			su = memberService.modify1(memberDTO);			
		}else {
		//암호화 
			String inputPwd = memberDTO.getMember_pwd();
			String pwd = pwdEncoder.encode(inputPwd);
			  
			memberDTO.setMember_pwd(pwd); 
			su = memberService.modify2(memberDTO);
		}
		 
		if(su > 0) {
			mav.addObject("display", "/member/writeOK.jsp");
		}else {
			mav.addObject("display", "/member/writeFail.jsp");
		}
		
		session.setAttribute("memberId", memberDTO.getMember_id());	//session은 내장 기본 객체 default 30분  
		session.setAttribute("memberName", memberDTO.getMember_name()); 
		session.setAttribute("memberEmail", memberDTO.getMember_email());
		mav.setViewName("/main/main"); 
		return mav; 
	}
		
	
	@RequestMapping(value="agree", method=RequestMethod.GET)
	public String agree(Model model) { 		
		return "/member/agree";
	}
	
	@RequestMapping(value="agree1", method=RequestMethod.GET)
	public String agree1(Model model) {  		
		return "/member/agree1";
	}
	 
	@RequestMapping(value="/getFindId", method=RequestMethod.POST)
	public ModelAndView getFindId(@RequestParam Map<String, String> map) {
		ModelAndView mav = new ModelAndView();
		
		MemberDTO memberDTO = memberService.getFindId(map);
		if(memberDTO == null) {
			mav.addObject("find","no");
		}else {
			mav.addObject("find","yes");
			mav.addObject("memberDTO", memberDTO);			
		}
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping(value="/getFindPwd", method=RequestMethod.POST)
	public ModelAndView getFindPwd(@RequestParam Map<String, String> map) {
		ModelAndView mav = new ModelAndView();
				
		if(memberService.getFindPwd(map)) {
			mav.addObject("find","yes");
			
		}else {				
			mav.addObject("find","no"); 
		}
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping(value="/resetPwdForm", method=RequestMethod.GET)
	public ModelAndView getFindPwd(@RequestParam String member_id) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("member_id", member_id);		 
		mav.addObject("display", "/member/resetPwdForm.jsp");  
		mav.setViewName("/main/main"); 
		return mav;
	}
	
	@RequestMapping(value="/resetPwd", method=RequestMethod.POST)
	public ModelAndView resetPwd(@RequestParam Map<String, String> map) {
		ModelAndView mav = new ModelAndView();
		String inputPwd = map.get("member_pwd");
		String pwd = pwdEncoder.encode(inputPwd);
		  
		map.put("pwd", pwd);		
		
		int reset = memberService.resetPwd(map);  
		
		if(reset > 0)
			mav.addObject("change","success");
		else
			mav.addObject("change", "fail");
		
		mav.setViewName("jsonView"); 
		return mav;  
	}
}
