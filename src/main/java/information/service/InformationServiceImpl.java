package information.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
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
		int endNum = Integer.parseInt(pg)*8;
		int startNum = endNum-7;
		
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
		informationPaging.setPageSize(8);  
		informationPaging.setTotalA(totalA);  
		informationPaging.makePagingHTML(); 
		
		return informationPaging;
	}
	 
	public InformationPaging infoQnAListAllADMINPaging(String pg) { 
		int totalA = informationDAO.infoQnAListAllADMINPagingTotalA(); 
		
		informationPaging.setCurrentPage(Integer.parseInt(pg)); 
		informationPaging.setPageBlock(5);
		informationPaging.setPageSize(6);  
		informationPaging.setTotalA(totalA); 
		informationPaging.makePagingHTML();   
		
		return informationPaging;
	}

	@Override 
	public List<InformationDTO> getInfoSearch(Map<String, String> map) {
		int endNum = Integer.parseInt(map.get("pg"))*8;
		int startNum = endNum-7; 
		 
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
		informationPaging.setPageSize(8);   
		informationPaging.setTotalA(totalA);
		informationPaging.makeSearchPagingHTML();   
		return informationPaging; 
	}

	@Override 
	public List<InformationQnADTO> getInfoListADMIN(String pg) {

		// TODO Auto-generated method stub 
		int endNum = Integer.parseInt(pg)*8;
		int startNum = endNum-7;   
		
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
		
		int endNum = Integer.parseInt(map.get("pg"))*6;
		int startNum = endNum-5;   		
		 
		map.put("startNum", startNum+""); 
		map.put("endNum", endNum+"");
		
		return informationDAO.infoQnAListAllADMIN(map);   
	}

	@Override
	public List<String> orderForm(String id) { 
		return informationDAO.orderForm(id);  
		 
	}

	@Override  
	public List<InformationQnADTO> infoALLADMIN() {
		// TODO Auto-generated method stub
		return informationDAO.infoALLADMIN();
	}

	@Override
	public void deleteInfo(String seq) {
		informationDAO.deleteInfo(seq);
		
	}

	@Override
	public void upHit(String seq) {
		// TODO Auto-generated method stub
		informationDAO.upHit(seq);  
	}  

	@Override
	public InformationPaging qnaPaging(Map<String, String> map) {
		
		int totalA = informationDAO.qnaPaging(map);//총글수
		
		informationPaging.setCurrentPage(Integer.parseInt(map.get("pg"))); 
		informationPaging.setPageBlock(3);
		informationPaging.setPageSize(8);    
		informationPaging.setTotalA(totalA);
		informationPaging.makePagingHTML();  
		return informationPaging; 
	}
	
}
