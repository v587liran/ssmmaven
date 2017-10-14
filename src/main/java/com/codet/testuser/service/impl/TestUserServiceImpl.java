package com.codet.testuser.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.codet.testuser.mapper.ITestUserMapper;
import com.codet.testuser.pojo.TestUser;
import com.codet.testuser.service.ITestUserService;

public class TestUserServiceImpl implements ITestUserService {

	@Autowired
	private ITestUserMapper iTestUserMapper;
	
	@Override
	public boolean login(TestUser testUser) throws Exception {
		
		
		TestUser testUser2=iTestUserMapper.findTestUserByUsername(testUser.getUsername());
		
		if(testUser2!=null){
			if(testUser2.getPassword().equals(testUser.getPassword())){
				testUser=testUser2;
				return true;
			}
		}
		
		return false;
	}

	@Override
	@Transactional
	public void insertTestUser(TestUser testUser) throws Exception {
		System.out.println("--------------> 之前插入前");
		iTestUserMapper.insertTestUser(testUser);
		System.out.println("--------------> 发生错误前");
		int i=1/0;
		System.out.println("--------------> 发生错误后");
		System.out.println("-------------->插入结束");
	}

}
