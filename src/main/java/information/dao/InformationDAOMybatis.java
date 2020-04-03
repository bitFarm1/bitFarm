package information.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import information.bean.InformationDTO;
import information.bean.InformationPaging;
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
	public List<InformationQnADTO> getInfoList(Map<String, String> map) { 
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

	@Override
	public List<InformationDTO> getInfoSearch(Map<String, String> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("informationSQL.getInfoSearch", map);
	}

	@Override
	public int getInfoSearchTotalA(Map<String, String> map) {  
		// TODO Auto-generated method stub
		return sqlSession.selectOne("informationSQL.getInfoSearchTotalA", map);
	}

	@Override
	public List<InformationQnADTO> getInfoListADMIN(Map<String, Integer> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("informationSQL.getInfoListADMIN", map);
	}

	@Override
	public InformationQnADTO writeQnAAnswer(String seq) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("informationSQL.writeQnAAnswer", seq);
	}

	@Override
	public int answerWrite(Map<String, String> map) {
		// TODO Auto-generated method stub
		return sqlSession.update("informationSQL.answerWrite", map); 
	}

	@Override
	public List<InformationQnADTO> infoQnAListAllADMIN(Map<String, String> map) { 
		// TODO Auto-generated method stub
		return sqlSession.selectList("informationSQL.infoQnAListAllADMIN", map);
	}

	@Override
	public List<String> orderForm(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("informationSQL.orderForm", id); 
	}
 

	@Override
	public int infoQnAListAllADMINPagingTotalA() { 
		// TODO Auto-generated method stub
		return sqlSession.selectOne("informationSQL.infoQnAListAllADMINPagingTotalA");  
	}

	@Override
	public List<InformationQnADTO> infoALLADMIN() {   
		// TODO Auto-generated method stub 
		return sqlSession.selectList("informationSQL.infoALLADMIN");  
	}

	@Override
	public void deleteInfo(String seq) {
		sqlSession.delete("informationSQL.deleteInfo", seq); 
		
	}

	@Override
	public void upHit(String seq) {
		sqlSession.update("informationSQL.upHit", seq); 
		
	}

	@Override 
	public int qnaPaging(Map<String, String> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("informationSQL.qnaPaging", map);
	} 
 
}  
 