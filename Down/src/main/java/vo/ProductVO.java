package vo;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {
	
	
	private String name;   //  상품명
	private String name2;  //  상품명2     * 상품명이 길면 웹에서 양식이 깨져버림. 그래서 상품명을 HTML에서 출력할때 <h4>name1</h4> 
	                                                                                           //  <h4>name2</h4>      이렇게 출력함. 
	private String price;   // 상품 가격
	private String detail;   // 상품 자세히보기를 누르면 나오는 우측에 설명란
	private String say;      // 상품 자세히보기를 누르면 나오는 우측 설명란 바로 밑에   "   <- 기호에 들어가는 글
	private String type;     // 상품 자세히 보기를 누를 시 나오는 상품 사진 
	private String category;   // 대카테고리
	private String category2;  // 소카테고리
	private String imgName;    //    상품 전체보기 (싱싱마켓)  에서   자세히보기를 클릭했을 때  어떤 상품을 자세히볼것인지에 대한 식별값
	private String type2;    // 상품 자세히보기를 누르지 않고 그냥 전체적으로 볼 때 나오는 상품 사진 
	
	private long   fsize;		// 파일크기    필요없음
	private String fname;		// 파일명     필요없음
	private String frealfname; // 저장된 파일이름           등록된 상품 사진 명 ex)  apple.png
	private String pid;
	
    MultipartFile file;
	
	
	
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getFrealfname() {
		return frealfname;
	}
	public void setFrealfname(String frealfname) {
		this.frealfname = frealfname;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
	    this.file = file;
	    
	    // 업로드 파일이 있는 경우
	    if(! file.isEmpty() ) {
	    	this.fname = file.getOriginalFilename();
	    	this.fsize = file.getSize();
	    		
	    	UUID uuid = UUID.randomUUID();
	    	this.frealfname = uuid.toString() + "_" + fname;
	    	
	    	//해당 경로에 저장
	    	//추후에 서버 경로를 얻어서  상ㅇ대적으로 경로 지정
	           File f = new File("C:\\Users\\kosmo\\git\\chcuysi\\Down\\src\\main\\webapp\\resources\\images\\" + frealfname);
	           
	           try {
				file.transferTo(f);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
	    }
	    
	}
	
	
	public String getType2() {
		return type2;
	}
	public void setType2(String type2) {
		this.type2 = type2;
	}
	public String getImgName() {
		return imgName;
	}
	public void setImgName(String imgName) {
		this.imgName = imgName;
	}
	public String getCategory2() {
		return category2;
	}
	public void setCategory2(String category2) {
		this.category2 = category2;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getName2() {
		return name2;
	}
	public void setName2(String name2) {
		this.name2 = name2;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getSay() {
		return say;
	}
	public void setSay(String say) {
		this.say = say;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}

}
