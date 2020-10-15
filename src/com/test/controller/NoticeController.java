package com.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageInfo;
import com.test.entity.Notice;
import com.test.entity.User;
import com.test.serviceImpl.NoticeServiceImpl;
import com.test.serviceImpl.UserServiceImpl;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	@Autowired
	NoticeServiceImpl noticeService;
	@Autowired
	UserServiceImpl userService;
	
	@RequestMapping("/getMyNotice")
	public String getMyNotice(@RequestParam(defaultValue="1")Integer pageNum,Model model,Integer uid) {
		PageInfo<Notice> pageInfo = noticeService.getMyNotice(uid, pageNum);
		model.addAttribute("pageInfo", pageInfo);
		return "/user/myMsg_notice";
	}
	
	@RequestMapping("/getAllNotice")
	public String getMyNotice(@RequestParam(defaultValue="1")Integer pageNum,Model model) {
		PageInfo<Notice> pageInfo = noticeService.getAllNotice(pageNum);
		model.addAttribute("pageInfo", pageInfo);
		return "/admin/notice";
	}
	
	@RequestMapping("/addNotice")
	public String addNotice(Notice notice,Model model) {
		boolean flag = noticeService.addNotice(notice);
		if(flag) {
			model.addAttribute("msg", "发布成功");
		} else {
			model.addAttribute("msg", "发布失败");
		}
		return "forward:/notice/readyAdd";
	}
	
	@RequestMapping("/readyAdd")
	public String readyAdd(Model model) {
		List<User> users = userService.getAllUser();
		model.addAttribute("users", users);
		return "/admin/notice_add";
	}
	
	
	@RequestMapping("/deleteNotice")
	public String deleteNotice(Integer nid,Model model) {
		boolean flag = noticeService.deleteNotice(nid);
		if(flag) {
			model.addAttribute("msg", "删除成功");
		} else {
			model.addAttribute("msg", "删除失败");
		}
		return "forward:/notice/getAllNotice";
	}
}
