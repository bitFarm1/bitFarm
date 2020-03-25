package mypage.bean;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class MypageReviewDTO {
	
	private int review_id;
	private String review_subject;
	private String review_content;
	private String review_image;
	private String review_user_id;
	private Date review_date;
	private int review_item_id;

}
