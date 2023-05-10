package vo;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class ReviewVO {

	
	private String mid; // 회원 아이디
	private String inum; // 판매 물품 번호
	private int renum; // 리뷰 시퀀스 넘버
	private String content; // 내용
	private String rdate; // 리뷰 시간
	private String rtitle; // 제목
	private String repassword; // 리뷰 비번
	
	
	private String name;   //  상품명
	private String name2;  // 상품명 2

	
	private String category;// 대카테고리
	private String category2;  // 소카테고리
	
	
	private long   fsize;		// 파일크기    필요없음
	private String fname;		// 파일명     필요없음
	private String frealfname; // 저장된 파일이름 등록된 상품 사진 명 ex)  apple.png
	
	MultipartFile file;
	
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public int getRenum() {
		return renum;
	}
	public void setRenum(int renum) {
		this.renum = renum;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getCategory2() {
		return category2;
	}
	public void setCategory2(String category2) {
		this.category2 = category2;
	}
	public long getFsize() {
		return fsize;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
	public String getInum() {
		return inum;
	}
	public void setInum(String inum) {
		this.inum = inum;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public String getRtitle() {
		return rtitle;
	}
	public void setRtitle(String rtitle) {
		this.rtitle = rtitle;
	}
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}

	
	
	
	
	
	
	
	
	
}

