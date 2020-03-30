package order.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cart.bean.CartDTO;
import cart.bean.CartListDTO;
import member.bean.MemberDTO;
import mypage.bean.MypagePickItemDTO;
import mypage.bean.MypageCouponDTO;
import mypage.bean.MypagePointDTO;
import order.bean.OrderDTO;

import order.service.OrderService;

@Controller
@RequestMapping(value="order")
public class OrderController {
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value="orderForm", method=RequestMethod.GET)
	public ModelAndView orderForm(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		List<CartListDTO> list = (List<CartListDTO>)session.getAttribute("cartList");
		//System.out.println(list.size());
		
		MemberDTO memberDTO = orderService.getMemberInfo((String)session.getAttribute("memberId"));
		
		int totalMoney = orderService.getTotalMoney((String)session.getAttribute("memberId"));
		
		mav.addObject("list", list);
		mav.addObject("memberDTO", memberDTO);
		mav.addObject("totalMoney", totalMoney);
		mav.addObject("display", "/order/orderForm.jsp");
		mav.setViewName("/main/main");
		
		//200326 김소중
		List<MypageCouponDTO> couponList = orderService.orderCouponList((String)session.getAttribute("memberId"));
		int pointTotal = orderService.orderPointAll((String)session.getAttribute("memberId"));
		
		mav.addObject("couponList",couponList);
		mav.addObject("pointTotal",pointTotal);
		
		return mav;
	}
	
	@RequestMapping(value="pickItemOrder", method=RequestMethod.POST)
	public ModelAndView pickItemOrder(@ModelAttribute List<MypagePickItemDTO> list) {
		ModelAndView mav = new ModelAndView();
		
		System.out.println(list.size());
		
		return mav;
	}
	////////////////////////////////////////////////////
	@RequestMapping(value="writeOrder", method=RequestMethod.POST)
	public ModelAndView writeOrder(@RequestParam Map<String, Object> map, HttpSession session) {
		
		String id = (String)session.getAttribute("memberId");
		String email = (String)session.getAttribute("memberName");
		String name = (String)session.getAttribute("memberName");
		List<CartListDTO> cartList = (List<CartListDTO>) session.getAttribute("cartList");
		
		map.put("id", id);
		map.put("email",email);
		map.put("name",name);
		map.put("cartList",cartList);

		String orderId = orderService.orderNum();
		map.put("order_id",orderId);
		
		System.out.println(">>>>"+cartList.size());
		
		orderService.writeOrder(map);
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/order/orderSuccess.jsp");
		mav.setViewName("/main/main");
		return mav;
	}
	/////////////////////////////////////////////////////
	//결제 성공 페이지
	@RequestMapping(value="orderSuccess", method=RequestMethod.GET)
	public ModelAndView orderSuccess() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/order/orderSuccess.jsp");
		mav.setViewName("/main/main");
		return mav;
	}
	
	//결제 실패 페이지
	@RequestMapping(value="orderFail", method=RequestMethod.GET)
	public ModelAndView orderFail() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/order/orderFail.jsp");
		mav.setViewName("/main/main");
		return mav;
	}
	
	
	
	
	
	
	
}