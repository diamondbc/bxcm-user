 package com.bxcm.user.client;

import com.bxcm.user.common.BaseResult;
import com.bxcm.user.common.dto.UserDTO;

public interface UserHandler {

	public BaseResult<UserDTO> login(String username,String password);

}