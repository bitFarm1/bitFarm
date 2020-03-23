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
	public List<MypageCouponDTO> getCouponList(String id) {
		
		return sqlSession.selectList("mypageSQL.getCouponList",id);
	
	}

	@Override
	public int getCouponTotal(String id) {

		return sqlSession.selectOne("mypageSQL.getCouponTotal",id);
	}
	
	//적립금
	@Override
	public int getPointTotal(String id) {
		
		return sqlSession.selectOne("mypageSQL.getPointTotal",id);
	}

	@Override
	public List<MypagePointDTO> getPointList(String id) {
		
		return sqlSession.selectList("mypageSQL.getPointList",id);
	}

}
