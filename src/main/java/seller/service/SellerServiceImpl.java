package seller.service;


import java.util.List;
import java.util.Map;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import member.bean.MemberDTO;
import seller.bean.SellerDTO;
import seller.bean.SellerSell;
import seller.dao.SellerDAO;

@Service(value="sellerService")   
public class SellerServiceImpl implements SellerService {
	 
	@Autowired
	private SellerDAO sellerDAO; 
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Override 
	public int write(SellerDTO sellerDTO) {
		return sellerDAO.write(sellerDTO);		  
	}

	@Override
	public int checkID(String id) {
		// TODO Auto-generated method stub
		return sellerDAO.checkID(id);
	}

	@Override
	public SellerDTO login(Map<String, String> map) {
		// TODO Auto-generated method stub
		return sellerDAO.login(map);
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
 
			messageHelper.setFrom("bitFarmBOT@gmail.com", "비트팜봇"); // 보내는사람 생략하면 정상작동을 안함
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
	public String getSellerPwd(String id) {
		return sellerDAO.getSellerPwd(id);
	}

	@Override
	public SellerDTO getSellerDTO(String sellerName) {
		return sellerDAO.getSellerDTO(sellerName); 
	}

	@Override
	public List<SellerSell> sellerSell(String sellerName) {
		// TODO Auto-generated method stub
		return sellerDAO.sellerSell(sellerName); 
	}

	@Override 
	public String sellerSellDetail(Map<String, String> map) {
		return sellerDAO.sellerSellDetail(map);   
		
	}

	@Override
	public SellerDTO getFindId(Map<String, String> map) {
		// TODO Auto-generated method stub
		return sellerDAO.getFindId(map); 
	} 

	@Override
	public boolean getFindPwd(Map<String, String> map) {
		// TODO Auto-generated method stub
		SellerDTO sellerDTO = sellerDAO.getFindPwd(map);
		
		if(sellerDTO == null) {			 
			return false;  
		}			 
		else {  
			System.out.println("###");
			try {  
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper = new MimeMessageHelper(message,
						true, "UTF-8");
	  
				messageHelper.setFrom("bitFarmBOT@gmail.com", "비트팜봇"); // 보내는사람 생략하면 정상작동을 안함
				messageHelper.setTo(map.get("seller_email")); // 받는사람 이메일
				messageHelper.setSubject("비트팜 비밀번호"); // 메일제목은 생략이 가능하다
				messageHelper.setText("<a href='http://localhost:8080/bitFarm/seller/resetPwdForm?seller_id="+sellerDTO.getSeller_id()+"'>비밀번호 변경 링크입니다.</a>", true); // 메일 내용
	    
				mailSender.send(message);	 
			} catch (Exception e) {   
				System.out.println(e);           
			}
			return true; 
		}
	}

	@Override
	public int resetPwd(Map<String, String> map) { 
		return sellerDAO.resetPwd(map); 
	} 

} 
