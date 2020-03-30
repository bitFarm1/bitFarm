package order.bean;

import java.util.Date;

import lombok.Data;

@Data
public class OrderDTO {
	// 주문번호 
    private String orderId;

    // 판매자 이름 
    private String orderSellerName;

    // 판매 물품 
    private String orderSellerItem;

    // 판매 물품 이미지 
    private String orderItemMainImage;

    // 판매가격 
    private Integer orderItemPrice;

    // 판매개수 
    private Integer orderItemQty;

    // 주문상태 
    private String orderState;

    // 총주문금액(할인전금액) 
    private Integer orderBeforePrice;

    // 쿠폰할인 
    private Integer orderCoupon;

    // 적립금할인 
    private Integer orderPoint;

    // 최종결제금액 
    private Integer orderTotalPrice;

    // 결제수단 
    private String orderPay;

    // 보내는 사람 이름 
    private String orderUserId;

    // 보낸는 사람 핸드폰번호 
    private String orderUserPhone;

    // 보내는 사람 이메일 
    private String orderUserEmail;

    // 주문일-결제일시 
    private Date orderDate;

    // 받는 사람 이름 
    private String orderName;

    // 받는 사람 핸드폰 번호 
    private String orderPhone;

    // 수령인 주소 1 
    private String orderAddr1;

    // 수령인 주소 2 
    private String orderAddr2;

    // 주문자 배송요청사항 
    private String orderPs;


}
