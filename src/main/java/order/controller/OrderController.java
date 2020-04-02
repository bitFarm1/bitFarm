package order.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cart.bean.CartListDTO;
import member.bean.MemberDTO;
import mypage.service.MypageService;
import mypage.bean.MypageCouponDTO;

import order.service.OrderService;

@Controller
@RequestMapping(value="order")
public class OrderController {
	@Autowired
	private OrderService orderService;
	@Autowired
	private MypageService mypageService;
	
	@RequestMapping(value="orderForm", method=RequestMethod.GET)
	public ModelAndView orderForm(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		List<CartListDTO> list = (List<CartListDTO>)session.getAttribute("cartList");
		
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
	
	
	////////////////////////////////////////////////////
	@RequestMapping(value="writeOrder", method=RequestMethod.POST)
	@ResponseBody
	public void writeOrder(@RequestParam Map<String, Object> map, HttpSession session) {
		
		String id = (String)session.getAttribute("memberId");
		String email = (String)session.getAttribute("memberEmail");
		String name = (String)session.getAttribute("memberName");
		List<CartListDTO> cartList = (List<CartListDTO>) session.getAttribute("cartList");
		
		map.put("id", id);
		map.put("email",email);
		map.put("user_name",name);
		map.put("cartList",cartList);

		String orderId = orderService.orderNum();
		
		map.put("orderId",orderId);
		
		
		orderService.writeOrder(map);
		
		session.setAttribute("orderId", orderId);
	}
	/////////////////////////////////////////////////////
	//결제 성공 페이지
	@RequestMapping(value="orderSuccess", method=RequestMethod.GET)
	public ModelAndView orderSuccess(HttpSession session) {
		
		String id = (String)session.getAttribute("memberId");
		String orderId = (String)session.getAttribute("orderId");
		
		
		Map<String,String>map = new HashMap<String,String>();
		map.put("id",id);
		map.put("orderId",orderId);
		
		
		//판매수량 관리하기
		orderService.deleteItemQty(orderId);
		
		//카트 비우기
		session.removeAttribute("orderId");
		session.removeAttribute("cartList");
		
		//포인트 적립하기
		orderService.updatePoint(map);
		
		//사용한 포인트, 쿠폰 삭제
		orderService.deletePointNCoupon(map);
		
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