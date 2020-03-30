package information.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class InformationPaging {
	private int currentPage;	//현재 페이지
	private int pageBlock;		//[이전][1][2][3][다음]
	private int pageSize;		//1페이지당 5개씩
	private int totalA;			//총글수 
	private StringBuffer pagingHTML; 

	public void makePagingHTML() {
		pagingHTML = new StringBuffer(); 
		
		//총 페이지 수
		int totalP = (totalA+pageSize-1)/pageSize;
		
		int startPage = (currentPage - 1) / pageBlock * pageBlock + 1;
		int endPage = startPage + pageBlock -1;
		
		if(endPage > totalP)
			endPage = totalP; 
		
		if(startPage > pageBlock) 
			//pagingHTML.append("[<a id='paging' href='imageboardList.do?pg="+(startPage-1)+"'>이전</a>]");
			pagingHTML.append("<span id='paging' onclick='informationPaging("+(startPage-1)+")'> 이전 </span>");
		 
		for(int i=startPage; i<=endPage; i++) {
			if(i == currentPage)
				//pagingHTML.append("[<a id='currentpaging' href='imageboardList.do?pg="+i+"'>"+i+"</a>]");
				pagingHTML.append("<span id='currentpaging' onclick='informationPaging("+i+")'> "+i+" </span>");
			else
				//pagingHTML.append("[<a id='paging' href='imageboardList.do?pg="+i+"'>"+i+"</a>]");
				pagingHTML.append("<span id='paging' onclick='informationPaging("+i+")'> "+i+" </span>");
		}
		 
		if(endPage < totalP)
			//pagingHTML.append("[<a id='paging' href='imageboardList.do?pg="+(endPage+1)+"'>다음</a>]");
			pagingHTML.append("<span id='paging' onclick='informationPaging("+(endPage+1)+")'> 다음 </span>");
	}	
	
	public void makeSearchPagingHTML() {
		pagingHTML = new StringBuffer(); 
		
		//총 페이지 수
		int totalP = (totalA+pageSize-1)/pageSize;
		
		int startPage = (currentPage - 1) / pageBlock * pageBlock + 1;
		int endPage = startPage + pageBlock -1;
		
		if(endPage > totalP)
			endPage = totalP;
		
		if(startPage > pageBlock) 
			//pagingHTML.append("[<a id='paging' href='imageboardList.do?pg="+(startPage-1)+"'>이전</a>]");
			pagingHTML.append("[<span id='paging' onclick='infoSearch("+(startPage-1)+")'> 이전 </span>");
		
		for(int i=startPage; i<=endPage; i++) { 
			if(i == currentPage)
				//pagingHTML.append("[<a id='currentpaging' href='imageboardList.do?pg="+i+"'>"+i+"</a>]");
				pagingHTML.append("<span id='currentpaging' onclick='infoSearch("+i+")'> "+i+" </span>");
			else
				//pagingHTML.append("[<a id='paging' href='imageboardList.do?pg="+i+"'>"+i+"</a>]");
				pagingHTML.append("<span id='paging' onclick='infoSearch("+i+")'> "+i+" </span>");
		}
		   
		if(endPage < totalP) 
			//pagingHTML.append("[<a id='paging' href='imageboardList.do?pg="+(endPage+1)+"'>다음</a>]");
			pagingHTML.append("<span id='paging' onclick='infoSearch("+(endPage+1)+")'> 다음 </span>");
		
	}
}  
