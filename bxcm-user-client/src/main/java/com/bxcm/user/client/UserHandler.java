 package com.bxcm.user.client;

import com.bxcm.user.common.BaseResult;
import com.bxcm.user.common.UserDto;

public interface UserHandler {

	public BaseResult<UserDto> login(String username,String password);

}