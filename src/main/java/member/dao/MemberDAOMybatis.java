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

	@Override
	public String getMemberPwd(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberSQL.getMemberPwd", id); 
	}

	@Override
	public MemberDTO checkAccount(Map<String, String> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberSQL.checkAccount", map); 
	}

	@Override
	public void delete(Map<String, String> map) {
		sqlSession.delete("memberSQL.delete", map);
		
	}

	@Override
	public void deleteInfo(Map<String, String> map) {
		sqlSession.insert("memberSQL.deleteInfo", map);
		
	}

	@Override
	public int modify1(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlSession.update("memberSQL.modify1", memberDTO);
	}
	
	@Override
	public int modify2(MemberDTO memberDTO) {
		// TODO Auto-generated method stub 
		return sqlSession.update("memberSQL.modify2", memberDTO);
	}

}
