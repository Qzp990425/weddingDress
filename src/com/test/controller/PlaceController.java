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
import com.test.entity.Place;
import com.test.entity.Place;
import com.test.serviceImpl.PlaceServiceImpl;
import com.test.utils.FileNameUtil;
import com.test.serviceImpl.PlaceServiceImpl;


@Controller
@RequestMapping("/place")
public class PlaceController {
	
	@Autowired
	PlaceServiceImpl placeService;
	
	@RequestMapping("/getAllPlace")
	public String getAllPlace(@RequestParam(defaultValue="1")Integer pageNum,Model model) {
		PageInfo<Place> pageInfo = placeService.getAllPlace(pageNum);
		model.addAttribute("pageInfo", pageInfo);
		return "/admin/place";
	}
	
	@RequestMapping("/deletePlace")
	public String deletePlace(Integer pid,Model model) {
		boolean flag = placeService.deletePlace(pid);
		if(flag) {
			model.addAttribute("msg", "删除成功");
		} else {
			model.addAttribute("msg", "删除失败");
		}
		return "forward:/place/getAllPlace";
	}
	
	@RequestMapping("/addPlace")
	public String addPlace(@RequestParam MultipartFile placeImg,HttpServletRequest request,Place place,Model model) {
		//创建存储的文件名
		String uuid = FileNameUtil.getUUIDFileName();
        String saveFileName = uuid + FileNameUtil.getFileType(placeImg.getOriginalFilename());        
        //找到存储的路径
        String path  = request.getServletContext().getRealPath("/placeImg");
        System.out.println(path+saveFileName);
        //转存
        try {
        	placeImg.transferTo(new File(path+saveFileName));
        } catch (IOException e) {
            e.printStackTrace();
        }
        place.setPicture(uuid);
        boolean flag = placeService.addPlace(place);
        if(flag) {
        	model.addAttribute("msg","添加成功");
        } else {
        	model.addAttribute("msg","添加失败");
        }
        return "forward:/region/getRegionList1";
	}

	
	@RequestMapping("/getPlaceList")
	public String getPlaceList(Model model,Integer rid) {
		List<Place> places = placeService.getAllPlaceByRid(rid);
		model.addAttribute("places", places);
		return "/user/place";		
	}
}
