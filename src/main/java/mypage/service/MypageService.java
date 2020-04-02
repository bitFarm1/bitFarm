package mypage.service;

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
import order.bean.OrderListPaging;


public interface MypageService {

	public List<MypageCouponDTO> getCouponList(String id);

	public int getCouponTotal(String id);

	public void writeCoupon(String member_id);
	
	public List<MypagePointDTO> getPointList(String id);
	
	public int getPointTotal(String id);
	
	public void writePoint(String member_id);

	public List<MypageReviewListDTO> getMyReviewList(String id);

	public List<MypagePickItemDTO> getMypagePickItem(String id);
	
	public String goPickItem(Map<String, Object> map);

	public List<MypagePickSellerDTO> getMypagePickSeller(String id);

	public void deleteChoicePickItem(String[] check, String id);

	public void deletePickItem(Map<String, String> map);

	public void mypagePickSellerAdd(Map<String, String> map);

	public List<MypagePickSellerDTO> getMypagePickSellerList(String memberId);

	public void deletePickSeller(Map<String, String> map);

	public void deleteChoicePickSeller(String[] check, String id);
 
	public void deletePoint(Map<String, String> map);

	public void deleteCoupon(Map<String, String> map);
 
	public List<OrderListDTO> getMypageOrderList(Map<String, Object> map);

	public OrderDTO getMypageOrder(Map<String, String> map);

	public List<OrderImageDTO> getMypageOrderImage(Map<String, String> map);

	public List<InformationQnADTO> getMyQnaList(String id);

	public OrderListPaging orderListPaging(Map<String, Object> map);

	public String isExistPickSeller(String id, String sellerName);


}
