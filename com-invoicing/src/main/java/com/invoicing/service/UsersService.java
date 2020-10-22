package com.invoicing.service;

import com.invoicing.pojo.Users;
import com.invoicing.vo.Result;

public interface UsersService {
	Result login(String username, String password);

	boolean register(Users users);
}
