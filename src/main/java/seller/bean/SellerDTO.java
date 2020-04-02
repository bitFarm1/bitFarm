package seller.bean;

import lombok.Data;

@Data 
public class SellerDTO {
	private String seller_id; 
	private String seller_name;
	private String seller_pwd;
	private String seller_email;
	private String seller_phone;
	private String seller_license; 
	private String seller_address1;
	private String seller_address2;
	private String seller_profileImage;	
}  
