package mypage.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mypage.bean.MypageCouponDTO;
import mypage.bean.MypagePickItemDTO;
import mypage.bean.MypagePickSellerDTO;
import mypage.bean.MypagePointDTO;
import mypage.bean.MypageReviewDTO;
import mypage.dao.MypageDAO;
import order.bean.OrderDTO;
import order.bean.OrderImageDTO;
import order.bean.OrderListDTO;
import order.bean.OrderListPaging;

@Service
public class MypageServiceImpl implements MypageService {

	@Autowired
	private MypageDAO mypageDAO;
	
//	@Autowired
//	private OrderListPaging orderListPaging;
	
	//쿠폰
	@Override
	public List<MypageCouponDTO> getCouponList(String id) {
		
		List<MypageCouponDTO> list = mypageDAO.getCouponList(id);
		
		return list;
	}
	
	//쿠폰 토탈
	@Override
	public int getCouponTotal(String id) {

		return mypageDAO.getCouponTotal(id);
	}
	
	//포인트
	@Override
	public List<MypagePointDTO> getPointList(String id) {
		
		List<MypagePointDTO> list = mypageDAO.getPointList(id);
		
		return list;
	}

	//포인트 토탈
	@Override
	public int getPointTotal(String id) {
		
		return mypageDAO.getPointTotal(id);
	}

	//회원가입시 쿠폰 생성
	@Override
	public void writeCoupon(String member_id) {

	    mypageDAO.writeCoupon(member_id);
	}

	//회원가입시 포인트 생성
	@Override
	public void writePoint(String member_id) {

		mypageDAO.writePoint(member_id);
	}
	
	//리뷰 가져오기
	@Override
	public List<MypageReviewDTO> getMyReviewList(String id) {
		
		List<MypageReviewDTO> list = mypageDAO.getMyReviewList(id);

		return list;
	}
	
	//찜한 물건
	@Override
	public List<MypagePickItemDTO> getMypagePickItem(String id) {
		
		List<MypagePickItemDTO> list = mypageDAO.getMypagePickItem(id);
		
		return list;
	}
	
	@Override
	public String goPickItem(Map<String, Object> map) {
		
		String item_id = (String) map.get("item_id");
		String id = (String) map.get("id");
		
		Map<String, String> existMap = new HashMap<String, String>();
		existMap.put("id", id);
		existMap.put("item_id", item_id);
		
		//찜에 있는지 확인
		String existItem = mypageDAO.existItem(existMap);
	
		if(existItem != "true") {
	
			mypageDAO.goPickItem(map);
		}
		return existItem;
	}
	
	@Override
	public void deleteChoicePickItem(String[] check, String id) {
		
		for(int i=0; i<check.length; i++) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("id", id);
			map.put("check", check[i]);
			mypageDAO.deleteChoicePickItem(map);
		}
		
	}
	
	@Override
	public void deletePickItem(Map<String, String> map) {
		mypageDAO.deletePickItem(map);
	}

	//찜한 판매자
	@Override
	public List<MypagePickSellerDTO> getMypagePickSeller(String id) {
		
		List<MypagePickSellerDTO> list = mypageDAO.getMypagePickSeller(id);
		
		return list;
	}


	@Override
	public void mypagePickSellerAdd(Map<String, String> map) {
		mypageDAO.mypagePickSellerAdd(map);
	}

	@Override
	public List<MypagePickSellerDTO> getMypagePickSellerList(String memberId) {
		return mypageDAO.getMypagePickSellerList(memberId);
	}

	@Override
	public void deletePickSeller(Map<String, String> map) {
		mypageDAO.deletePickSeller(map);
	}

	@Override
	public void deleteChoicePickSeller(String[] check, String id) {
		for(int i=0; i<check.length; i++) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("id", id);
			map.put("check", check[i]);
			mypageDAO.deleteChoicePickSeller(map);
		}
	}

	@Override
	public void deletePoint(Map<String, String> map) {
		mypageDAO.deletePoint(map);
		
	}
 
	@Override
	public void deleteCoupon(Map<String, String> map) {
		mypageDAO.deleteCoupon(map);
	}

	//구매내역 가져오기
	@Override
	public List<OrderListDTO> getMypageOrderList(String id) {
	
		List<OrderListDTO> list = mypageDAO.getMypageOrderList(id);
		
		return list;

	}

	@Override
	public OrderDTO getMypageOrder(Map<String, String> map) {
		
		OrderDTO orderDTO = mypageDAO.getMypageOrder(map);
		
		return orderDTO;
	}

	@Override
	public List<OrderImageDTO> getMypageOrderImage(Map<String, String> map) {
		
		List<OrderImageDTO> list = mypageDAO.getMypageOrderImage(map);
		return list;
	}

	@Override
	public List<OrderListDTO> getMypageOrderYearList(Map<String, String> map) {
		
		List<OrderListDTO> list = mypageDAO.getMypageOrderYearList(map);
		System.out.println("서비스 잘왔어!");
		
		for(OrderListDTO dto : list) {
			System.out.println(dto);
		}
		return list;
	}

	@Override
	public OrderListPaging orderListPaging(String pg) {
		// TODO Auto-generated method stub
		return null;
	}

	/*
	 * @Override public OrderListPaging orderListPaging(String pg) {
	 * 
	 * int totalA = mypageDAO.getOrderListTotalA();//총글수
	 * 
	 * orderListPaging.setCurrentPage(Integer.parseInt(pg));
	 * orderListPaging.setPageBlock(3); orderListPaging.setPageSize(5);
	 * orderListPaging.setTotalA(totalA); orderListPaging.makePagingHTML();
	 * 
	 * return orderListPaging; }
	 */

	

	

}
