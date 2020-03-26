package order.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import member.bean.MemberDTO;
import order.dao.OrderDAO;

@Service(value="orderService")
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDAO orderDAO;

	@Override
	public MemberDTO getMemberInfo(String memberId) {
		return orderDAO.getMemberInfo(memberId);
	}

	@Override
	public int getTotalMoney(String memberId) {
		return orderDAO.getTotalMoney(memberId);
	}

}
