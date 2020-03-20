package member.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import member.bean.MemberDTO;
import member.dao.MemberDAO;

@Service(value="memberService")  
public class MemberServiceImpl implements MemberService {
	 
	@Autowired
	private MemberDAO memberDAO; 
	
	@Override 
	public int write(MemberDTO memberDTO) {
		return memberDAO.write(memberDTO);
		
	}

	@Override
	public int checkID(String id) {
		// TODO Auto-generated method stub
		return memberDAO.checkID(id);
	}

	@Override
	public MemberDTO login(Map<String, String> map) {
		// TODO Auto-generated method stub
		return memberDAO.login(map);
	}
 
}
