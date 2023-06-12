package kr.smhrd.domain;

import java.math.BigDecimal;

import com.google.protobuf.Timestamp;

public class T_ANALYSIS {

    // 분석 식별자 
    private int analysisIdx;

    // 사용자 아이디 
    private String userId;

    // 분석 점수 
    private BigDecimal analysisResult;

    // 분석 내용 
    private String analysisContent;

    // 분석 일시 
    private Timestamp analysisDt;

	public int getAnalysisIdx() {
		return analysisIdx;
	}

	public void setAnalysisIdx(int analysisIdx) {
		this.analysisIdx = analysisIdx;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public BigDecimal getAnalysisResult() {
		return analysisResult;
	}

	public void setAnalysisResult(BigDecimal analysisResult) {
		this.analysisResult = analysisResult;
	}

	public String getAnalysisContent() {
		return analysisContent;
	}

	public void setAnalysisContent(String analysisContent) {
		this.analysisContent = analysisContent;
	}

	public Timestamp getAnalysisDt() {
		return analysisDt;
	}

	public void setAnalysisDt(Timestamp analysisDt) {
		this.analysisDt = analysisDt;
	}

	@Override
	public String toString() {
		return "T_ANALYSIS [analysisIdx=" + analysisIdx + ", userId=" + userId + ", analysisResult=" + analysisResult
				+ ", analysisContent=" + analysisContent + ", analysisDt=" + analysisDt + "]";
	}
    
}
