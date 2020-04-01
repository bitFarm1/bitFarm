package order.bean;

import java.util.Date;

import lombok.Data;

@Data
public class OrderSellerHomeDTO {
	private String order_id;
	private String order_seller_name;
	private String order_seller_id;
	private String order_item_id;
	private String order_seller_item;
	private String order_item_main_image;
	private String order_item_price;
	private String order_item_qty;
	private String order_state;
	private String order_total_price;
	private String order_pay;
	private String order_user_id;
	private Date order_date;
}
