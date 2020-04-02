package mypage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import information.bean.InformationQnADTO;
import mypage.bean.MypageCouponDTO;
import mypage.bean.MypagePickItemDTO;
import mypage.bean.MypagePickSellerDTO;
import mypage.bean.MypagePointDTO;
import order.bean.OrderDTO;

import mypage.bean.MypageReviewListDTO;

import order.bean.OrderImageDTO;
import order.bean.OrderListDTO;


@Repository
@Transactional
public class MypageDAOMyBatis implements MypageDAO {

	@Autowired
	private SqlSession sqlSession;
	
	//쿠폰
	@Override
	public List<MypageCouponDTO> getCouponList(String id) {
		
		return sqlSession.selectList("mypageSQL.getCouponList",id);
	
	}

	@Override
	public int getCouponTotal(String id) {

		return sqlSession.selectOne("mypageSQL.getCouponTotal",id);
	}
	
	@Override
	public List<MypagePointDTO> getPointList(String id) {
		
		return sqlSession.selectList("mypageSQL.getPointList",id);
	}
	
	//적립금
	@Override
	public int getPointTotal(String id) {
		
		return sqlSession.selectOne("mypageSQL.getPointTotal",id);
	}
	
	@Override
	public void writeCoupon(String member_id) {
	    sqlSession.insert("mypageSQL.writeCoupon", member_id); 
	      
	}

	@Override
	public void writePoint(String member_id) { 
	    sqlSession.insert("mypageSQL.writePoint", member_id);
	      
	}

	//리뷰
	@Override
	public List<MypageReviewListDTO> getMyReviewList(String id) {
		return sqlSession.selectList("mypageSQL.getMyReviewList", id);	
	}

	//찜한 물건
	@Override
	public List<MypagePickItemDTO> getMypagePickItem(String id) {
		return sqlSession.selectList("mypageSQL.getMypagePickItem",id);
	}
	
	@Override
	public void goPickItem(Map<String, Object> map) {
	
		sqlSession.insert("mypageSQL.goPickItem",map);	
	}
	
	@Override
	public String existItem(Map<String, String> existMap) {
		String exist = "false";
		
		int count = sqlSession.selectOne("mypageSQL.existItem",existMap);
		
		if(count!=0) exist = "true";
		
		return exist;
	}
	
	@Override
	public void deleteChoicePickItem(Map<String, String> map) {
		sqlSession.delete("mypageSQL.deleteChoicePickItem", map);
	}
	
	@Override
	public void deletePickItem(Map<String, String> map) {
		sqlSession.delete("mypageSQL.deletePickItem", map);
		
	}

	//찜한 판매자
	@Override
	public List<MypagePickSellerDTO> getMypagePickSeller(String id) {
		
		return sqlSession.selectList("mypageSQL.getMypagePickSeller",id);
	}

	@Override
	public void mypagePickSellerAdd(Map<String, String> map) {
		sqlSession.insert("mypageSQL.mypagePickSellerAdd", map);
	}

	@Override
	public List<MypagePickSellerDTO> getMypagePickSellerList(String memberId) {
		return sqlSession.selectList("mypageSQL.getMypagePickSellerList", memberId);
	}

	@Override
	public void deletePickSeller(Map<String, String> map) {
		sqlSession.delete("mypageSQL.deletePickSeller", map);
	}

	@Override
	public void deleteChoicePickSeller(Map<String, String> map) {
		sqlSession.delete("mypageSQL.deleteChoicePickSeller", map);
	}

	@Override
	public void deletePoint(Map<String, String> map) {
		sqlSession.delete("mypageSQL.deletePoint", map);
		
	}

	@Override
	public void deleteCoupon(Map<String, String> map) {
		sqlSession.delete("mypageSQL.deleteCoupon", map); 
	}

	public List<OrderListDTO> getMypageOrderList(Map<String, Object> map) {
		return  sqlSession.selectList("mypageSQL.getMypageOrderList",map);
	}

	@Override
	public OrderDTO getMypageOrder(Map<String, String> map) {
		return sqlSession.selectOne("mypageSQL.getMypageOrder", map);
	}

	@Override
	public List<OrderImageDTO> getMypageOrderImage(Map<String, String> map) {
		return sqlSession.selectList("mypageSQL.getMypageOrderImage", map);
	}

	@Override
	public List<InformationQnADTO> getMyQnaList(String id) {
		return sqlSession.selectList("mypageSQL.getMyQnaList", id);
	}

	@Override
	public int getOrderListTotalA(Map<String, Object> map) {
		return sqlSession.selectOne("mypageSQL.getOrderListTotalA",map);

	}

	@Override
	public int isExistPickSeller(Map<String, String> map) {
		return sqlSession.selectOne("mypageSQL.isExistPickSeller", map);

	}

	

	

	


	

}
