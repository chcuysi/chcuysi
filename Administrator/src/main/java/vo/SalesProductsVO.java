package vo;

// 상품별 매출 VO
public class SalesProductsVO {
	
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
    // (상품별) 총매출액
    private int sell_total;

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
	public int getSell_total() {
		return sell_total;
	}
	public void setSell_total(int sell_total) {
		this.sell_total = sell_total;
	}
	
    // getter, setter, 생성자 생략

    
    
}
