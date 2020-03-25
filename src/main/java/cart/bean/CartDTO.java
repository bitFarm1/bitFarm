package cart.bean;

import lombok.Data;

@Data
public class CartDTO {
    // 장바구니 번호(유저아이디랑 같게) 
    private String cart_id;

    // 유저 아이디(세션에있음) 
    private String user_id;

    // 상품 아이디(통해서 메인사진,이름) 
    private Integer item_id;

    // 상품수량 
    private Integer item_qty;

    // 상품 총 가격 
    private Integer item_all_price;
}
