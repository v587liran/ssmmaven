package com.codet.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.codet.user.mapper.UserMapper;
import com.codet.user.pojo.Custom;
import com.codet.user.pojo.User;
import com.codet.user.service.UserService;
import com.codet.util.IdUtil;

public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public boolean login(User user) throws Exception {
		
		User user2=userMapper.selectUserByUsername(user);
		
		user.setPassword(IdUtil.md5(user.getPassword()));
		
		if(user2!=null&&user2.getPassword().equals(user.getPassword())){
			user=user2;
			
			return true;
		}
		
		user=null;
		
		return false;
	}

	@Override
	public void insertUser(User user) throws Exception {
		
	}

	@Override
	public void updateUser(User user07) throws Exception {
		
	}

	@Override
	public void delete(int id) throws Exception {
		
	}

	@Override
	public List<Custom> selectCustomAll() throws Exception {
		return userMapper.selectCustomAll();
	}

}
