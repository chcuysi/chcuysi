package vo;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {
	
	
	private String name;   //  상품명
	private String name2;  //  상품명2     * 상품명이 길면 웹에서 양식이 깨져버림. 그래서 상품명을 HTML에서 출력할때 <h4>name1</h4> 
	                                                                                           //  <h4>name2</h4>      이렇게 출력함. 
	private int price;   // 상품 가격
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
	
	private String iNum;
	private String delivery;
	private int iCount;
	private String iCount2;
	private String mid;
	private String pdate;
	
	private String head;
	private String content;
	private String contentHead;
	
	
	private String delivery_Detail_head;
	private String delivery_content;
	
	private String save;
	
	private String head2;
	private String content2;
	private String contentHead2;
	
    MultipartFile file;
    
    MultipartFile fileDetail1;
    
    private long   fsize1;		// 파일크기    필요없음
	private String fname1;		// 파일명     필요없음
	private String frealfname1; // 저장된 파일이름           등록된 상품 사진 명 ex)  apple.png
    
    MultipartFile fileDetail2;
    
    private long   fsize2;		// 파일크기    필요없음
	private String fname2;		// 파일명     필요없음
	private String frealfname2; // 저장된 파일이름           등록된 상품 사진 명 ex)  apple.png
	
	
	MultipartFile fileDetail3;
	 private long   fsize3;		// 파일크기    필요없음
	 private String fname3;		// 파일명     필요없음
	 private String frealfname3; //
	
	
	
	
	public MultipartFile getFileDetail3() {
		return fileDetail3;
	}
	public void setFileDetail3(MultipartFile fileDetail3) {
		this.fileDetail3 = fileDetail3;
		 if(! fileDetail3.isEmpty() ) {
		    	this.fname3 = fileDetail3.getOriginalFilename();
		    	this.fsize3 = fileDetail3.getSize();
		    		
		    	UUID uuid = UUID.randomUUID();
		    	this.frealfname3 = uuid.toString() + "_" + fname3;
		    	
		    	//해당 경로에 저장
		    	//추후에 서버 경로를 얻어서  상ㅇ대적으로 경로 지정
		           File f = new File("C:\\Users\\kosmo\\git\\chcuysi\\Down\\src\\main\\webapp\\resources\\images\\" + frealfname3);
		           
		           try {
		        	   fileDetail3.transferTo(f);
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
		    }
		 
	}
	public long getFsize3() {
		return fsize3;
	}
	public void setFsize3(long fsize3) {
		this.fsize3 = fsize3;
	}
	public String getFname3() {
		return fname3;
	}
	public void setFname3(String fname3) {
		this.fname3 = fname3;
	}
	public String getFrealfname3() {
		return frealfname3;
	}
	public void setFrealfname3(String frealfname3) {
		this.frealfname3 = frealfname3;
		 
	}
	public void setFsize(long fsize) {
		this.fsize = fsize;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public MultipartFile getFileDetail1() {
		return fileDetail1;
	}
	
	
	
	public void setFileDetail1(MultipartFile fileDetail1) {
		this.fileDetail1 = fileDetail1;
		  if(! fileDetail1.isEmpty() ) {
		    	this.fname1 = fileDetail1.getOriginalFilename();
		    	this.fsize1 = fileDetail1.getSize();
		    		
		    	UUID uuid = UUID.randomUUID();
		    	this.frealfname1 = uuid.toString() + "_" + fname1;
		    	
		    	//해당 경로에 저장
		    	//추후에 서버 경로를 얻어서  상ㅇ대적으로 경로 지정
		           File f = new File("C:\\Users\\kosmo\\git\\chcuysi\\Down\\src\\main\\webapp\\resources\\images\\" + frealfname1);
		           
		           try {
		        	   fileDetail1.transferTo(f);
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
		    }
		  
	}
	
	public void setFsize1(long fsize1) {
		this.fsize1 = fsize1;
	}
	public String getFname1() {
		return fname1;
	}
	public void setFname1(String fname1) {
		this.fname1 = fname1;
	}
	public String getFrealfname1() {
		return frealfname1;
	}
	public void setFrealfname1(String frealfname1) {
		this.frealfname1 = frealfname1;
	}
	public MultipartFile getFileDetail2() {
		return fileDetail2;
	}
	public void setFileDetail2(MultipartFile fileDetail2) {
		this.fileDetail2 = fileDetail2;
		  if(! fileDetail2.isEmpty() ) {
		    	this.fname2 = fileDetail2.getOriginalFilename();
		    	this.fsize2 = fileDetail2.getSize();
		    		
		    	UUID uuid = UUID.randomUUID();
		    	this.frealfname2 = uuid.toString() + "_" + fname2;
		    	
		    	//해당 경로에 저장
		    	//추후에 서버 경로를 얻어서  상ㅇ대적으로 경로 지정
		           File f = new File("C:\\Users\\kosmo\\git\\chcuysi\\Down\\src\\main\\webapp\\resources\\images\\" + frealfname2);
		           
		           try {
		        	   fileDetail2.transferTo(f);
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
		    }
		  
	}

	public void setFsize2(long fsize2) {
		this.fsize2 = fsize2;
	}
	public String getFname2() {
		return fname2;
	}
	public void setFname2(String fname2) {
		this.fname2 = fname2;
	}
	public String getFrealfname2() {
		return frealfname2;
	}
	public void setFrealfname2(String frealfname2) {
		this.frealfname2 = frealfname2;
	}
	public String getHead2() {
		return head2;
	}
	public void setHead2(String head2) {
		this.head2 = head2;
	}
	public String getContent2() {
		return content2;
	}
	public void setContent2(String content2) {
		this.content2 = content2;
	}
	public String getContentHead2() {
		return contentHead2;
	}
	public void setContentHead2(String contentHead2) {
		this.contentHead2 = contentHead2;
	}
	public String getSave() {
		return save;
	}
	public void setSave(String save) {
		this.save = save;
	}
	public String getDelivery_Detail_head() {
		return delivery_Detail_head;
	}
	public void setDelivery_Detail_head(String delivery_Detail_head) {
		this.delivery_Detail_head = delivery_Detail_head;
	}
	public String getDelivery_content() {
		return delivery_content;
	}
	public void setDelivery_content(String delivery_content) {
		this.delivery_content = delivery_content;
	}
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getContentHead() {
		return contentHead;
	}
	public void setContentHead(String contentHead) {
		this.contentHead = contentHead;
	}
	public String getPdate() {
		return pdate;
	}
	public void setPdate(String pdate) {
		this.pdate = pdate;
	}
	public String getiCount2() {
		return iCount2;
	}
	public void setiCount2(String iCount2) {
		this.iCount2 = iCount2;
	}
	public int getiCount() {
		return iCount;
	}
	public void setiCount(int iCount) {
		this.iCount = iCount;
	}
	public String getiNum() {
		return iNum;
	}
	public void setiNum(String iNum) {
		this.iNum = iNum;
	}
	public String getDelivery() {
		return delivery;
	}
	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}
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
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
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
