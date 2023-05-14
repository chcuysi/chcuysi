package vo;

//일반회원 VO
public class MemberMenuVO {
	
	// 일반회원번호
    private String mnum;
    // 일반회원ID
    private String mid;
    // 일반회원 주소
    private String maddr;
    // 일반회원 상세주소
    private String mdaddr;
    // 일반회원 전화번호
    private String mtel;
    // 일반회원 이메일
    private String memail;
    // 일반회원 가입일
    private String mdate;
    // 일반회원 탈퇴여부
    private String mout;
    // 일반회원 탈퇴사유
    private String moutwhy;
    
    //Getter와 Setter
	public String getMnum() {
		return mnum;
	}
	public void setMnum(String mnum) {
		this.mnum = mnum;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMaddr() {
		return maddr;
	}
	public void setMaddr(String maddr) {
		this.maddr = maddr;
	}
	public String getMdaddr() {
		return mdaddr;
	}
	public void setMdaddr(String mdaddr) {
		this.mdaddr = mdaddr;
	}
	public String getMtel() {
		return mtel;
	}
	public void setMtel(String mtel) {
		this.mtel = mtel;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMdate() {
		return mdate;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	public String getMout() {
		return mout;
	}
	public void setMout(String mout) {
		this.mout = mout;
	}

	public String getMoutwhy() {
		return moutwhy;
	}
	public void setMoutwhy(String moutwhy) {
		this.moutwhy = moutwhy;
	}
    
}
