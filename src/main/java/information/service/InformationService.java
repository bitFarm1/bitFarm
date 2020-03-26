package information.service;

import java.util.List;
import java.util.Map;

import information.bean.InformationDTO;
import information.bean.InformationPaging;
import information.bean.InformationQnADTO;

public interface InformationService {

	public void infoQnABoardWrite(InformationQnADTO informationQnADTO);

	public List<InformationQnADTO> getInfoList(String pg);

	public void infoWrite(InformationDTO informationDTO);

	public List<InformationDTO> infoBoardList(String pg);

	public InformationDTO infoView(String seq);
 
	public InformationPaging informationPaging(String pg);

	public List<InformationDTO> getInfoSearch(Map<String, String> map);
 
	public InformationPaging informationPaging(Map<String, String> map);   
 
}  
    