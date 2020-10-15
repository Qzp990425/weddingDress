package com.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageInfo;
import com.test.entity.Region;
import com.test.serviceImpl.RegionServiceImpl;


@Controller
@RequestMapping("/region")
public class RegionController {
	
	@Autowired
	RegionServiceImpl regionService;
	
	@RequestMapping("/getAllRegion")
	public String getAllRegion(@RequestParam(defaultValue="1")Integer pageNum,Model model) {
		PageInfo<Region> pageInfo = regionService.getAllRegion(pageNum);
		model.addAttribute("pageInfo", pageInfo);
		return "/admin/region";
	}
	
	@RequestMapping("/deleteRegion")
	public String deleteRegion(Integer rid,Model model) {
		boolean flag = regionService.deleteRegion(rid);
		if(flag) {
			model.addAttribute("msg", "删除成功");
		} else {
			model.addAttribute("msg", "删除失败");
		}
		return "forward:/region/getAllRegion";
	}
	
	@RequestMapping("/addRegion")
	public String addRegion(Region region,Model model) {
		boolean flag = regionService.addRegion(region);
		if(flag) {
			model.addAttribute("msg", "添加成功");
		} else {
			model.addAttribute("msg", "添加失败");
		}
		return "/admin/region_add";
	}
	
	@RequestMapping("/getRegionList")
	public String getRegionList(Model model) {
		List<Region> regions = regionService.getRegionList();
		model.addAttribute("regions", regions);
		return "/user/place";
		
	}
	
	@RequestMapping("/getRegionList1")
	public String getRegionList1(Model model) {
		List<Region> regions = regionService.getRegionList();
		model.addAttribute("regions", regions);
		return "/admin/place_add";
		
	}
}
