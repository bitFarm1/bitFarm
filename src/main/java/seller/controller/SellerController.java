package seller.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import seller.bean.SellerDTO;
import seller.service.SellerService;

@Controller
@RequestMapping(value="seller")
public class SellerController { 
	@Autowired
	private SellerService sellerService;
	
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public ModelAndView write(@ModelAttribute SellerDTO sellerDTO) {
		ModelAndView mav = new ModelAndView();
		 
		int su = sellerService.write(sellerDTO);
		if(su > 0) {  
			mav.addObject("display", "/member/writeOK.jsp");
		}else {
			mav.addObject("display", "/member/writeFail.jsp");
		}
		mav.setViewName("/main/main");
		return mav; 
	}
}
