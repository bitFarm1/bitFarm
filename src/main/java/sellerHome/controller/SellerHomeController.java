package sellerHome.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import item.bean.ItemDTO;
import item.service.ItemService;
import order.bean.OrderSellerHomeDTO;
import order.service.OrderService;
import seller.bean.SellerDTO;
import seller.bean.SellerSell;
import seller.service.SellerService;
import sellerHome.bean.SellerOrderNumberListPaging;
import sellerHome.service.SellerHomeService;

@Controller
@RequestMapping(value="sellerHome")
public class SellerHomeController {
	@Autowired
	private HttpSession session;
	@Autowired
	private ItemService itemService;
	@Autowired
	private SellerService sellerService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private SellerHomeService sellerHomeService;
	
	//판매자 홈의 홈 역할
	//판매자가 파는 모든 상품의 리스트를 띄워줌
	@RequestMapping(value="sellerHomeMain", method=RequestMethod.GET)
	public String sellerHomeMain(Model model, @RequestParam(required=false) String sellerName) {
		
		String name;
		if(sellerName!=null) {	//사용자가 원하는 판매자의 홈으로 이동할때
			name = sellerName;
			
		}else {	//판매자 홈을 누른게 판매자 본인일때
			name = (String)session.getAttribute("sellerName");
			
		}
		
		List<ItemDTO> list = itemService.getSellerItemList(name);
		SellerDTO sellerDTO = sellerService.getSellerDTO(name);
		
		model.addAttribute("sellerDTO", sellerDTO);
		model.addAttribute("sellerName", name);
		model.addAttribute("sellerList", list);
		model.addAttribute("sellerHome", "/sellerHome/sellerAll.jsp");
		model.addAttribute("display", "/sellerHome/sellerHomeMain.jsp");
		return "/main/main";
	}
	
	//판매자가 판매 할 상품 등록하는 Form 띄워주는 메소드
	@RequestMapping(value="sellerAddForm", method=RequestMethod.GET)
	public String sellerAddForm(Model model) {
		SellerDTO sellerDTO = sellerService.getSellerDTO((String)session.getAttribute("sellerName"));
		
		model.addAttribute("sellerDTO", sellerDTO);
		model.addAttribute("sellerHome", "/sellerHome/sellerAddForm.jsp");
		model.addAttribute("display", "/sellerHome/sellerHomeMain.jsp");
		return "/main/main";
	}	
	
	//판매자 홈의 홈 역할
	//판매자가 파는 모든 상품의 리스트를 띄워줌
	@RequestMapping(value="sellerAll", method=RequestMethod.GET)
	public String sellerAll(Model model, @RequestParam(required=false) String sellerName) {
		
		String name;
		if(sellerName!=null) {	//사용자가 원하는 판매자의 홈으로 이동할때
			name = sellerName;
			
		}else {	//판매자 홈을 누른게 판매자 본인일때
			name = (String)session.getAttribute("sellerName");
			
		}
		
		List<ItemDTO> list = itemService.getSellerItemList(name);
		SellerDTO sellerDTO = sellerService.getSellerDTO(name);
		
		model.addAttribute("sellerDTO", sellerDTO);
		model.addAttribute("sellerName", name);
		model.addAttribute("sellerList", list);
		model.addAttribute("sellerHome", "/sellerHome/sellerAll.jsp");
		model.addAttribute("display", "/sellerHome/sellerHomeMain.jsp");
		return "/main/main";
	}
	
	//품절 상품 관리하는 리스트
	@RequestMapping(value="sellerManage", method=RequestMethod.GET)
	public String sellerManage(Model model) {
		
		String sellerName = (String)session.getAttribute("sellerName");
		
		List<ItemDTO> soldoutList = itemService.getSellerSoldOutList(sellerName);
		SellerDTO sellerDTO = sellerService.getSellerDTO(sellerName);
		
		//model.addAttribute("sellerName", name);
		model.addAttribute("sellerDTO", sellerDTO);
		model.addAttribute("soldoutList", soldoutList);
		model.addAttribute("sellerHome", "/sellerHome/sellerManage.jsp");
		model.addAttribute("display", "/sellerHome/sellerHomeMain.jsp");
		return "/main/main";
	}
	
	//판매자가 판매 할 상품 등록하는 Form 띄워주는 메소드
	@RequestMapping(value="sellerItemUpdateForm", method=RequestMethod.GET)
	public String sellerItemUpdateForm(Model model, @RequestParam String seq) {
		
		ItemDTO itemDTO = itemService.getItemView(Integer.parseInt(seq));
		
		SellerDTO sellerDTO = sellerService.getSellerDTO((String)session.getAttribute("sellerName"));
		
		model.addAttribute("sellerDTO", sellerDTO);
		model.addAttribute("itemDTO", itemDTO);
		model.addAttribute("sellerHome", "/sellerHome/sellerItemUpdate.jsp");
		model.addAttribute("display", "/sellerHome/sellerHomeMain.jsp");
		return "/main/main";
	}	
	
//	@RequestMapping(value="sellerItemUpdate", method=RequestMethod.POST)
//	public String sellerItemUpdate(Model model, @RequestParam ItemDTO itemDTO) {
//		
//		System.out.println(">>" + itemDTO.getItem_amount());
//		itemService.itemUpdate(itemDTO);
//		
//		SellerDTO sellerDTO = sellerService.getSellerDTO((String)session.getAttribute("sellerName"));
//		model.addAttribute("sellerDTO", sellerDTO);
//		model.addAttribute("sellerHome", "/sellerHome/sellerItemUpdate.jsp");
//		model.addAttribute("display", "/sellerHome/sellerHomeMain.jsp");
//		return "/main/main";
//	}	
	
	//지도 띄워주는거
	@RequestMapping(value="sellerStore", method=RequestMethod.GET)
	public String sellerStore(@RequestParam String sellerName,Model model) {
		
	//	SellerDTO sellerDTO = sellerService.getSellerDTO((String)session.getAttribute("sellerName"));		
		
		SellerDTO sellerDTO = sellerService.getSellerDTO(sellerName);
		
		String addr = sellerDTO.getSeller_address1().substring(8);
		System.out.println(addr);
		model.addAttribute("addr",addr);
		model.addAttribute("sellerDTO", sellerDTO);
		model.addAttribute("sellerHome", "/sellerHome/sellerStore.jsp");
		model.addAttribute("display", "/sellerHome/sellerHomeMain.jsp");
		return "/main/main";
	}	
	
	//내가 판 상품에 한해서 주문내역 뽑아오기
	@RequestMapping(value="sellerOrder", method=RequestMethod.GET)
	public String sellerOrder(Model model, @RequestParam(required=false, defaultValue="1") String pg) {
		
		String name = (String)session.getAttribute("sellerName");
		
		//페이징
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("name", name);
		map.put("pg", pg);
		SellerOrderNumberListPaging sellerOrderNumberListPaging = sellerHomeService.sellerOrderNumberListPaging(map);
		
		List<OrderSellerHomeDTO> list = sellerHomeService.getSellItemList(map);
		
		SellerDTO sellerDTO = sellerService.getSellerDTO((String)session.getAttribute("sellerName"));
		model.addAttribute("sellerDTO", sellerDTO);
		
		model.addAttribute("list", list);
		model.addAttribute("sellerOrderNumberListPaging", sellerOrderNumberListPaging);
		model.addAttribute("sellerHome", "/sellerHome/sellerOrder.jsp");
		model.addAttribute("display", "/sellerHome/sellerHomeMain.jsp");
		return "/main/main";
	}
	

	//주문내역 리스트 클릭하면 상세주문 리스트 return하는 메소드
	@RequestMapping(value="orderNumberList", method=RequestMethod.GET)
	public String orderNumberList(Model model, @RequestParam String seq, @RequestParam String id) {	//주문번호, 구매자 id 가져옴
		List<OrderSellerHomeDTO> list = orderService.orderNumberList(id, seq);
		model.addAttribute("orderNumberList", list);
		return "/sellerHome/orderNumberList";
	}


	@RequestMapping(value="sellerSell", method=RequestMethod.GET)
	public String sellerSell(Model model) {
		SellerDTO sellerDTO = sellerService.getSellerDTO((String)session.getAttribute("sellerName"));
		
		List<SellerSell> list = sellerService.sellerSell((String)session.getAttribute("sellerName"));
		
		model.addAttribute("list", list);
		model.addAttribute("sellerDTO", sellerDTO); 
		model.addAttribute("sellerHome", "/sellerHome/sellerSell.jsp");
		model.addAttribute("display", "/sellerHome/sellerHomeMain.jsp");
		return "/main/main";
	} 
	
	
	//========================================================================sellerHome Mapping 안되어있음
	
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
	
	
	
	@RequestMapping(value="/sellerSellDetail", method=RequestMethod.GET)
	public ModelAndView sellerSellDetail(@RequestParam String item_id) {
		ModelAndView mav = new ModelAndView();
		
		ItemDTO itemDTO = itemService.getItemView(Integer.parseInt(item_id)); 
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("item_id", item_id); 
		String[] sellData = new String[7];		
		     
		for(int i=0; i<7; i++) {
			map.put("i", i+"");   
			System.out.println(map.get("i"));  
			sellData[i] = sellerService.sellerSellDetail(map);
			mav.addObject("sellData"+i, sellData[i]); 	 		
		}  
		SellerDTO sellerDTO = sellerService.getSellerDTO((String)session.getAttribute("sellerName"));
				
		mav.addObject("itemDTO", itemDTO);
		mav.addObject("sellerDTO", sellerDTO);  
		mav.addObject("sellerHome", "/sellerHome/sellerSellDetail.jsp");
		mav.addObject("display", "/sellerHome/sellerHomeMain.jsp");
		mav.setViewName("/main/main"); 
		return mav; 
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
	
	
	
	
}
