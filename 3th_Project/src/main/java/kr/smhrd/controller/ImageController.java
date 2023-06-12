package kr.smhrd.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.smhrd.domain.T_IMAGE;
import kr.smhrd.mapper.ImageMapper;

@Controller
public class ImageController {

	@Autowired
	private ImageMapper imagemapper;

	@RequestMapping(value = "/UploadImg", method = RequestMethod.POST)
	public String uploadImage(@RequestParam("imageFile") MultipartFile imageFile, HttpSession session) {
		if (!imageFile.isEmpty()) {
			try {
				// 이미지 정보를 T_IMAGE 객체에 설정
				T_IMAGE image = new T_IMAGE();
				image.setImgUrl(imageFile.getOriginalFilename());
				image.setUserId((String) session.getAttribute("userId")); // 세션에서 사용자 아이디를 가져옴

				// 이미지를 DB에 저장
				imagemapper.saveImage(image);

				// 이미지 파일을 실제로 저장하는 작업을 수행해야 함

				return "redirect:/emotion"; // 이미지 업로드 성공 시 리다이렉트할 URL
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "redirect:/emotion"; // 이미지 업로드 실패 시 리다이렉트할 URL
	}
}
