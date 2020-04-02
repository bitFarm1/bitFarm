package sellerHome.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import order.bean.OrderSellerHomeDTO;
import sellerHome.bean.SellerOrderNumberListPaging;
import sellerHome.dao.SellerHomeDAO;

@Service(value="sellerHomeService")
public class SellerHomeServiceImpl implements SellerHomeService{
	@Autowired
	private SellerHomeDAO sellerHomeDAO;
	@Autowired
	private SellerOrderNumberListPaging sellerOrderNumberListPaging;
	
	@Override
	public SellerOrderNumberListPaging sellerOrderNumberListPaging(Map<String, Object> map) {
		int totalA = sellerHomeDAO.getOrderNumberListTotalA(map);//총글수
		String pg = (String) map.get("pg");
		sellerOrderNumberListPaging.setCurrentPage(Integer.parseInt(pg));
		sellerOrderNumberListPaging.setPageBlock(3); 
		sellerOrderNumberListPaging.setPageSize(5);
		sellerOrderNumberListPaging.setTotalA(totalA);
		sellerOrderNumberListPaging.makePagingHTML();
		return sellerOrderNumberListPaging;
	}

	@Override
	public List<OrderSellerHomeDTO> getSellItemList(Map<String, Object> map) {
		String pg = (String) map.get("pg");
		int endNum = Integer.parseInt(pg)*5;
		int startNum = endNum-4;
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		return sellerHomeDAO.getSellItemList(map);
	}

}
