package member.service;

import java.util.Map;

import member.bean.MemberDTO;

public interface MemberService {

	public int write(MemberDTO memberDTO);

	public int checkID(String id);

	public MemberDTO login(Map<String, String> map); 


}
 