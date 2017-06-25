package com.bxcm.user.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bxcm.user.client.UserHandler;
import com.bxcm.user.common.dto.UserDTO;

@Controller
public class UserController {

	@Resource
	private UserHandler userHandler;

	@ResponseBody
	@RequestMapping(value = "/login")
	public String login(UserDTO demo) {
		userHandler.login("admin", "123456");
		return "hello bxcm!";
	}

}
