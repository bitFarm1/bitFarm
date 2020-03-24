package member.dao;

import java.util.Map;

import member.bean.MemberDTO;

public interface MemberDAO {

	public int write(MemberDTO memberDTO);

	public int checkID(String id);
 
	public MemberDTO login(Map<String, String> map);

	public String getMemberPwd(String id);

	public MemberDTO checkAccount(Map<String, String> map);

	
} 
  