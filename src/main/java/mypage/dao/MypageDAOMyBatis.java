package mypage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import mypage.bean.MypageCouponDTO;
import mypage.bean.MypagePointDTO;

@Repository
@Transactional
public class MypageDAOMyBatis implements MypageDAO {

	@Autowired
	private SqlSession sqlSession;
	
	//쿠폰
	@Override
	public List<MypageCouponDTO> getCouponList() {
		
		return sqlSession.selectList("mypageSQL.getCouponList");
	}

	@Override
	public int getCouponTotal() {

		return sqlSession.selectOne("mypageSQL.getCouponTotal");
	}
	
	//적립금
	@Override
	public int getPointTotal() {
		
		return sqlSession.selectOne("mypageSQL.getPointTotal");
	}

	@Override
	public List<MypagePointDTO> getPointList() {
		
		return sqlSession.selectList("mypageSQL.getPointList");
	}

}
