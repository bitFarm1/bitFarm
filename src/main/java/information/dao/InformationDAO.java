package information.dao;

import java.util.List;
import java.util.Map;

import information.bean.InformationQnADTO;

public interface InformationDAO {

	public void infoQnABoardWrite(InformationQnADTO informationQnADTO);

	public List<InformationQnADTO> getInfoList(Map<String, Integer> map);

}
  