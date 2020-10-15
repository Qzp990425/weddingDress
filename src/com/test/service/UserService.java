package com.test.service;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.test.entity.User;

public interface UserService {
	public boolean login(User user);
	
	public boolean register(User user);
	
	public User getUserById(User user);
	
	public boolean update(User user);

	PageInfo<User> getAllUser(Integer pageNum);
	
	List<User> getAllUser();
}
