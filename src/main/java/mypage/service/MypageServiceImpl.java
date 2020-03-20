package mypage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mypage.bean.MypageCouponDTO;
import mypage.bean.MypagePointDTO;
import mypage.dao.MypageDAO;

@Service
public class MypageServiceImpl implements MypageService {

	@Autowired
	private MypageDAO mypageDAO;
	
	//쿠폰
	@Override
	public List<MypageCouponDTO> getCouponList() {
		
		List<MypageCouponDTO> list = mypageDAO.getCouponList();
		
		return list;
	}
	
	//쿠폰 토탈
	@Override
	public int getCouponTotal() {

		return mypageDAO.getCouponTotal();
	}
	
	//포인트
	@Override
	public List<MypagePointDTO> getPointList() {
		
		List<MypagePointDTO> list = mypageDAO.getPointList();
		
		return list;
	}

	//포인트 토탈
	@Override
	public int getPointTotal() {
		
		return mypageDAO.getPointTotal();
	}

	

}
