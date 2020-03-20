package seller.service;

import java.util.Map;

import member.bean.MemberDTO;
import seller.bean.SellerDTO;

public interface SellerService {

	public int write(SellerDTO sellerDTO);

	public int checkID(String id);

	public SellerDTO login(Map<String, String> map); 

 
}
 
