package com.test.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageInfo;
import com.test.entity.Dress;
import com.test.entity.Region;
import com.test.serviceImpl.DressServiceImpl;
import com.test.serviceImpl.RegionServiceImpl;
import com.test.utils.FileNameUtil;

@Controller
@RequestMapping("/dress")
public class DressController {
	
	@Autowired
	DressServiceImpl dressService;
	@Autowired
	RegionServiceImpl regionService;
	
	
	
	@RequestMapping("/addDress")
	public String addBook(@RequestParam MultipartFile dressImg,HttpServletRequest request,Model model,Dress dress) {
		//创建存储的文件名
		String uuid = FileNameUtil.getUUIDFileName();
        String saveFileName = uuid + FileNameUtil.getFileType(dressImg.getOriginalFilename());        
        //找到存储的路径
        String path  = request.getServletContext().getRealPath("/dressImg");
        System.out.println(path+saveFileName);
        //转存
        try {
        	dressImg.transferTo(new File(path+saveFileName));
        } catch (IOException e) {
            e.printStackTrace();
        }
        dress.setUuid(uuid);
        boolean flag = dressService.insertDress(dress);
        if(flag) {
        	model.addAttribute("msg","添加成功");
        } else {
        	model.addAttribute("msg","添加失败");
        }
        return "/admin/dress_add";
	}
	
	@RequestMapping("/getAllDressByColor")
	public String getAllDressByColor(Integer color,Model model,@RequestParam(defaultValue="1")Integer pageNum){
		PageInfo<Dress> pageInfo = dressService.getAllDressByColor(color, pageNum);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("color", color);
		return "/admin/dress";
	}
	
	@RequestMapping("/getAllDressByColorOne")
	public String getAllDressByColorOne(Integer color,Model model,@RequestParam(defaultValue="1")Integer pageNum){
		PageInfo<Dress> pageInfo = dressService.getAllDressByColor(color, pageNum);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("color", color);
		return "/user/index";
	}
	
	@RequestMapping("/getAllDress")
	public String getAllDress(Model model,@RequestParam(defaultValue="1")Integer pageNum){
		PageInfo<Dress> pageInfo = dressService.getAllDress(pageNum);
		model.addAttribute("pageInfo", pageInfo);
		return "/user/index";
	}
	
	@RequestMapping("/deleteDress")
	public String deleteDress(Integer did,Model model,Integer color) {
		boolean flag = dressService.deleteDress(did);
		if(flag) {
			model.addAttribute("msg", "删除成功");
		} else {
			model.addAttribute("msg", "删除失败");
		}
		return "forward:/dress/getAllDressByColor?color="+color;
	}
	
	@RequestMapping("/getDressByDid")
	public String getDressByDid(Integer did,Model model) {
		Dress dress = dressService.getDressByDid(did);
		List<Region> regions = regionService.getRegionList();
		model.addAttribute("dress", dress);
		model.addAttribute("regions", regions);
		return "/user/detail";
	}
}
