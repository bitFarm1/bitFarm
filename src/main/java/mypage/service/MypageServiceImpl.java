package mypage.service;

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

@Service
public class MypageServiceImpl implements MypageService {

	@Autowired
	private MypageDAO mypageDAO;
	
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
	public String goPickItem(Map<String, String> map) {
		
		String item_id = map.get("item_id");
		
		String existItem = mypageDAO.existItem(item_id);
		System.out.println(">>>>"+existItem);
		if(existItem != "true") {
			System.out.println("없다");
			mypageDAO.goPickItem(map);
		}
		return existItem;
	}

	//찜한 판매자
	@Override
	public List<MypagePickSellerDTO> getMypagePickSeller(String id) {
		
		List<MypagePickSellerDTO> list = mypageDAO.getMypagePickSeller(id);
		
		return list;
	}

}
