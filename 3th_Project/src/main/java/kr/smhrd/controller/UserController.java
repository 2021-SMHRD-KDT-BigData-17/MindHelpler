package kr.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.smhrd.domain.T_USER;
import kr.smhrd.mapper.UserMapper;

@Controller
public class UserController {
	
	@Autowired
	private UserMapper usermapper;
	
	// 회원가입
	@PostMapping("/SignUp")
	public String SignUp(T_USER user) {
		System.out.println("Controller SignUp : " + user.toString());
		usermapper.insertUser(user);
		return "redirect:/login";
	}
	
	// 로그인
	@GetMapping("/Login")
	public String Login(T_USER user, HttpServletRequest request) {
		System.out.println("Controller Login : " + user.getUserId());
		T_USER loginUser = usermapper.userLogin(user);
		
		if (loginUser != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
			return "redirect:/";
		} else {
			return "redirect:/Main";
		}
	}
	
	// 회원정보수정
	@PostMapping("/Update")
	public String Update(T_USER user) {
		System.out.println("Controller Update : " + user.getUserId());
		usermapper.updateUser(user);
		return "redirect:/login";
	}

	/*
	 * // 로그아웃
	 * 
	 * @PostMapping("/Logout") public String delete(HttpSession session) {
	 * System.out.println("Controller Logout : " + session.getId());
	 * session.removeAttribute("loginUser"); return "redirect:/login"; }
	 */
	
	@RequestMapping(value = "/Logout", method = {RequestMethod.GET, RequestMethod.POST})
	public String logout(HttpServletRequest request) {
	  HttpSession session = request.getSession(false);
	  if (session != null) {
	    session.invalidate();
	  }
	  return "redirect:/login";
	}
	

}
