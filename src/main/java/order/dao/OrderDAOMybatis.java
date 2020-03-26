package order.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import member.bean.MemberDTO;

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

}
