package order.bean;

import java.util.Date;

import lombok.Data;

@Data
public class OrderDTO {
	// 주문번호 
    private String order_id;
/*
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
*/  
    // 주문상태 
    private String order_state;

    // 총주문금액(할인전금액) 
    private int order_before_price;

    // 쿠폰아이디
  //  private int order_coupon_id;
    
    // 쿠폰할인 
    private int order_coupon;

    // 적립금할인 
    private int order_point;

    // 최종결제금액 
    private int order_total_price;

    // 결제수단 
    private String order_pay;

    // 보내는 사람 아이디 
    private String order_user_id;
    
    // 보내는 사람 이름 
    private String order_user_name;

    // 보낸는 사람 핸드폰번호 
//    private String order_user_phone;

    // 보내는 사람 이메일 
 //   private String order_user_email;

    // 주문일-결제일시 
    private Date order_date;

    // 받는 사람 이름 
    private String order_name;

    // 받는 사람 핸드폰 번호 
    private String order_phone;

    // 수령인 주소 1 
    private String order_addr1;

    // 수령인 주소 2 
    private String order_addr2;

    // 주문자 배송요청사항 
    private String order_ps;


}
