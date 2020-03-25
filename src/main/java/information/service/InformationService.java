package information.service;

import java.util.List;

import information.bean.InformationQnADTO;

public interface InformationService {

	public void infoQnABoardWrite(InformationQnADTO informationQnADTO);

	public List<InformationQnADTO> getInfoList(String pg); 

}  
  