package information.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="information")
public class InformationController {
	
	@RequestMapping(value="/infoBoard", method=RequestMethod.GET)
	public ModelAndView infoBoard() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/information/infoMain.jsp");
		mav.addObject("info", "/information/infoBoard.jsp");
		
		mav.setViewName("/main/main"); 
		 
		return mav;
	}
	
	@RequestMapping(value="/infoQnABoard", method=RequestMethod.GET)
	public ModelAndView infoQnABoard() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/information/infoMain.jsp");
		mav.addObject("info", "/information/infoQnABoard.jsp");
		mav.setViewName("/main/main");
		 
		return mav; 
	} 
	
	@RequestMapping(value="/infoView", method=RequestMethod.GET)
	public ModelAndView infoView() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/information/infoMain.jsp");
		mav.addObject("info", "/information/infoView.jsp");
		mav.setViewName("/main/main");
		 
		return mav;
	}
	
	
}
