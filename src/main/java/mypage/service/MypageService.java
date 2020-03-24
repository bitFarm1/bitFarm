package mypage.service;

import java.util.List;

import member.bean.MemberDTO;
import mypage.bean.MypageCouponDTO;
import mypage.bean.MypagePointDTO;

public interface MypageService {

	public List<MypageCouponDTO> getCouponList(String id);

	public int getCouponTotal(String id);

	public int getPointTotal(String id);

	public List<MypagePointDTO> getPointList(String id);

	public void writeCoupon(String member_id); 

	public void writePoint(String member_id); 

}
