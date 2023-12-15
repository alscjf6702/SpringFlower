package com.hwawon.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hwawon.domain.Criteria;
import com.hwawon.domain.NoticeVO;
import com.hwawon.domain.PageDTO;
import com.hwawon.service.NoticeService;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {

	@Autowired
	private NoticeService service;

	/*
	 * @GetMapping("/list") 
	 * public void getList(Model model) {
	 * model.addAttribute("list", service.getList()); 
	 * }
	 */

	@GetMapping("/list")
	public void getList(Criteria cri, Model model) {
		model.addAttribute("list", service.getPagingList(cri));
		model.addAttribute("page", new PageDTO(cri, service.TotalCount(cri)));
	}

	@GetMapping({ "/detail", "/update" })
	public void getOne(@Param("num") int num, Model model) {
		model.addAttribute("detail", service.getOne(num));
		service.readCount(num);
	}

	@GetMapping("/write")
	public void insert() {
	}

	@PostMapping("/write")
	public String postInsert(NoticeVO vo) {
		service.insert(vo);
		return "redirect:/notice/list";
	}

	@PostMapping("/update")
	public String update(NoticeVO vo) {
		service.update(vo);
		return "redirect:/notice/list";
	}

	@PostMapping("/delete")
	public String postDelete(@Param("num") int num) {
		service.delete(num);
		return "redirect:/notice/list";
	}

	@GetMapping("/paging")
	public String paging(Model model, @RequestParam(value = "page", required = false, defaultValue = "1") int page) {
		System.out.println(page);
		return "redirect:/home";
	}

}
