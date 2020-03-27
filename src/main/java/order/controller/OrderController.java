package order.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cart.bean.CartListDTO;
import member.bean.MemberDTO;
import mypage.bean.MypageCouponDTO;
import mypage.bean.MypagePointDTO;
import order.service.OrderService;

@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value="/order/orderForm", method=RequestMethod.GET)
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
}
