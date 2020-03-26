package review.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import item.bean.ItemDTO;
import review.bean.ReviewDTO;
import review.dao.ReviewDAO;

@Service(value="reviewService")
public class ReviewServiceImpl implements ReviewService {
	@Autowired
	private ReviewDAO reviewDAO;

	@Override
	public List<ReviewDTO> getItemReviewList(int seq) {
		return reviewDAO.getItemReviewList(seq);
	}

	@Override
	public ItemDTO getItemDTO(String item_id) {
		return reviewDAO.getItemDTO(item_id);
	}

	@Override
	public void reviewWrite(ReviewDTO reviewDTO) {
		reviewDAO.reviewWrite(reviewDTO);
	}

}
