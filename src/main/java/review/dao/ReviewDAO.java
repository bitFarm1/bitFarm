package review.dao;

import java.util.List;

import review.bean.ReviewDTO;

public interface ReviewDAO {

	public List<ReviewDTO> getItemReviewList(int seq);

	public String getItemName(String item_id);

}
