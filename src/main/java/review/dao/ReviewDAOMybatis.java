package review.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import item.bean.ItemDTO;
import review.bean.ReviewDTO;

@Repository("reviewDAO")
@Transactional
public class ReviewDAOMybatis implements ReviewDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<ReviewDTO> getItemReviewList(int seq) {
		return sqlSession.selectList("reviewSQL.getItemReviewList", seq);
	}

	@Override
	public ItemDTO getItemDTO(String item_id) {
		return sqlSession.selectOne("reviewSQL.getItemDTO", item_id);
	}

	@Override
	public void reviewWrite(ReviewDTO reviewDTO) {
		sqlSession.insert("reviewSQL.reviewWrite", reviewDTO);
	}

}
