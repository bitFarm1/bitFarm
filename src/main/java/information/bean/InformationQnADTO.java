package information.bean;

import java.util.Date;

import lombok.Data;

@Data
public class InformationQnADTO {
	private int infoQnA_seq;
	private String infoQnA_type;
	private String infoQnA_subject;
	private String infoQnA_userID; 
	private String infoQnA_orderNum;
	private String infoQnA_email; 
	private String infoQnA_phone; 
	private String infoQnA_content;
	private String infoQnA_imageName;
	private Date infoQnA_askDate;  
	private String infoQnA_answerSubject;
	private String infoQnA_answerContent;
	private Date infoQnA_answerDate;  
} 
