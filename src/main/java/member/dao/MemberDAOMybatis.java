package member.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import member.bean.MemberDTO;
 
@Repository("memberDAO") 
@Transactional
public class MemberDAOMybatis implements MemberDAO { 
	@Autowired 
	private SqlSession sqlSession;

	@Override
	public int write(MemberDTO memberDTO) { 
		return sqlSession.insert("memberSQL.write", memberDTO);
	}

	@Override
	public int checkID(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberSQL.checkID", id);
	}

	@Override
	public MemberDTO login(Map<String, String> map) { 
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberSQL.login", map);
	}  
 
	
 
}
