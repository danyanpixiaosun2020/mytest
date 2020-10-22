package com.invoicing.mapper;

import org.apache.ibatis.annotations.Param;

import com.invoicing.pojo.Users;

public interface UsersMapper {
	Users findByUsername(@Param("username") String username);

	boolean register(Users users);
}
