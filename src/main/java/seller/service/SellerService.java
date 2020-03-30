package seller.service;

import java.util.Map;

import seller.bean.SellerDTO;

public interface SellerService {

	public int write(SellerDTO sellerDTO);

	public int checkID(String id);

	public SellerDTO login(Map<String, String> map);

	public int mailSending(String email);

	public String getSellerPwd(String id);

	public SellerDTO getSellerDTO(String sellerName);  
 
 
}
 
