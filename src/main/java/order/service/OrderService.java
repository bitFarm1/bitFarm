package order.service;

import java.util.List;

import member.bean.MemberDTO;
import mypage.bean.MypageCouponDTO;
import mypage.bean.MypagePointDTO;

public interface OrderService {

	public MemberDTO getMemberInfo(String memberId);

	public int getTotalMoney(String memberId);

	//200326 김소중
	public List<MypageCouponDTO> orderCouponList(String memberId);

	public int orderPointAll(String memberId);

}
