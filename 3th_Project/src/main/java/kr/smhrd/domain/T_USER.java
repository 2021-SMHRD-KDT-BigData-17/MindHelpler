package kr.smhrd.domain;

public class T_USER {
	private String userId;
	private String userName;
	private String userEmail;
	private String userPw;
	private String userBirthdate;
	private String userGender;
	private String userPhone;
	private String adminYn;
	
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getUserBirthdate() {
		return userBirthdate;
	}

	public void setUserBirthdate(String userBirthdate) {
		this.userBirthdate = userBirthdate;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getAdminYn() {
		return adminYn;
	}

	public void setAdminYn(String adminYn) {
		this.adminYn = adminYn;
	}

	public T_USER(String userId, String userName, String userEmail, String userPw, String userBirthdate,
			String userGender, String userPhone, String adminYn) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPw = userPw;
		this.userBirthdate = userBirthdate;
		this.userGender = userGender;
		this.userPhone = userPhone;
		this.adminYn = adminYn;
	}
	
	public T_USER() {
		
	}
	
}
