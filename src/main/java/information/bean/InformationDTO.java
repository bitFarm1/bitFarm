package information.bean;

import java.util.Date;

import lombok.Data;

@Data
public class InformationDTO {
	private int information_number;
	private String information_subject;
	private String information_name;   
	private Date information_date;
	private int information_views;
	private String information_imageName;
	private String information_content;    
} 
