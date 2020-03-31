package mypage.bean;

import lombok.Data;

@Data
public class MypageReviewListDTO {
	private String review_id; 
	private String review_subject;
	private String review_content;
	private String review_image;
	private String review_user_id;
	private String review_date;
	private String item_id;
	private String item_name;
} 
 