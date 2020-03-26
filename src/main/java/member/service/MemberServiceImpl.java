package member.service;

import java.util.Map;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import member.bean.MemberDTO;
import member.dao.MemberDAO;

@Service(value="memberService")  
public class MemberServiceImpl implements MemberService {
	@Autowired
	private HttpSession session;
	
	@Autowired
	private JavaMailSender mailSender;
	
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

	@Override
	public MemberDTO checkPwd(Map<String, String> map) {
		// TODO Auto-generated method stub
		map.put("id", (String) session.getAttribute("memberId"));
		return memberDAO.login(map);
	}

	@Override
	public int mailSending(String email) { 
		int num;
		
		while(true) {			
			num = (int)(Math.random()*999999);
			if(num>=100000) break;
		}
		

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message,
					true, "UTF-8");
 
			messageHelper.setFrom("bitFarmBOT@gmail.com"); // 보내는사람 생략하면 정상작동을 안함
			messageHelper.setTo(email); // 받는사람 이메일
			messageHelper.setSubject("비트팜 이메일 인증입니다."); // 메일제목은 생략이 가능하다
			messageHelper.setText("비트팜 이메일 인증입니다.\n\n 인증 번호 : "+num+"\n\n번호를 인증란에 입력해주세요."); // 메일 내용
  
			mailSender.send(message);	
		} catch (Exception e) {   
			System.out.println(e);  
		}
		return num;
		
	}

	@Override
	public String getMemberPwd(String id) {
		// TODO Auto-generated method stub 
		return memberDAO.getMemberPwd(id);   
	}

	@Override
	public MemberDTO checkAccount(Map<String, String> map) {		
		MemberDTO memberDTO = memberDAO.checkAccount(map);
		
		return memberDTO; 
		
	}

	@Override
	public void delete(Map<String, String> map) {
		memberDAO.delete(map);
		
	}

	@Override
	public void deleteInfo(Map<String, String> map) {
		memberDAO.deleteInfo(map);		
	}
	
	@Override
	public int modify1(MemberDTO memberDTO) {
		return memberDAO.modify1(memberDTO); 
	}
	
	@Override
	public int modify2(MemberDTO memberDTO) {
		return memberDAO.modify2(memberDTO);
	}

	@Override
	public int getNaverAccount() {
		// TODO Auto-generated method stub
		return memberDAO.getNaverAccount(); 
	}
	
	@Override
	public int getBitAccount() {
		// TODO Auto-generated method stub
		return memberDAO.getBitAccount(); 
	}

	@Override 
	public int getKakaoAccount() { 
		// TODO Auto-generated method stub
		return memberDAO.getKakaoAccount(); 
	}


}
