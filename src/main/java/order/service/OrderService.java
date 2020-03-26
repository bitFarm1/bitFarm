package order.service;

import member.bean.MemberDTO;

public interface OrderService {

	public MemberDTO getMemberInfo(String memberId);

	public int getTotalMoney(String memberId);

}
