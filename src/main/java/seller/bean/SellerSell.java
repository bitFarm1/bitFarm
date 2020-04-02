package seller.bean;

import lombok.Data;

@Data
public class SellerSell {
	private int item_id; 
	private int qty; 
	private String item;
	private String seller_name;
	private int item_price; 
	private String item_main_image; 
}
 