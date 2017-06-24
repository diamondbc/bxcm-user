package com.bxcm.user.service;

import com.bxcm.common.bean.Pagination;
import com.bxcm.user.bean.SysAuthority;
import com.bxcm.user.bean.SysAuthorityExample;
import java.util.List;

public interface SysAuthorityService {
    int countByExample(SysAuthorityExample example);

    SysAuthority selectByPrimaryKey(Integer id);

    List<SysAuthority> selectByExample(SysAuthorityExample example);

    Pagination<SysAuthority> selectPageByExample(SysAuthorityExample example, Pagination<SysAuthority> pagination);

    int deleteByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysAuthority record);

    int updateByPrimaryKey(SysAuthority record);

    int deleteByExample(SysAuthorityExample example);

    int updateByExampleSelective(SysAuthority record, SysAuthorityExample example);

    int updateByExample(SysAuthority record, SysAuthorityExample example);

    void insert(SysAuthority record);

    void insertSelective(SysAuthority record);
}