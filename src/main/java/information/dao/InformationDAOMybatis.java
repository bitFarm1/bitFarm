package information.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import information.bean.InformationDTO;
import information.bean.InformationQnADTO;

@Repository("informationDAO")
@Transactional
public class InformationDAOMybatis implements InformationDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void infoQnABoardWrite(InformationQnADTO informationQnADTO) {
		sqlSession.insert("informationSQL.infoQnABoardWrite", informationQnADTO);
		
	}

	@Override
	public List<InformationQnADTO> getInfoList(Map<String, Integer> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("informationSQL.getInfoList", map);
	}

	@Override
	public void infoWrite(InformationDTO informationDTO) {
		sqlSession.insert("informationSQL.infoWrite", informationDTO); 		 
	}

	@Override
	public List<InformationDTO> infoBoardList(Map<String, Integer> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("informationSQL.infoBoardList", map); 
	}

	@Override
	public InformationDTO infoView(String seq) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("informationSQL.infoView", seq);
	}

	@Override
	public int informationTotalA() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("informationSQL.informationTotalA");
	}
 
}  
