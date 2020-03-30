package member.service;

import java.util.Map;

import member.bean.MemberDTO;

public interface MemberService {

	public int write(MemberDTO memberDTO);

	public int checkID(String id);

	public MemberDTO login(Map<String, String> map);

	public MemberDTO checkPwd(Map<String, String> map);
 
	public int mailSending(String email); 

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

	public Boolean getFindPwd(Map<String, String> map); 

	public int resetPwd(Map<String, String> map);

	public int getThisMonth();

	public int getLastMonth1();

	public int getLastMonth2();

	public int getLastMonth3();
 
	public int weekData(int i);

	public int memberCount(); 

	public int sellerCount();       
  
}
  