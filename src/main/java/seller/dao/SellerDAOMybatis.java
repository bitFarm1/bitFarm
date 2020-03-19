package seller.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import seller.bean.SellerDTO;
 
@Repository("sellerDAO") 
@Transactional
public class SellerDAOMybatis implements SellerDAO { 
	@Autowired 
	private SqlSession sqlSession; 

	@Override
	public int write(SellerDTO sellerDTO) { 
		return sqlSession.insert("sellerSQL.write", sellerDTO); 
	}  
 
	
 
}
