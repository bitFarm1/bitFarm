package item.bean;

import lombok.Data;

@Data
public class ItemMainListDTO {
	private String order_item_id;
	private String order_item_qty;
	private String item_name;
	private String seller_name;
	private String item_price;
	private String item_main_image;
}
