package com.test.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.test.entity.Admin;

@Repository
public interface AdminMapper {
	
	public Admin getAdminByUsername(Admin admin);
	
	public Admin getAdminByAid(Integer aid);
	
	public List<Admin> getAllAdmin();
	
	public Integer insertAdmin(Admin admin);
	
	public Integer updateAdmin(Admin admin);
	
	public Integer deleteAdmin(Integer aid);
}
