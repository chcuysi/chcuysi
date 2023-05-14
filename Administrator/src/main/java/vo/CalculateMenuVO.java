package vo;

// 정산 VO
public class CalculateMenuVO {
	
	// 판매물품 번호
    private String inum;
    // 판매자 ID
    private String pid;
    //상품명
	private String name;
	//상품명2
	private String name2;
	//총매출액
	private int sell_total;
	//총배송료
	private int delivery;
	//총수수료
	private int ocharge;
	//총정산액
	private int jungsanmoney;
	//정산여부
	private String jok;
	//정산일
	private String jokdate;
	
	// Getter와 Setter
	public String getInum() {
		return inum;
	}
	public void setInum(String inum) {
		this.inum = inum;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
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
	public int getSell_total() {
		return sell_total;
	}
	public void setSell_total(int sell_total) {
		this.sell_total = sell_total;
	}
	public int getDelivery() {
		return delivery;
	}
	public void setDelivery(int delivery) {
		this.delivery = delivery;
	}
	public int getOcharge() {
		return ocharge;
	}
	public void setOcharge(int ocharge) {
		this.ocharge = ocharge;
	}
	public int getJungsanmoney() {
		return jungsanmoney;
	}
	public void setJungsanmoney(int jungsanmoney) {
		this.jungsanmoney = jungsanmoney;
	}
	public String getJok() {
		return jok;
	}
	public void setJok(String jok) {
		this.jok = jok;
	}	
	public String getJokdate() {
		return jokdate;
	}
	public void setJokdate(String jokdate) {
		this.jokdate = jokdate;
	}
	
	
    
}
