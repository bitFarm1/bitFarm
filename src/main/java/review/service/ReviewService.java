package review.service;

import java.util.List;

import review.bean.ReviewDTO;

public interface ReviewService {

	public List<ReviewDTO> getItemReviewList(int seq);

	public String getItemName(String item_id);

}
