package seller.dao;


import java.util.Map;

import seller.bean.SellerDTO;

public interface SellerDAO {

	public int write(SellerDTO sellerDTO);

	public int checkID(String id);

	public SellerDTO login(Map<String, String> map);

	public String getSellerPwd(String id);

	public SellerDTO getSellerDTO(String sellerName);   


	
} 
 
