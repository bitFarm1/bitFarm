		package cart.bean;

import lombok.Data;

@Data
public class CartListDTO {
    private String cart_id;			// 장바구니 번호(유저아이디랑 같게) 
    private String member_id;	 	// 유저 아이디(세션에있음) 
    private Integer item_id;		// 상품 아이디 
    private String item_main_image;	// 상품 메인사진 
    private String item_name;		// 상품 이름 
    private Integer item_qty;		// 상품수량 
    private Integer item_all_price;	// 상품 총 가격 
}
	 