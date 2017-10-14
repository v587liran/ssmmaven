package com.codet.user.mapper;

import java.util.List;

import com.codet.user.pojo.Custom;
import com.codet.user.pojo.User;

public interface UserMapper {
    
    public User selectUserByUsername(User user) throws Exception;

	public List<Custom> selectCustomAll() throws Exception;
    
}
