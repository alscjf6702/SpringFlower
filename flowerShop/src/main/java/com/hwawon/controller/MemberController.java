package com.hwawon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hwawon.domain.MemberVO;
import com.hwawon.service.MemberService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member/*")
@Log4j
@RequiredArgsConstructor
public class MemberController {

	@Autowired
	private MemberService service;
	
	@GetMapping("/signup")
	public void signup() {	
	}
	
	@PostMapping("/signup")
	public String postSignup(MemberVO vo) {
		service.regiMember(vo);
		return "redirect:/member/welcome";
	}
	
	@GetMapping("/login")
	public void login() {
		
	}
	
	@PostMapping("/login")
	public void postLogin(String userId) {
		service.loginMember(userId);
	}
	
	@GetMapping("/agreement")
	public void agreement() {
	}
	
	@GetMapping("/welcome")
	public void getwelcome() {
	}
	
	@PostMapping("/welcome")
	public void welcome() {
	}
	
}
