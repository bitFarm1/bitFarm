package information.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import information.bean.InformationQnADTO;
import information.dao.InformationDAO;
 

@Service
public class InformationServiceImpl implements InformationService {
	
	@Autowired 
	private InformationDAO informationDAO;

	@Override
	public void infoQnABoardWrite(InformationQnADTO informationQnADTO) {
		informationDAO.infoQnABoardWrite(informationQnADTO); 
		 
	}

	@Override
	public List<InformationQnADTO> getInfoList(String pg) { 
		// TODO Auto-generated method stub
		int endNum = Integer.parseInt(pg)*5;
		int startNum = endNum-4;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		return informationDAO.getInfoList(map);  
	} 
	
	
	
	

	
}
