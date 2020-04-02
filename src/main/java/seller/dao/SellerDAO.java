package seller.dao;


import java.util.List;
import java.util.Map;

import member.bean.MemberDTO;
import seller.bean.SellerDTO;
import seller.bean.SellerSell;

public interface SellerDAO {

	public int write(SellerDTO sellerDTO);

	public int checkID(String id);

	public SellerDTO login(Map<String, String> map);

	public String getSellerPwd(String id);

	public SellerDTO getSellerDTO(String sellerName);

	public List<SellerSell> sellerSell(String sellerName);
 
	public String sellerSellDetail(Map<String, String> map);
 
	public SellerDTO getFindId(Map<String, String> map); 
 
	public SellerDTO getFindPwd(Map<String, String> map);

	public int resetPwd(Map<String, String> map);       
  

	
} 
 
