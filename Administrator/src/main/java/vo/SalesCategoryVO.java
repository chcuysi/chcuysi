package vo;

// 카테고리별 매출 VO
public class SalesCategoryVO {

	// 대카테고리
	private String category;
	// 소카테고리
    private String category2;
    // (카테고리별) 총매출액
    private int sell_total;

    // Getter와 Setter
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
	public int getSell_total() {
		return sell_total;
	}
	public void setSell_total(int sell_total) {
		this.sell_total = sell_total;
	}
	
    
    
}
