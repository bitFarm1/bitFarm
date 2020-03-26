package review.bean;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewDTO {
    private int review_id;			// 글 번호 
    private String review_subject;	// 글 제목 
    private String review_content;	// 글 내용 
    private String review_image;		// 첨부사진 
    private String review_user_id;	// 작성자 아이디 
    private Date review_date;		// 작성일 
    private int item_id;				// 상품아이디 
}
