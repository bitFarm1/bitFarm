package sellerHome.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="sellerHome")
public class SellerHomeController {
	
	
	@RequestMapping(value="sellerAddForm", method=RequestMethod.GET)
	public String sellerAddForm(Model model) {
		model.addAttribute("display", "/sellerHome/sellerAddForm.jsp");
		return "/main/main";
	}	
	
	@RequestMapping(value="sellerAll", method=RequestMethod.GET)
	public String sellerAll(Model model) {
		model.addAttribute("display", "/sellerHome/sellerAll.jsp");
		return "/main/main";
	}
	
	@RequestMapping(value="sellerOrder", method=RequestMethod.GET)
	public String sellerOrder(Model model) {
		model.addAttribute("display", "/sellerHome/sellerOrder.jsp");
		return "/main/main";
	}
	
	//
	@RequestMapping(value="sellerOrderCheck1", method=RequestMethod.GET)
	public String sellerOrderCheck1(Model model) {
		model.addAttribute("display", "/sellerHome/sellerOrderCheck1.jsp");
		return "/main/main";
	}	
	
	@RequestMapping(value="sellerOrderCheck2", method=RequestMethod.GET)
	public String sellerOrderCheck2(Model model) {
		model.addAttribute("display", "/sellerHome/sellerOrderCheck2.jsp");
		return "/main/main";
	}
	
	@RequestMapping(value="sellerOrderCheck3", method=RequestMethod.GET)
	public String sellerOrderCheck3(Model model) {
		model.addAttribute("display", "/sellerHome/sellerOrderCheck3.jsp");
		return "/main/main";
	}
	
	//
	@RequestMapping(value="sellerQnABoard", method=RequestMethod.GET)
	public String sellerQnABoard(Model model) {
		model.addAttribute("display", "/sellerHome/sellerQnABoard.jsp");
		return "/main/main";
	}	
	
	@RequestMapping(value="sellerSell", method=RequestMethod.GET)
	public String sellerSell(Model model) {
		model.addAttribute("display", "/sellerHome/sellerSell.jsp");
		return "/main/main";
	}
	
	@RequestMapping(value="sellerSellDetail", method=RequestMethod.GET)
	public String sellerSellDetail(Model model) {
		model.addAttribute("display", "/sellerHome/sellerSellDetail.jsp");
		return "/main/main";
	}
	
	//
	@RequestMapping(value="sellerShipCheck", method=RequestMethod.GET)
	public String sellerShipCheck(Model model) {
		model.addAttribute("display", "/sellerHome/sellerShipCheck.jsp");
		return "/main/main";
	}	
	
	@RequestMapping(value="sellerStat", method=RequestMethod.GET)
	public String sellerStat(Model model) {
		model.addAttribute("display", "/sellerHome/sellerStat.jsp");
		return "/main/main";
	}
	
	@RequestMapping(value="sellerStore", method=RequestMethod.GET)
	public String sellerStore(Model model) {
		model.addAttribute("display", "/sellerHome/sellerStore.jsp");
		return "/main/main";

	}	
	
	//sellerQnAView 셀러 문의게시판 글 보기
	@RequestMapping(value="sellerQnAView", method=RequestMethod.GET)
	public String sellerQnAView(Model model) { 
		model.addAttribute("display", "/sellerHome/sellerQnAView.jsp");
		return "/main/main";
	}
	
	//sellerQnAView 셀러 문의게시판 답변하기 Form
	@RequestMapping(value="sellerQnaRe", method=RequestMethod.GET)
	public String sellerQnaRe(Model model) {
		model.addAttribute("display", "/sellerHome/sellerQnaRe.jsp");
		return "/main/main";
	}
}