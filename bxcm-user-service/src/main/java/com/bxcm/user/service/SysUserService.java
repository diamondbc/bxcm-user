package com.bxcm.user.service;

import com.bxcm.common.bean.Pagination;
import com.bxcm.user.bean.SysUser;
import com.bxcm.user.bean.SysUserExample;
import java.util.List;

public interface SysUserService {
    int countByExample(SysUserExample example);

    SysUser selectByPrimaryKey(Integer id);

    List<SysUser> selectByExample(SysUserExample example);

    Pagination<SysUser> selectPageByExample(SysUserExample example, Pagination<SysUser> pagination);

    int deleteByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysUser record);

    int updateByPrimaryKey(SysUser record);

    int deleteByExample(SysUserExample example);

    int updateByExampleSelective(SysUser record, SysUserExample example);

    int updateByExample(SysUser record, SysUserExample example);

    void insert(SysUser record);

    void insertSelective(SysUser record);
}