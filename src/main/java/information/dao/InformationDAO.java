package information.dao;

import java.util.List;
import java.util.Map;

import information.bean.InformationDTO;
import information.bean.InformationQnADTO;

public interface InformationDAO {

	public void infoQnABoardWrite(InformationQnADTO informationQnADTO);

	public List<InformationQnADTO> getInfoList(Map<String, Integer> map);

	public void infoWrite(InformationDTO informationDTO);

	public List<InformationDTO> infoBoardList(Map<String, Integer> map);

	public InformationDTO infoView(String seq);

	public int informationTotalA();  

}
    