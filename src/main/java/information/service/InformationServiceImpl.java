package information.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import information.bean.InformationDTO;
import information.bean.InformationPaging;
import information.bean.InformationQnADTO;
import information.dao.InformationDAO;
 

@Service
public class InformationServiceImpl implements InformationService {	
	@Autowired 
	private InformationDAO informationDAO;
	@Autowired
	private InformationPaging informationPaging;

	@Override
	public void infoQnABoardWrite(InformationQnADTO informationQnADTO) {
		informationDAO.infoQnABoardWrite(informationQnADTO); 
		 
	}

	@Override
	public List<InformationQnADTO> getInfoList(Map<String, String> map) { 
		// TODO Auto-generated method stub 
		int endNum = Integer.parseInt(map.get("pg"))*10;
		int startNum = endNum-9;   
		
		
		map.put("startNum", startNum+"");
		map.put("endNum", endNum+"");
		
		return informationDAO.getInfoList(map);   
	}

	@Override
	public void infoWrite(InformationDTO informationDTO) {
		informationDAO.infoWrite(informationDTO);
		
	}

	@Override
	public List<InformationDTO> infoBoardList(String pg) {
		int endNum = Integer.parseInt(pg)*5;
		int startNum = endNum-4;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		return informationDAO.infoBoardList(map);
	} 

	@Override
	public InformationDTO infoView(String seq) {
		// TODO Auto-generated method stub
		return informationDAO.infoView(seq);
	}

	@Override
	public InformationPaging informationPaging(String pg) {
		int totalA = informationDAO.informationTotalA();
		
		informationPaging.setCurrentPage(Integer.parseInt(pg)); 
		informationPaging.setPageBlock(3);
		informationPaging.setPageSize(5);
		informationPaging.setTotalA(totalA); 
		informationPaging.makePagingHTML(); 
		
		return informationPaging;
	}

	@Override 
	public List<InformationDTO> getInfoSearch(Map<String, String> map) {
		int endNum = Integer.parseInt(map.get("pg"))*5;
		int startNum = endNum-4; 
		
		map.put("startNum", startNum+""); 
		map.put("endNum", endNum+"");  
		
		List<InformationDTO> list = informationDAO.getInfoSearch(map);
		return list;
	}

	@Override
	public InformationPaging informationPaging(Map<String, String> map) {
		
		int totalA = informationDAO.getInfoSearchTotalA(map);//총글수
		
		informationPaging.setCurrentPage(Integer.parseInt(map.get("pg"))); 
		informationPaging.setPageBlock(3);
		informationPaging.setPageSize(5); 
		informationPaging.setTotalA(totalA);
		informationPaging.makeSearchPagingHTML();   
		return informationPaging; 
	}

	@Override 
	public List<InformationQnADTO> getInfoListADMIN(String pg) {

		// TODO Auto-generated method stub 
		int endNum = Integer.parseInt(pg)*10;
		int startNum = endNum-9;   
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("startNum", startNum); 
		map.put("endNum", endNum);
		
		return informationDAO.getInfoListADMIN(map);   
	}

	@Override 
	public InformationQnADTO writeQnAAnswer(String seq) {
		// TODO Auto-generated method stub
		return informationDAO.writeQnAAnswer(seq);
	}

	@Override
	public int answerWrite(Map<String, String> map) {
		
		return informationDAO.answerWrite(map); 
	}

	@Override
	public List<InformationQnADTO> infoQnAListAllADMIN(Map<String, String> map) {
		
		int endNum = Integer.parseInt(map.get("pg"))*10;
		int startNum = endNum-9;   
		
		
		map.put("startNum", startNum+"");
		map.put("endNum", endNum+"");
		
		return informationDAO.infoQnAListAllADMIN(map);   
	}

	@Override
	public List<String> orderForm(String id) { 
		return informationDAO.orderForm(id);  
		 
	}
 
	
}
