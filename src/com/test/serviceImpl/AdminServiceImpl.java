package com.test.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.test.dao.AdminMapper;
import com.test.entity.Admin;
import com.test.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	AdminMapper adminMapper;
	

	@Override
	public boolean login(Admin admin) {
		Admin loginAdmin = adminMapper.getAdminByUsername(admin);
		if(loginAdmin == null) {
			return false;
		} else if (!(loginAdmin.getPassword()).equals(admin.getPassword())) {
			return false;
		} else {
			return true;
		}
	}


	@Override
	public PageInfo<Admin> getAllAdmin(Integer pageNum) {
		PageHelper.startPage(pageNum, 4);
		List<Admin> list = adminMapper.getAllAdmin();
		return new PageInfo<>(list);
	}


	@Override
	public boolean deleteAdmin(Integer aid) {
		Integer result = adminMapper.deleteAdmin(aid);
		if(result == 1) {
			return true;
		} else {
			return false;
		}
	}


	@Override
	public boolean updateAdmin(Admin admin) {
		Integer result = adminMapper.updateAdmin(admin);
		if(result == 1) {
			return true;
		} else {
			return false;
		}
	}


	@Override
	public boolean insertAdmin(Admin admin) {
		Integer result = adminMapper.insertAdmin(admin);
		if(result == 1) {
			return true;
		} else {
			return false;
		}
	}


	@Override
	public Admin getAdminByUsername(Admin admin) {
		Admin admin2 = adminMapper.getAdminByUsername(admin);
		return admin2;
	}
	
}
