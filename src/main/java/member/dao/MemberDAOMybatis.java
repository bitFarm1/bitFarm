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

	@Override
	public int getNaverAccount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberSQL.getNaverAccount");
	}

	@Override
	public int getBitAccount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberSQL.getBitAccount");
	}

	@Override
	public int getKakaoAccount() { 
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberSQL.getKakaoAccount");
	}

	@Override
	public int checkType(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberSQL.checkType", memberDTO);  
	}

	@Override
	public MemberDTO getFindId(Map<String, String> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberSQL.getFindId", map);
	}

	@Override
	public MemberDTO getFindPwd(Map<String, String> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberSQL.getFindPwd", map);
	}

	@Override
	public int resetPwd(Map<String, String> map) {
		return sqlSession.update("memberSQL.resetPwd", map); 
		
	}

	@Override
	public int getLastMonth3() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberSQL.getLastMonth3");
	}

	@Override
	public int getLastMonth2() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberSQL.getLastMonth2");
	}

	@Override
	public int getLastMonth1() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberSQL.getLastMonth1");
	}

	@Override
	public int getThisMonth() { 
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberSQL.getThisMonth");
	}

	@Override
	public int weekData(int i) {
		// TODO Auto-generated method stub 
		return sqlSession.selectOne("memberSQL.weekData", i);
	}

	@Override
	public int memberCount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberSQL.memberCount"); 
	}

	@Override
	public int sellerCount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberSQL.sellerCount"); 
	}

}
