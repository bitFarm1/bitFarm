package seller.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;

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

}	