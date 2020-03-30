package member.dao;

import java.util.Map;

import member.bean.MemberDTO;

public interface MemberDAO {

	public int write(MemberDTO memberDTO);

	public int checkID(String id);
 
	public MemberDTO login(Map<String, String> map);

	public String getMemberPwd(String id);

	public MemberDTO checkAccount(Map<String, String> map);

	public void delete(Map<String, String> map);

	public void deleteInfo(Map<String, String> map);

	public int modify1(MemberDTO memberDTO); 
	
	public int modify2(MemberDTO memberDTO);

	public int getNaverAccount();
	
	public int getBitAccount();
	 
	public int getKakaoAccount();
 
	public int checkType(MemberDTO memberDTO);

	public MemberDTO getFindId(Map<String, String> map);

	public MemberDTO getFindPwd(Map<String, String> map);

	public int resetPwd(Map<String, String> map);

	public int getLastMonth3(); 

	public int getLastMonth2();

	public int getLastMonth1();

	public int getThisMonth();

	public int weekData(int i);
 
	public int memberCount();

	public int sellerCount();
     

	
} 
  