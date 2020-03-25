package member.bean;

import lombok.Data;

@Data
public class MemberDTO {
	private String member_id;
	private String member_name; 
	private String member_pwd;
	private String member_email;
	private String member_phone;
	private String member_address1;
	private String member_address2;
	private String member_birth;
	private String member_coupon;
	private String member_point;
	private String member_eventAgree;
	private String member_loginType;	
	
}
