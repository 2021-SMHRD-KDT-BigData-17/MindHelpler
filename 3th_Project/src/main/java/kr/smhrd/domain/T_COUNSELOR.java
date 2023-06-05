package kr.smhrd.domain;

// 상담사 정보 
public class T_COUNSELOR {

	    // 상담사 식별자 
	    private int counselorIdx;

	    // 상담사 이메일 
	    private String counselorEmail;

	    // 상담사 비밀번호 
	    private String counselorPw;

	    // 상담사 이름 
	    private String counselorName;

	    // 상담 전문분야 
	    private String counselorExpertise;

	    // 관리자 아이디 
	    private String adminId;

		public int getCounselorIdx() {
			return counselorIdx;
		}

		public void setCounselorIdx(int counselorIdx) {
			this.counselorIdx = counselorIdx;
		}

		public String getCounselorEmail() {
			return counselorEmail;
		}

		public void setCounselorEmail(String counselorEmail) {
			this.counselorEmail = counselorEmail;
		}

		public String getCounselorPw() {
			return counselorPw;
		}

		public void setCounselorPw(String counselorPw) {
			this.counselorPw = counselorPw;
		}

		public String getCounselorName() {
			return counselorName;
		}

		public void setCounselorName(String counselorName) {
			this.counselorName = counselorName;
		}

		public String getCounselorExpertise() {
			return counselorExpertise;
		}

		public void setCounselorExpertise(String counselorExpertise) {
			this.counselorExpertise = counselorExpertise;
		}

		public String getAdminId() {
			return adminId;
		}

		public void setAdminId(String adminId) {
			this.adminId = adminId;
		}
	    
}
