package information.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import information.bean.InformationDTO;
import information.bean.InformationPaging;
import information.bean.InformationQnADTO;
import information.service.InformationService;
import member.service.MemberService;

@Controller
@RequestMapping(value="information")
public class InformationController {
	@Autowired 
	private InformationService informationService;
	@Autowired
	private MemberService memberService;
		 
	@RequestMapping(value="/infoQnABoard", method=RequestMethod.GET)
	public ModelAndView infoQnABoard() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/information/infoMain.jsp");
		mav.addObject("info", "/information/infoQnABoard.jsp");
		mav.setViewName("/main/main");
		 
		return mav; 
	} 
	
	@RequestMapping(value="/dataList", method=RequestMethod.GET)
	public ModelAndView dataList() {
		ModelAndView mav = new ModelAndView();
		int naver = memberService.getNaverAccount();
		int bit = memberService.getBitAccount();
		int kakao = memberService.getKakaoAccount();
		int lastMonth3 = memberService.getLastMonth3();
		int lastMonth2 = memberService.getLastMonth2(); 
		int lastMonth1 = memberService.getLastMonth1(); 
		int thisMonth = memberService.getThisMonth();
		int memberCount = memberService.memberCount();
		int sellerCount = memberService.sellerCount();
		int[] weekData = new int[7];
		 
		for(int i=0; i<7; i++) { 
			weekData[i] = memberService.weekData(i); 
			mav.addObject("weekData"+i, weekData[i]);			
		}
				     
		System.out.println(thisMonth);
		
		
		mav.addObject("thisMonth", thisMonth);
		mav.addObject("lastMonth3", lastMonth3);
		mav.addObject("lastMonth2", lastMonth2);
		mav.addObject("lastMonth1", lastMonth1);  		
		mav.addObject("naver", naver);  
		mav.addObject("bit", bit); 
		mav.addObject("kakao", kakao); 
		
		mav.addObject("memberCount", memberCount); 
		mav.addObject("sellerCount", sellerCount); 
		
		mav.addObject("data1", "/data/snsData1.jsp"); 
		mav.addObject("data2", "/data/snsData2.jsp");   
		mav.addObject("data3", "/data/snsData3.jsp");    
		mav.addObject("data4", "/data/snsData4.jsp");    
		
		mav.setViewName("/data/dataList");  
		  
		return mav; 
	} 
	
	@RequestMapping(value="/infoView", method=RequestMethod.GET)
	public ModelAndView infoView(@RequestParam String seq, @RequestParam String pg, HttpServletRequest request,HttpServletResponse response, HttpSession session) {
				
		InformationDTO informationDTO = informationService.infoView(seq);
		 
		ModelAndView mav = new ModelAndView();
		mav.addObject("informationDTO", informationDTO);
		mav.addObject("display", "/information/infoMain.jsp");
		mav.addObject("info", "/information/infoView.jsp");
		mav.addObject("pg", pg); 
		mav.setViewName("/main/main");
		  
		return mav;
	}
	
	@RequestMapping(value="/infoQnAWrite", method=RequestMethod.POST) 
	@ResponseBody 
	public void infoQnAWrite(@ModelAttribute InformationQnADTO informationQnADTO, @RequestParam MultipartFile img, HttpSession session) {
		String filePath = "D:\\spring\\workSTS\\bitFarm\\src\\main\\webapp\\storage"; 
		String fileName = img.getOriginalFilename();
		File file = new File(filePath, fileName);
		   
		System.out.println(informationQnADTO.getInfoQnA_type());
		try { 
			FileCopyUtils.copy(img.getInputStream(), new FileOutputStream(file));
		}  catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace(); 
		} 
		
		informationQnADTO.setInfoQnA_userID((String)session.getAttribute("memberId"));
		informationQnADTO.setInfoQnA_imageName(fileName); 
		informationService.infoQnABoardWrite(informationQnADTO);  
	
		
//		mav.addObject("display", "/information/infoMain.jsp");
//		mav.addObject("info", "/information/infoView.jsp");
//		mav.setViewName("/main/main");  	 	
	}
	
	  
	@RequestMapping(value="/infoQnAList", method=RequestMethod.GET)
	public ModelAndView infoList(@RequestParam(required=false, defaultValue="1") String pg, HttpSession session) {
	 		
		Map<String, String> map = new HashMap<String, String>();
		map.put("memberId",(String)session.getAttribute("memberId"));
		map.put("pg",pg);
		InformationPaging informationPaging = informationService.qnaPaging(map); 
		List<InformationQnADTO> list = informationService.getInfoList(map); 
		  
		
		ModelAndView mav = new ModelAndView();  
		mav.addObject("pg", pg); 
		mav.addObject("list", list);    
		mav.addObject("informationPaging", informationPaging);
		mav.addObject("display", "/information/infoMain.jsp");     
		mav.addObject("info", "/information/infoQnAList.jsp"); 
		mav.setViewName("/main/main");
		   
		return mav;
	}
	
	@RequestMapping(value="/infoQnAListADMIN", method=RequestMethod.GET)
	public ModelAndView infoQnAListADMIN(@RequestParam(required=false, defaultValue="1") String pg, HttpSession session) {
				
		//(String)session.getAttribute("memberId"));
	
		List<InformationQnADTO> list = informationService.getInfoListADMIN(pg);  
		 
		ModelAndView mav = new ModelAndView();  
		mav.addObject("pg", pg); 
		mav.addObject("list", list);		 
		mav.addObject("display", "/information/infoMain.jsp");
		mav.addObject("info", "/information/infoQnAListADMIN.jsp"); 
		mav.setViewName("/main/main");
		    
		return mav;
	}
	
	@RequestMapping(value="/infoQnAListAllADMIN", method=RequestMethod.GET)
	public ModelAndView infoQnAListAllADMIN(@RequestParam(required=false, defaultValue="1") String pg, HttpSession session) {
		
		InformationPaging informationPaging = informationService.infoQnAListAllADMINPaging(pg);
		Map<String, String> map = new HashMap<String, String>();
		map.put("pg",pg); 
		List<InformationQnADTO> list = informationService.infoQnAListAllADMIN(map); 
		//List<InformationQnADTO> list = informationService.infoALLADMIN();//이거지우고 주석풀어
		  
		ModelAndView mav = new ModelAndView();    
		mav.addObject("pg", pg);   
		mav.addObject("list", list);  
		mav.addObject("informationPaging", informationPaging);   
		mav.addObject("display", "/information/infoMain.jsp");
		mav.addObject("info", "/information/infoQnAListAllADMIN.jsp"); 
		mav.setViewName("/main/main");
		    
		return mav;
	}
	
	@RequestMapping(value="/infoWriteForm", method=RequestMethod.GET)
	public ModelAndView infoWriteForm() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/information/infoMain.jsp");
		mav.addObject("info", "/information/infoWriteForm.jsp"); 
		mav.setViewName("/main/main");
		 
		return mav;
	}
	
	@RequestMapping(value="/infoWrite", method=RequestMethod.POST)
	@ResponseBody 
	public void infoWrite(@ModelAttribute InformationDTO informationDTO, @RequestParam MultipartFile img, HttpSession session) {
		String filePath = "D:\\spring\\workSTS\\bitFarm\\src\\main\\webapp\\storage"; 
		String fileName = img.getOriginalFilename(); 
		File file = new File(filePath, fileName);
		   
		try { 
			FileCopyUtils.copy(img.getInputStream(), new FileOutputStream(file));
		}  catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();  
		} 
		
		informationDTO.setInformation_imageName(fileName);
		
		informationService.infoWrite(informationDTO);  
	
		
//		mav.addObject("display", "/information/infoMain.jsp");
//		mav.addObject("info", "/information/infoView.jsp"); 
//		mav.setViewName("/main/main");  		
	}
	 
	@RequestMapping(value="/infoBoardList", method=RequestMethod.GET)
	public ModelAndView infoBoardList(@RequestParam(required=false, defaultValue="1") String pg) {
		List<InformationDTO> list = informationService.infoBoardList(pg);
		InformationPaging informationPaging = informationService.informationPaging(pg);
				
		ModelAndView mav = new ModelAndView();    
		mav.addObject("pg", pg); 
		mav.addObject("list", list);
		mav.addObject("informationPaging", informationPaging);
		mav.addObject("display", "/information/infoMain.jsp");
		mav.addObject("info", "/information/infoBoardList.jsp"); 
		mav.setViewName("/main/main"); 
		   
		return mav;
	} 
	
	@RequestMapping(value="getInfoSearch", method=RequestMethod.GET)
	public ModelAndView getInfoSearch(@RequestParam Map<String, String> map, HttpSession session) {
		//Map에 pg, searchOption, keyword 있음
		String pg = map.get("pg");
		System.out.println("pg = "+pg); 
		
		List<InformationDTO> list = informationService.getInfoSearch(map);   
		
		//페이징 처리  
		InformationPaging informationPaging = informationService.informationPaging(map); 
		ModelAndView mav = new ModelAndView();
		mav.addObject("searchOption",map.get("searchOption"));  
		mav.addObject("keyword",map.get("keyword"));   
		mav.addObject("list", list);
		mav.addObject("pg", pg);
		mav.addObject("informationPaging", informationPaging);  
		mav.addObject("display", "/information/infoMain.jsp");
		mav.addObject("info", "/information/getInfoSearch.jsp");  
		mav.setViewName("/main/main");   
		 
		return mav;   
	}	 
	
	@RequestMapping(value="/writeQnAAnswer", method=RequestMethod.GET)
	public ModelAndView writeQnAAnswer(@RequestParam(required=false, defaultValue="1") String pg, String seq, HttpSession session) {
		
		InformationQnADTO informationQnADTO = informationService.writeQnAAnswer(seq);		 
		ModelAndView mav = new ModelAndView();  
		mav.addObject("pg", pg); 
		mav.addObject("informationQnADTO", informationQnADTO);		  
		mav.setViewName("/information/writeQnAAnswer"); 		     
		return mav;
	} 
	
	@RequestMapping(value="/answerWrite", method=RequestMethod.POST)
	public ModelAndView answerWrite(@RequestParam Map<String, String> map) {
		ModelAndView mav = new ModelAndView();
		int update = informationService.answerWrite(map); 
		mav.addObject("update", update); 
		
		mav.setViewName("jsonView");		
		return mav;  			
	} 
	
	@RequestMapping(value="/simpleQnAForm", method=RequestMethod.GET)
	public ModelAndView simpleQnAForm() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/information/infoMain.jsp");
		mav.addObject("info", "/information/simpleQnA.jsp");    
		mav.setViewName("/main/main");
		 
		return mav; 
	} 
	
	@RequestMapping(value="/orderSearch", method=RequestMethod.GET)
	public ModelAndView orderForm(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String id = (String) session.getAttribute("memberId"); 
		List<String> list = informationService.orderForm(id);  
		 
		mav.addObject("list", list);		        
		mav.setViewName("/information/orderSearch");
		  
		return mav; 
	} 
	
	@RequestMapping(value="/deleteInfo", method=RequestMethod.POST)
	public ModelAndView deleteInfo(@RequestParam String seq) {
		ModelAndView mav = new ModelAndView();
		  
		informationService.deleteInfo(seq);
		mav.setViewName("jsonView");		  
		return mav; 
	} 
	
}
