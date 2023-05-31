package com.kh.kgv.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.kgv.login.model.service.SignUpService;

@Controller
@RequestMapping("/signUp")
public class SignUpController {
	
	@Autowired
	private SignUpService service;
	
	
	// 회원가입 sns 화면
		@RequestMapping("/signUp_sns")
		public String signUp_sns() {
			return "signUp/signUp_sns";
		}
			
		// 이메일 회원가입 창
		@RequestMapping("/signUp")
		public String signUp() {
			return "signUp/signUp";
		}
	
		// 이메일 중복 검사
		@ResponseBody
		@GetMapping("/emailDupCheck")
		public int emailDupCheck(String userEmail) {
			System.out.println(userEmail);
			int result = service.emailDupCheck(userEmail);
			
			
			System.out.println(result);
			return result;
		}
		
//		// 닉네임 중복 검사
//		@ResponseBody
//		@GetMapping("/nicknameDupCheck")
//		public int nicknameDupCheck(String inputNickname) {
//			
//		}
		
		
		
}
