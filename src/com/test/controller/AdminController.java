package com.test.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.github.pagehelper.PageInfo;
import com.test.entity.Admin;
import com.test.serviceImpl.AdminServiceImpl;

@Controller
@RequestMapping("/admin")
@SessionAttributes("admin")
public class AdminController {
	
	@Autowired
	AdminServiceImpl adminService;
	
	@RequestMapping("/login")
	public String login(Model model,Admin admin) {
		boolean flag = adminService.login(admin);
		if(flag) {
			Admin allAdmin = adminService.getAdminByUsername(admin);
			model.addAttribute("admin",allAdmin);
			return "/admin/main";
		} else {
			model.addAttribute("msg","账号或者密码错误");
			return "/admin/login";
		}
	}
	
	@RequestMapping("/exit")
	public String exit(HttpSession session) {
		session.removeAttribute("admin");
		return "/admin/login";
	}
	
	@RequestMapping("/getAllAdmin")
	public String getAllUser(Model model,@RequestParam(defaultValue="1")Integer pageNum){
		PageInfo<Admin> pageInfo = adminService.getAllAdmin(pageNum);
		model.addAttribute("pageInfo", pageInfo);
		return "/admin/admin";
	}
	
	@RequestMapping("/deleteAdmin")
	public String deleteAdmin(Integer aid,Model model){
		boolean flag = adminService.deleteAdmin(aid);
		if(flag) {
			model.addAttribute("msg", "删除成功");
		} else {
			model.addAttribute("msg", "删除失败");
		}
		return "forward:/admin/getAllAdmin";
	}
	
	@RequestMapping("/addAdmin")
	public String addAdmin(Admin admin,Model model){
		boolean flag = adminService.insertAdmin(admin);
		if(flag) {
			model.addAttribute("msg", "添加成功");
		} else {
			model.addAttribute("msg", "添加失败");
		}
		return "/admin/admin_add";
	}
	
	@RequestMapping("/updateAdmin")
	public String updateAdmin(Admin admin,Model model){
		boolean flag = adminService.updateAdmin(admin);
		if(flag){
			Admin nowAdmin = adminService.getAdminByUsername(admin);
			model.addAttribute("admin", nowAdmin);
			model.addAttribute("msg", "更改成功");
		} else {
			model.addAttribute("msg", "更改失败");
		}
		return "/admin/admin_update";
	}
}
