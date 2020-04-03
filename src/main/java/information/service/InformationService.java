package information.service;

import java.util.List;
import java.util.Map;

import org.springframework.http.HttpRequest;

import information.bean.InformationDTO;
import information.bean.InformationPaging;
import information.bean.InformationQnADTO;

public interface InformationService {

	public void infoQnABoardWrite(InformationQnADTO informationQnADTO);

	public List<InformationQnADTO> getInfoList(Map<String, String> map);

	public void infoWrite(InformationDTO informationDTO);

	public List<InformationDTO> infoBoardList(String pg); 

	public InformationDTO infoView(String seq);
 
	public InformationPaging informationPaging(String pg);

	public List<InformationDTO> getInfoSearch(Map<String, String> map);
 
	public InformationPaging informationPaging(Map<String, String> map);

	public List<InformationQnADTO> getInfoListADMIN(String pg);
 
	public InformationQnADTO writeQnAAnswer(String seq);

	public int answerWrite(Map<String, String> map);

	public List<InformationQnADTO> infoQnAListAllADMIN(Map<String, String> map);

	public List<String> orderForm(String id);

	public InformationPaging infoQnAListAllADMINPaging(String pg);
  
	public List<InformationQnADTO> infoALLADMIN();

	public void deleteInfo(String seq);
 
	public void upHit(String seq);

	public InformationPaging qnaPaging(Map<String, String> map); 

	
 
}   
    