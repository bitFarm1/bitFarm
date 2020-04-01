package order.bean;

import lombok.Data;

@Data
public class OrderImageDTO {
	// 주문번호 
    private String order_id;

    // 판매자 이름 
    private String order_seller_name;

    // 판매 물품 
    private String order_seller_item;

    // 판매 물품 이미지 
    private String order_item_main_image;

    // 판매가격 
    private int order_item_price;

    // 판매개수 
    private int order_item_qty;

    // 주문상태 
    private String order_state;
    
    // 판매아이템 아이디
    private int order_item_id;

}
