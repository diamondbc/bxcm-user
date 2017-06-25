package com.bxcm.user.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bxcm.user.client.UserHandler;
import com.bxcm.user.common.BaseResult;
import com.bxcm.user.common.dto.UserDTO;
import com.bxcm.user.dao.bean.SysUser;
import com.bxcm.user.dao.bean.SysUserExample;
import com.bxcm.user.service.SysUserService;


@Service("userhandler")
public class UserHandlerImpl implements UserHandler {
	@Autowired
	private SysUserService sysUserService;
	
	@Override
	public BaseResult<UserDTO> login(String username, String password) {
		SysUserExample example=new SysUserExample();
		example.createCriteria().andUserNameEqualTo(username);
		List<SysUser> userList=sysUserService.selectByExample(example);
		SysUser user=null;
//		if(ObjectUtil.isNotEmpty(userList)) {
//			user=userList.get(0);
//		}    
		return null;
	}
    
}
