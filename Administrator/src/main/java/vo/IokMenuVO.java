package vo;

// 판매승인 VO
public class IokMenuVO {
	
	// 판매자 ID
    private String pid;
    // 대카테고리
    private String category;
    // 소카테고리
    private String category2;
    // 상품명
    private String name;
    // 상품명2
    private String name2;
    // 상품가격
    private int price;
    // 입고량
    private int warehoused;
    // 판매승인여부
    private String iok;
    // 판매승인거부사유
    private String iokwhy;
    // 판매물품 번호
    private String inum;
    
    // Getter와 Setter
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
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
	public int getWarehoused() {
		return warehoused;
	}
	public void setWarehoused(int warehoused) {
		this.warehoused = warehoused;
	}
	public String getIok() {
		return iok;
	}
	public void setIok(String iok) {
		this.iok = iok;
	}
	public String getIokwhy() {
		return iokwhy;
	}
	public void setIokwhy(String iokwhy) {
		this.iokwhy = iokwhy;
	}
	public String getInum() {
		return inum;
	}
	public void setInum(String inum) {
		this.inum = inum;
	}
	
    // getter, setter, 생성자 생략

    
    
    
}
