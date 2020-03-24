package item.bean;

import java.util.Date;

import lombok.Data;

@Data
public class ItemDTO {
	private int item_id;
	private String item_name;
	private String seller_id;
	private int item_price;
	private String item_main_image;
	private String item_detail_image;
	private String item_packing_type;
	private String item_delivery_type;
	private String item_explain;
	private Date item_add_date;
	private int item_category_step;
	private String item_category_name;
	private int item_amount;
	private int item_order_able;
}
