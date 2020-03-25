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
	public List<InformationQnADTO> getInfoList(String pg) { 
		// TODO Auto-generated method stub 
		int endNum = Integer.parseInt(pg)*10;
		int startNum = endNum-9;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		return informationDAO.getInfoList(map);   
	}

	@Override
	public void infoWrite(InformationDTO informationDTO) {
		informationDAO.infoWrite(informationDTO);
		
	}

	@Override
	public List<InformationDTO> infoBoardList(String pg) {
		int endNum = Integer.parseInt(pg)*10;
		int startNum = endNum-9;
		
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
		informationPaging.setPageSize(9);
		informationPaging.setTotalA(totalA); 
		informationPaging.makePagingHTML(); 
		
		return informationPaging;
	} 
	 
	
	
	

	
}
