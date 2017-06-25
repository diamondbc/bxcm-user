package com.bxcm.user.service;

import com.bxcm.common.bean.Pagination;
import com.bxcm.user.dao.bean.SysRole;
import com.bxcm.user.dao.bean.SysRoleExample;
import java.util.List;

public interface SysRoleService {
    int countByExample(SysRoleExample example);

    SysRole selectByPrimaryKey(Integer id);

    List<SysRole> selectByExample(SysRoleExample example);

    Pagination<SysRole> selectPageByExample(SysRoleExample example, Pagination<SysRole> pagination);

    int deleteByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysRole record);

    int updateByPrimaryKey(SysRole record);

    int deleteByExample(SysRoleExample example);

    int updateByExampleSelective(SysRole record, SysRoleExample example);

    int updateByExample(SysRole record, SysRoleExample example);

    void insert(SysRole record);

    void insertSelective(SysRole record);
}