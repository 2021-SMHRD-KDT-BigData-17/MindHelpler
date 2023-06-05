package kr.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.smhrd.domain.T_COUNSELOR;
import kr.smhrd.mapper.CounselorMapper;

@Controller
public class CounselorController {
	
	@Autowired
	private CounselorMapper counselormapper;
	
	// 상담사 회원가입
	@PostMapping("/CounSignUp")
	public String SignUp(T_COUNSELOR coun) {
		System.out.println("Controller SignUp : " + coun.toString());
		counselormapper.insertCounselor(coun);
		return "redirect:/loginCounselor";
	}
	
	// 상담사 로그인
	@GetMapping("/CounLogin")
	public String Login(T_COUNSELOR coun, HttpServletRequest request) {
		System.out.println("Controller Login : " + coun.getCounselorEmail());
		T_COUNSELOR loginCoun = counselormapper.counselorLogin(coun);
		
		if(loginCoun != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginCoun", loginCoun);
		}
		
		return "redirect:/Counselorfile";
	}
}
