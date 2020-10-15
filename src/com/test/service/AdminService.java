package com.test.service;

import com.github.pagehelper.PageInfo;
import com.test.entity.Admin;

public interface AdminService {
	public boolean login(Admin admin);
	
	public PageInfo<Admin> getAllAdmin(Integer pageNum);
	
	public boolean deleteAdmin(Integer aid);
	
	public boolean updateAdmin(Admin admin);
	
	public boolean insertAdmin(Admin admin);
	
	public Admin getAdminByUsername(Admin admin);
}
