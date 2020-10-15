package com.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.github.pagehelper.PageInfo;
import com.test.entity.OrderRecord;
import com.test.entity.User;
import com.test.serviceImpl.OrderRecordServiceImpl;

@Controller
@RequestMapping("/orderRecord")
@SessionAttributes("user")
public class OrderRecordController {
	
	@Autowired
	OrderRecordServiceImpl orderRecordService;
	
	
	@RequestMapping("/insertOrder")
	public String insertOrder(OrderRecord orderRecord,Integer[] rid,Model model) {
		boolean flag = orderRecordService.insertOrder(orderRecord, rid);
		if(flag) {
			model.addAttribute("msg", "预定成功");
		} else {
			model.addAttribute("msg", "预定失败");
		}
		return "forward:/dress/getDressByDid?did="+orderRecord.getDid();
	}
	
	@RequestMapping("/insertOrderOne")
	public String insertOrderOne(OrderRecord orderRecord,Model model) {
		boolean flag = orderRecordService.insertOrder(orderRecord);
		if(flag) {
			model.addAttribute("msg", "预定成功");
		} else {
			model.addAttribute("msg", "预定失败");
		}
		return "forward:/dress/getDressByDid?did="+orderRecord.getDid();
	}
	
	@RequestMapping("/getOrderByUid")
	public String getOrderByUid(ModelMap model,@RequestParam(defaultValue="1")Integer pageNum){
		User user = (User)model.get("user");
		PageInfo<OrderRecord> pageInfo = orderRecordService.getOrderByUid(user.getUid(), pageNum);
		model.addAttribute("pageInfo", pageInfo);
		return "/user/myMsg_order";
	}
	
	
	@RequestMapping("getOrderByStatus")
	public String getOrderByStatus(Model model,@RequestParam(defaultValue="1")Integer pageNum,Integer status) {
		PageInfo<OrderRecord> pageInfo = orderRecordService.getAllOrderByStatus(status, pageNum);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("status", status);
		return "/admin/order";
	}
	
	@RequestMapping("/preOrder")
	public String preOrder(Model model,OrderRecord orderRecord) {
		boolean flag = orderRecordService.preOrder(orderRecord);
		if(flag) {
			model.addAttribute("msg", "安排成功");
		} else {
			model.addAttribute("msg", "安排失败");
		}
		return "forward:/orderRecord/getOrderByStatus?status=0";
	}
	
	@RequestMapping("/finishOrder")
	public String finishOrder(Model model,OrderRecord orderRecord) {
		boolean flag = orderRecordService.finishOrder(orderRecord);
		if(flag) {
			model.addAttribute("msg", "成功");
		} else {
			model.addAttribute("msg", "失败");
		}
		return "forward:/orderRecord/getOrderByUid";
	}
}
