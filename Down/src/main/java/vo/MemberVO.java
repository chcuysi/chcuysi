package vo;

import org.springframework.stereotype.Component;


public class MemberVO {
	
	
	private String mid;
	private String mpw;
	
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpw() {
		return mpw;
	}
	public void setMpw(String mpw) {
		this.mpw = mpw;
	}

}
