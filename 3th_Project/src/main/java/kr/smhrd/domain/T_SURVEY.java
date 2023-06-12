package kr.smhrd.domain;

import com.google.protobuf.Timestamp;

public class T_SURVEY {
	
    // 설문지 식별자 
    private int surveyIdx;

    // 설문지 내용 
    private String surveyContent;

    // 등록 일자 
    private Timestamp surveyDt;

    // 관리자 아이디 
    private String adminId;

	public int getSurveyIdx() {
		return surveyIdx;
	}

	public void setSurveyIdx(int surveyIdx) {
		this.surveyIdx = surveyIdx;
	}

	public String getSurveyContent() {
		return surveyContent;
	}

	public void setSurveyContent(String surveyContent) {
		this.surveyContent = surveyContent;
	}

	public Timestamp getSurveyDt() {
		return surveyDt;
	}

	public void setSurveyDt(Timestamp surveyDt) {
		this.surveyDt = surveyDt;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	@Override
	public String toString() {
		return "T_SURVEY [surveyIdx=" + surveyIdx + ", surveyContent=" + surveyContent + ", surveyDt=" + surveyDt
				+ ", adminId=" + adminId + "]";
	}
    
}
