package com.invoicing.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import com.invoicing.mapper.UsersMapper;
import com.invoicing.pojo.Users;
import com.invoicing.service.UsersService;
import com.invoicing.vo.Result;

@Service
public class UsersServiceImpl implements UsersService {
	@Autowired
	private UsersMapper usersMapper;
	
	@Override
	public Result login(String username, String password) {
		Users users = usersMapper.findByUsername(username);
		if (ObjectUtils.isEmpty(users)) {
			return Result.fail("用户名不存在");
		} else if (users.getPassword().equals(password)) {
			Result result = new Result(true);
			result.setData(users);
			return result;
		} else {
			return Result.fail("密码错误");
		}
	}

	@Override
	public boolean register(Users users) {
		boolean register=usersMapper.register(users);
		return register;
	}

}
