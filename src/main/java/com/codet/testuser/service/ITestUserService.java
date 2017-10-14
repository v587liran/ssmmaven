package com.codet.testuser.service;

import com.codet.testuser.pojo.TestUser;

public interface ITestUserService {
	public boolean login(TestUser testUser) throws Exception;
	
	public void insertTestUser(TestUser testUser) throws Exception;
}
