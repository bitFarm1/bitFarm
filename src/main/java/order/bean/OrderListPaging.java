package order.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class OrderListPaging {
	private int currentPage;//현재페이지
	private int pageBlock;//
	private int pageSize;//1페이지당 3개씩
	private int totalA;//총글수
	private StringBuffer pagingHTML;
	
	public void makePagingHTML() {
		pagingHTML = new StringBuffer();
		
		int totalP = (totalA+pageSize-1)/pageSize;//총 페이지수
		int startPage = (currentPage-1)/pageBlock*pageBlock+1;
		int endPage = startPage+pageBlock-1;
		if(endPage > totalP) 
			endPage = totalP;
		
		if(startPage > pageBlock)
			pagingHTML.append(" <span id='paging' onclick='orderListPaging("+(startPage-1)+")'>◀</span> ");

		for(int i=startPage; i<=endPage; i++) {
			if(i == currentPage)
				pagingHTML.append(" <span id='currentPaging' onclick='orderListPaging("+i+")'>"+i+"</span> ");
			else 
				pagingHTML.append(" <span id='paging' onclick='orderListPaging("+i+")'>"+i+"</span> ");
		}
		
		if(endPage < totalP)
			pagingHTML.append(" <span id='paging' onclick='orderListPaging("+(endPage+1)+")'>▶</span> ");
			
	}
}
























