package com.test.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.test.entity.User;


@Repository
public interface UserMapper {
	public User getUserByTel(User user);
	
	public Integer insertUser(User user);
	
	public Integer updateUserByTel(User user);
	
	public List<User> getAllUser();
	
	public User getUserByUid(Integer id);
}
