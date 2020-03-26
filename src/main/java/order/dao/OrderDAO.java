package order.dao;

import member.bean.MemberDTO;

public interface OrderDAO {

	public MemberDTO getMemberInfo(String memberId);

	public int getTotalMoney(String memberId);

}
