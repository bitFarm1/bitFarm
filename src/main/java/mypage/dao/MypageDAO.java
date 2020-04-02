package mypage.dao;

import java.util.List;
import java.util.Map;

import information.bean.InformationQnADTO;
import mypage.bean.MypageCouponDTO;
import mypage.bean.MypagePickItemDTO;
import mypage.bean.MypagePickSellerDTO;
import mypage.bean.MypagePointDTO;
import order.bean.OrderDTO;

import mypage.bean.MypageReviewListDTO;

import order.bean.OrderImageDTO;
import order.bean.OrderListDTO;


public interface MypageDAO {

	public List<MypageCouponDTO> getCouponList(String id);

	public int getCouponTotal(String id);

	public void writeCoupon(String member_id);
	
	public int getPointTotal(String id);

	public List<MypagePointDTO> getPointList(String id);

	public void writePoint(String member_id);

	public List<MypageReviewListDTO> getMyReviewList(String id);

	public List<MypagePickItemDTO> getMypagePickItem(String id);

	public List<MypagePickSellerDTO> getMypagePickSeller(String id);

	public void goPickItem(Map<String, Object> map);

	public String existItem(Map<String, String> existMap);

	public void deleteChoicePickItem(Map<String, String> map);

	public void deletePickItem(Map<String, String> map);

	public void mypagePickSellerAdd(Map<String, String> map);

	public List<MypagePickSellerDTO> getMypagePickSellerList(String memberId);

	public void deletePickSeller(Map<String, String> map);

	public void deleteChoicePickSeller(Map<String, String> map);
 
	public void deletePoint(Map<String, String> map);

	public void deleteCoupon(Map<String, String> map);  

	public List<InformationQnADTO> getMyQnaList(String id);  

	public List<OrderListDTO> getMypageOrderList(Map<String, Object> map);

	public OrderDTO getMypageOrder(Map<String, String> map);

	public List<OrderImageDTO> getMypageOrderImage(Map<String, String> map);

	public int getOrderListTotalA(Map<String, Object> map);

	public int isExistPickSeller(Map<String, String> map);


}
