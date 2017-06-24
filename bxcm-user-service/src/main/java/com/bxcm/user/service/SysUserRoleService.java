package com.bxcm.user.service;

import com.bxcm.common.bean.Pagination;
import com.bxcm.user.bean.SysUserRole;
import com.bxcm.user.bean.SysUserRoleExample;
import java.util.List;

public interface SysUserRoleService {
    int countByExample(SysUserRoleExample example);

    SysUserRole selectByPrimaryKey(Integer id);

    List<SysUserRole> selectByExample(SysUserRoleExample example);

    Pagination<SysUserRole> selectPageByExample(SysUserRoleExample example, Pagination<SysUserRole> pagination);

    int deleteByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysUserRole record);

    int updateByPrimaryKey(SysUserRole record);

    int deleteByExample(SysUserRoleExample example);

    int updateByExampleSelective(SysUserRole record, SysUserRoleExample example);

    int updateByExample(SysUserRole record, SysUserRoleExample example);

    void insert(SysUserRole record);

    void insertSelective(SysUserRole record);
}