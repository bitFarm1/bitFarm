package mypage.dao;

import java.util.List;

import mypage.bean.MypageCouponDTO;
import mypage.bean.MypagePointDTO;

public interface MypageDAO {

	public List<MypageCouponDTO> getCouponList();

	public int getCouponTotal();

	public int getPointTotal();

	public List<MypagePointDTO> getPointList();

}
