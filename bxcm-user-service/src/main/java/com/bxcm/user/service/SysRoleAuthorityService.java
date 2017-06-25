package com.bxcm.user.service;

import com.bxcm.common.bean.Pagination;
import com.bxcm.user.dao.bean.SysRoleAuthority;
import com.bxcm.user.dao.bean.SysRoleAuthorityExample;
import java.util.List;

public interface SysRoleAuthorityService {
    int countByExample(SysRoleAuthorityExample example);

    SysRoleAuthority selectByPrimaryKey(Integer id);

    List<SysRoleAuthority> selectByExample(SysRoleAuthorityExample example);

    Pagination<SysRoleAuthority> selectPageByExample(SysRoleAuthorityExample example, Pagination<SysRoleAuthority> pagination);

    int deleteByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysRoleAuthority record);

    int updateByPrimaryKey(SysRoleAuthority record);

    int deleteByExample(SysRoleAuthorityExample example);

    int updateByExampleSelective(SysRoleAuthority record, SysRoleAuthorityExample example);

    int updateByExample(SysRoleAuthority record, SysRoleAuthorityExample example);

    void insert(SysRoleAuthority record);

    void insertSelective(SysRoleAuthority record);
}