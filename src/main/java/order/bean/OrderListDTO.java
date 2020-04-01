package order.bean;

import java.util.Date;

import lombok.Data;

@Data
public class OrderListDTO {
	// 주문번호 
    private String order_id;

    // 판매 물품 이미지 
    private String order_item_main_image;
    
    // 판매 물품 아이디 
    private int order_item_id;
    
    // 주문자 아이디
    private String order_user_id;

    // 주문상태 
    private String order_state;

    // 최종결제금액 
    private int order_total_price;

    // 주문일-결제일시 
    private Date order_date;


}
