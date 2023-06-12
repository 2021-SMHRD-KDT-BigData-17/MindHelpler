package kr.smhrd.domain;

import com.google.protobuf.Timestamp;

public class T_CHATTING {

    // 채팅 식별자 
    private int chatIdx;

    // 채팅방 식별자 
    private int crIdx;

    // 발화 자 
    private String talker;

    // 발화 내용 
    private String talking;

    // 이모티콘 
    private String emoticon;

    // 발화 시간 
    private Timestamp talkingDt;

	public int getChatIdx() {
		return chatIdx;
	}

	public void setChatIdx(int chatIdx) {
		this.chatIdx = chatIdx;
	}

	public int getCrIdx() {
		return crIdx;
	}

	public void setCrIdx(int crIdx) {
		this.crIdx = crIdx;
	}

	public String getTalker() {
		return talker;
	}

	public void setTalker(String talker) {
		this.talker = talker;
	}

	public String getTalking() {
		return talking;
	}

	public void setTalking(String talking) {
		this.talking = talking;
	}

	public String getEmoticon() {
		return emoticon;
	}

	public void setEmoticon(String emoticon) {
		this.emoticon = emoticon;
	}

	public Timestamp getTalkingDt() {
		return talkingDt;
	}

	public void setTalkingDt(Timestamp talkingDt) {
		this.talkingDt = talkingDt;
	}
    
    
}
