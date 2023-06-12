package kr.smhrd.domain;

import com.google.protobuf.Timestamp;

public class T_CHATROOM {
	
    // 채팅방 순번 
    private int crIdx;

    // 채팅방 개설자 
    private String userId;

    // 채팅방 제목 
    private String crTitle;

    // 개설 내용 
    private String crContent;

    // 채팅방 인원수 
    private Integer crLimit;

    // 채팅방 개설일자 
    private Timestamp crDt;

	public int getCrIdx() {
		return crIdx;
	}

	public void setCrIdx(int crIdx) {
		this.crIdx = crIdx;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getCrTitle() {
		return crTitle;
	}

	public void setCrTitle(String crTitle) {
		this.crTitle = crTitle;
	}

	public String getCrContent() {
		return crContent;
	}

	public void setCrContent(String crContent) {
		this.crContent = crContent;
	}

	public Integer getCrLimit() {
		return crLimit;
	}

	public void setCrLimit(Integer crLimit) {
		this.crLimit = crLimit;
	}

	public Timestamp getCrDt() {
		return crDt;
	}

	public void setCrDt(Timestamp crDt) {
		this.crDt = crDt;
	}
    
    
}
