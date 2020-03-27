package order.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import member.bean.MemberDTO;
import mypage.bean.MypageCouponDTO;
import mypage.bean.MypagePointDTO;

@Repository("orderDAO")
@Transactional
public class OrderDAOMybatis implements OrderDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public MemberDTO getMemberInfo(String memberId) {
		return sqlSession.selectOne("orderSQL.getMemberInfo", memberId);
	}

	@Override
	public int getTotalMoney(String memberId) {
		return sqlSession.selectOne("orderSQL.getTotalMoney", memberId);
	}

	//200326 김소중
	@Override
	public List<MypageCouponDTO> orderCouponList(String memberId) {
		return sqlSession.selectList("orderSQL.orderCouponList",memberId);
	}

	@Override
	public int orderPointAll(String memberId) {
		return sqlSession.selectOne("orderSQL.orderPointAll",memberId);
	}

	

}
