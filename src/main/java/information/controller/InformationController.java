package information.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

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

@Controller
@RequestMapping(value="information")
public class InformationController {
	@Autowired 
	private InformationService informationService;
		
	@RequestMapping(value="/infoQnABoard", method=RequestMethod.GET)
	public ModelAndView infoQnABoard() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/information/infoMain.jsp");
		mav.addObject("info", "/information/infoQnABoard.jsp");
		mav.setViewName("/main/main");
		 
		return mav; 
	} 
	
	@RequestMapping(value="/infoView", method=RequestMethod.GET)
	public ModelAndView infoView(@RequestParam String seq, @RequestParam String pg) {
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
	public ModelAndView infoList(@RequestParam(required=false, defaultValue="1") String pg) {
		List<InformationQnADTO> list = informationService.getInfoList(pg);
		 
		ModelAndView mav = new ModelAndView();  
		mav.addObject("pg", pg); 
		mav.addObject("list", list);
		 
		mav.addObject("display", "/information/infoMain.jsp");
		mav.addObject("info", "/information/infoQnAList.jsp"); 
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
		if(informationPaging == null) {
			System.out.println("널인데?");
		}else System.out.println("아닌데?"); 
		
		ModelAndView mav = new ModelAndView();    
		mav.addObject("pg", pg); 
		mav.addObject("list", list);
		mav.addObject("informationPaging", informationPaging);
		mav.addObject("display", "/information/infoMain.jsp");
		mav.addObject("info", "/information/infoBoardList.jsp"); 
		mav.setViewName("/main/main"); 
		   
		return mav;
	} 
	
}
