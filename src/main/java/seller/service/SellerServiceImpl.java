package seller.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import member.bean.MemberDTO;
import member.dao.MemberDAO;
import seller.bean.SellerDTO;
import seller.dao.SellerDAO;

@Service(value="sellerService")   
public class SellerServiceImpl implements SellerService {
	 
	@Autowired
	private SellerDAO sellerDAO; 
	
	@Override 
	public int write(SellerDTO sellerDTO) {
		return sellerDAO.write(sellerDTO);		  
	}

	@Override
	public int checkID(String id) {
		// TODO Auto-generated method stub
		return sellerDAO.checkID(id);
	} 

} 
