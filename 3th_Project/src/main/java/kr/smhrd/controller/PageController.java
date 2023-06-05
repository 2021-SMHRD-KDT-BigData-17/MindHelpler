package kr.smhrd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
	
	@RequestMapping("/Main")
	public String Main() {
		return "Main";
	}
	
	@RequestMapping("/survey")
	public String Survey() {
		return "survey";
	}
	
	@RequestMapping("/emotion")
	public String Emotion() {
		return "emotion";
	}
	
	@RequestMapping("/emotionDiary")
	public String EmotionDiary() {
		return "emotionDiary";
	}
	
	@RequestMapping("/userprofile")
	public String UserProfile() {
		return "userprofile";
	}
	
	@RequestMapping("/loginCounselor")
	public String LoginCounselor() {
		return "loginCounselor";
	}
	
	@RequestMapping("/login")
	public String Login() {
		return "login";
	}
	
	@RequestMapping("/counselorfile")
	public String Counselorfile() {
		return "counselorfile";
	}
	
}
