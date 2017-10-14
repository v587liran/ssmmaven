package com.codet.testuser.mapper;

import com.codet.testuser.pojo.TestUser;

public interface ITestUserMapper {
	public TestUser findTestUserByUsername(String username) throws Exception;
	
	public void insertTestUser(TestUser testUser) throws Exception;
}
