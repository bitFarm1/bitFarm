package member.service;

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
 
}
