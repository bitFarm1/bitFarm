package mypage.dao;

import java.util.List;
import java.util.Map;

import member.bean.MemberDTO;
import mypage.bean.MypageCouponDTO;
import mypage.bean.MypagePickItemDTO;
import mypage.bean.MypagePickSellerDTO;
import mypage.bean.MypagePointDTO;
import mypage.bean.MypageReviewDTO;

public interface MypageDAO {

	public List<MypageCouponDTO> getCouponList(String id);

	public int getCouponTotal(String id);

	public void writeCoupon(String member_id);
	
	public int getPointTotal(String id);

	public List<MypagePointDTO> getPointList(String id);

	public void writePoint(String member_id);

	public List<MypageReviewDTO> getMyReviewList(String id);

	public List<MypagePickItemDTO> getMypagePickItem(String id);

	public List<MypagePickSellerDTO> getMypagePickSeller(String id);

	public void goPickItem(Map<String, Object> map);

	public String existItem(Map<String, String> existMap);  

}
