package information.dao;

import java.util.List;
import java.util.Map;

import information.bean.InformationDTO;
import information.bean.InformationPaging;
import information.bean.InformationQnADTO;

public interface InformationDAO {

	public void infoQnABoardWrite(InformationQnADTO informationQnADTO);

	public List<InformationQnADTO> getInfoList(Map<String, String> map);

	public void infoWrite(InformationDTO informationDTO);

	public List<InformationDTO> infoBoardList(Map<String, Integer> map); 

	public InformationDTO infoView(String seq);

	public int informationTotalA();

	public List<InformationDTO> getInfoSearch(Map<String, String> map);

	public int getInfoSearchTotalA(Map<String, String> map);

	public List<InformationQnADTO> getInfoListADMIN(Map<String, Integer> map);

	public InformationQnADTO writeQnAAnswer(String seq);

	public int answerWrite(Map<String, String> map);

	public List<InformationQnADTO> infoQnAListAllADMIN(Map<String, String> map);
 
	public List<String> orderForm(String id);

	public int infoQnAListAllADMINPagingTotalA();
   
	public List<InformationQnADTO> infoALLADMIN();

	public void deleteInfo(String seq);
 
	public void upHit(String seq);

	public int qnaPaging(Map<String, String> map);
 
 
}  
      