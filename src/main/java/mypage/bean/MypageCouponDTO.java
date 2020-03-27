package mypage.bean;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class MypageCouponDTO {
	private String coupon_user_id; //회원아이디
	private String coupon_name; //쿠폰이름
	private String coupon_content; //쿠폰설명
	private String coupon_SA; //쿠폰할인/적립
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy.MM.dd")
	private Date coupon_Ap; //쿠폰사용가능기간
	private String coupon_use; //쿠폰사용여부
	private String coupon_id; //쿠폰아이디
	private String coupon_price;//쿠폰 금액

}
