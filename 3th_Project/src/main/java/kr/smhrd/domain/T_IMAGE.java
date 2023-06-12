package kr.smhrd.domain;

public class T_IMAGE {
	
    // 이미지 식별자 
    private int imgIdx;

    // 이미지 경로 
    private String imgUrl;

    // 사용자 아이디 
    private String userId;
    
	public int getImgIdx() {
		return imgIdx;
	}

	public void setImgIdx(int imgIdx) {
		this.imgIdx = imgIdx;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
    
    
}
